///////////////////////////////////////////////////////////////////
// Filename: CPU_Terminal.cpp
// Purpose : fifo server for Keyboard & Display terminal
//              can be used with CPU Core Test as StdIO
// Author: GoodKook, goodkook@gmail.com
// History: First release, Feb., 2024
// Compile: gcc -o CPU_terminal -pthread CPU_terminal.cpp
//

#include "CPU_terminal.h"

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

void norm_exit()
{
    unlink(STD_INPUT);
    unlink(STD_OUTPUT);
    exit(0);
}

void sig_int(int signo)
{
    norm_exit();
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
void* thread_routine_keyboard(void *arg)
{
    pthread_t tid;
    tid = pthread_self();
    printf("\nKeyboard Thread: %lx\n", tid);

    int writefd, nWrite;
    char buf[MAX_BUF]={0,};

    if (access(STD_INPUT, F_OK) != 0)
    {
        if(mkfifo(STD_INPUT, 0666) < 0)
        {
            perror("Keyboard FIFO: mkfifo error ");
            norm_exit();
            return(NULL);
        }
    }
    writefd = open(STD_INPUT, O_WRONLY);

    printf("Keyboard server start\n");
    while(1)
    {
        while (!kbhit())
        {
            fflush(stdout);
            usleep(100);
            //sched_yield();
        }
        buf[0] = getchar();
        buf[1] = '\0';
        
        if (buf[0]=='h')
        {
            print_help();
            continue;
        }

        nWrite = strlen(buf);
        if((nWrite = write(writefd, buf, 1)) < 0)
        {
            perror("Keyboard FIFO: write error ");
            break;
        }
        fflush(0);
        
        if(nWrite == 0)
        {
            printf("Keyboard FIFO: file end\n");
            break;
        }
        //usleep(100);
        sched_yield();
    }
    norm_exit();
    return(NULL);
}

// ----------------------------------------------------------------------------
// Main: Display pipe
// ----------------------------------------------------------------------------
int main()
{
    int readfd, nRead;
    char buf[MAX_BUF]={0,};

    printf("Standard I/O(Keyboard & Screen) for CPU Core IP\n");
    
    if(signal(SIGINT, sig_int) == SIG_ERR)
    {
        perror("DisplayFIFO: signal error ");
        exit(1);
    }

    // PThread for Keyboard
    pthread_t thread_kbd;
    if (pthread_create(&thread_kbd, NULL, thread_routine_keyboard, NULL)!=0)
    {
        perror("Keyboard Thread: Creation Fail!");
        exit(1);
    }

    // Display FIFO
    if (access(STD_OUTPUT, F_OK) != 0)
    {
        if(mkfifo(STD_OUTPUT, 0666) < 0)
        {
            perror("Display FIFO: mkfifo error ");
            exit(1);
        }
    }
    readfd = open(STD_OUTPUT, O_RDONLY);
    
    printf("Display server start\n");
    while(1)
    {
        if((nRead = read(readfd, buf, MAX_BUF)) < 0)   // MAX_BUF
        {
            perror("Display FIFO: read error ");
            exit(1);
        }
        fflush(0);

        if(nRead == 0)
        {
            //usleep(1);
            sched_yield();
            continue;
        }
        else
        {
            for (int i=0; i<nRead; i++)
            {
                if(buf[i]==0x0D)
                    printf("\n");
                else
                    printf("%c", buf[i]); //fputc(buf[i], stdout);
            }
            fflush(0);
        }
        //usleep(1);
        sched_yield();
    }
}
