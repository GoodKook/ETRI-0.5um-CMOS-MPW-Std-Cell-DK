///////////////////////////////////////////////////////////////////
// Filename: CPU_Terminal.cpp
// Purpose : fifo server for Keyboard & Display terminal
//              can be used with CPU Core Test as StdIO
// Author: GoodKook, goodkook@gmail.com
// History: First release, Feb., 2024
// Compile: gcc -o CPU_terminal -pthread CPU_terminal.cpp
//

///////////////////////////////////////////////////////////////////
// Filename: CPU_Terminal.h
// Purpose : fifo server for Keyboard & Display terminal
//              can be used with CPU Core Test as StdIO
// Author: GoodKook, goodkook@gmail.com
// History: First release, Feb., 2024
// Compile: gcc -o CPU_terminal -pthread CPU_terminal.cpp
//
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h> 

#include <sys/ioctl.h> // For FIONREAD
#include <termios.h>
#include <stdbool.h>
#include <pthread.h>

#include <sys/socket.h> 
#include <netinet/in.h> 

#ifdef IPC_PIPE
#include "CPU_terminal.h"   // Named FIFO
#endif

void print_help()
{
    printf("CPU_6502 Keyboard/Screen server for Apple-1 Woz Monitor\n");
    printf("\t      Command           Description\n");
    printf("\t      ---------------   ------------------------------------------------------\n");
    printf("\t      [Addr]R           Runs a program starting at the specified address.\n");
    printf("\t      [Addr]:           Puts the system into a data deposit mode, starting at the given address.\n");
    printf("\t      [Addr].[Addr]     Displays memory contents from the specified address.\n");
    printf("\t      [Addr].[Addr]W    Writes bytes into a memory range.\n");
    printf("\t      [Addr].[Addr]R    Runs a program from the specified address range.\n");
    printf("\t- Test Program: Type as follows,\n");
    printf("\t      0:A9 0 AA 20 EF FF E8 8A 4C 2 0(RET)\n");
    printf("\t      0.A(RET)\n");
    printf("\t      R(RET)\n");
    printf("\t- Useful routines in monitor which can be accessed by user programs:\n");
    printf("\t    GETLINE: location FF1F, Line buffer address=$0200\n");
    printf("\t    ECHO:    location FFEF, Echo a char. in ACC register\n");
    printf("\t    PRBYTE:  location FFDC, Print one byte(HEX) in ACC register\n");
    printf("\t    PRHEX:   location FFE5, Print least 4-bit(HEX) in ACC register\n");
    printf("\t    ENTRY:   location FF00, Monitor Entry\n");
    printf("\t- Load user programs:\n");
    printf("\t    D016 : Load HEX file at ./Apple-1/program.hex\n");
    printf("\t    D018 : Load BIN file at ./Apple-1/program.bin\n");
    printf("\t    * Op-code: JSR=$20 / LDA=$A9\n");
    printf("\t               JSR $<PCH><PCL>\t; User code\n");
    printf("\t\t             JSR $FF00\t; Monitor Entry\n");
    printf("\t\'h\' - help\n");
    printf("\t\'q\' - quit\n");
}

int kbhit(void)
{
    static bool initflag = false;
    static const int STDIN = 0;

    if (!initflag)
    {
        // Use termios to turn off line buffering
        struct termios term;
        tcgetattr(STDIN, &term);
        term.c_lflag &= ~ICANON;
        term.c_lflag &= ~ECHO;
        tcsetattr(STDIN, TCSANOW, &term);
        setbuf(stdin, NULL);
        initflag = true;
    }

    int nbbytes;
    ioctl(STDIN, FIONREAD, &nbbytes);  // 0 is STDIN
    return nbbytes;
}

// ----------------------------------------------------------------------------
// Keyboard Pipe(Thread)
// ----------------------------------------------------------------------------
void* thread_routine_keyboard(void *arg)    // Socket ID
{
    pthread_t tid;
    tid = pthread_self();
    printf("\nKeyboard Thread: %lx\n", tid);

    int nSent;
    char buf[3]={0,};

    printf("Keyboard server start\n");
    while(true)
    {
        while (!kbhit())
        {
            //fflush(stdout);
            usleep(100);
            //sched_yield();
        }
        buf[0] = getchar();
        buf[1] = '\0';

        if (buf[0]=='h')
        {
            print_help();
            fflush(stdout);
            usleep(100);
            //sched_yield();
            continue;
        }
#if defined(IPC_SOCKET)
        int nSocket = (int)*((int*)arg);
        nSent = send(nSocket, buf, 1, 0);  // Send 1-Byte
        //shutdown((int)arg, SHUT_WR);
        if(nSent == 0)
        {
            perror("send() failed.");
            break;
        }
#elif defined(IPC_PIPE)
        int writefd = (int)*((int*)arg);
        nSent = write(writefd, buf, 1);   // Send 1-Byte
        if(nSent < 0)
        {
            perror("Keyboard FIFO: write error ");
            exit(EXIT_FAILURE);
        }
        else if(nSent == 0)
        {
            printf("Keyboard FIFO: file end\n");
            exit(EXIT_FAILURE);
        }
#endif
        usleep(100);
        //sched_yield();
    }
    return(NULL);
}

// ----------------------------------------------------------------------------
// Main: Display pipe
// ----------------------------------------------------------------------------
int main()
{
    printf("Standard I/O(Keyboard & Screen) for CPU Core IP\n");
    int arg_kbd_thread;

#if defined(IPC_SOCKET)
    // CPU terminal IPC server via Socket -------------------------------------
    int socket_fd = socket(AF_INET /*IPv4*/, SOCK_STREAM /*TCP*/, 0 /*IP*/) ;
    if (socket_fd == 0)
    { 
        perror("socket failed : "); 
        exit(EXIT_FAILURE); 
    }

    struct sockaddr_in address;
    int addrlen = sizeof(address);

    memset(&address, '0', sizeof(address)); 
    address.sin_family = AF_INET; 
    address.sin_addr.s_addr = INADDR_ANY /* the localhost*/ ; 
    address.sin_port = htons(8080); 
    if (bind(socket_fd, (struct sockaddr *)&address, sizeof(address)) < 0)
    {
        perror("bind failed : "); 
        exit(EXIT_FAILURE); 
    } 
    if (listen(socket_fd, 16 /* the size of waiting queue*/) < 0)
    { 
        perror("listen failed : ");
        exit(EXIT_FAILURE);
    } 
    int new_socket = accept(socket_fd, (struct sockaddr *) &address, (socklen_t*)&addrlen) ;
    if (new_socket < 0)
    {
        perror("accept failed : "); 
        exit(EXIT_FAILURE);
    }
    arg_kbd_thread = new_socket;
#elif defined(IPC_PIPE)
    if (access(STD_OUTPUT, F_OK) != 0)
    {
        if(mkfifo(STD_OUTPUT, 0666) < 0)
        {
            perror("Display FIFO: mkfifo error ");
            exit(EXIT_FAILURE);
        }
    }
    int readfd = open(STD_OUTPUT, O_RDONLY);
    perror("Display fifo connected");

    if (access(STD_INPUT, F_OK) != 0)
    {
        if(mkfifo(STD_INPUT, 0666) < 0)
        {
            perror("Keyboard FIFO: mkfifo error ");
            exit(EXIT_FAILURE);
        }
    }
    int writefd = open(STD_INPUT, O_WRONLY);
    perror("Keyboard fifo connected");

    arg_kbd_thread = writefd;
#else
#pragma message("Std-IO Type NOT defined; neither IPC_SOCKET nor IPC_PIPE")
#endif

    // PThread for Keyboard ---------------------------------------------------------------
    pthread_t thread_kbd;
    if (pthread_create(&thread_kbd, NULL, thread_routine_keyboard, (void *)&arg_kbd_thread)!=0)
    {
        perror("Keyboard Thread: Creation Fail!");
        exit(EXIT_FAILURE);
    }

    //-------------------------------------------------------------------------------------
    printf("Display server start\n");
    int nRcved;
    char buf[3]={0,};
    while(true)
    {
#if defined(IPC_SOCKET)
        nRcved = recv(new_socket, buf, 1, 0);   // Receive 1-Byte from CPU
        if (nRcved<0)
        {
            perror("recv() failed.");
            exit(EXIT_FAILURE);
        }
        else if(nRcved==0)
        {
            perror("Connection closed by peer");
            exit(EXIT_FAILURE);
        }
        else if (nRcved>0)
        {
            if(buf[0]==0x0D)    printf("\n");
            else                printf("%c", buf[0]);
            fflush(stdout);
        }
#elif defined(IPC_PIPE)
        nRcved = read(readfd, buf, 1);  // Receive 1-Byte from CPU
        if(nRcved < 0)
        {
            perror("Display FIFO read error");
            exit(EXIT_FAILURE);
        }
        else if(nRcved==0)
        {
            perror("Display FIFO closed");
            exit(EXIT_FAILURE);
        }
        else
        {
            if(buf[0]==0x0D)    printf("\n");
            else                printf("%c", buf[0]);
            fflush(stdout);
        }
#endif
        usleep(100);
        sched_yield();
    }
}
