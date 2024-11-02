///////////////////////////////////////////////////////////////////
// Filename: CPU_Terminal.cpp
// Purpose : fifo server for Keyboard & Display terminal
//              can be used with CPU Core Test as StdIO
// Author: GoodKook, goodkook@gmail.com
// History: First release, Feb., 2024
// Compile: gcc -o CPU_terminal -pthread CPU_terminal.cpp
//

#include "CPU_terminal.h"

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
// Keyboard Pipe Thread
// ----------------------------------------------------------------------------
void* thread_routine_keyboard(void *arg)
{
    pthread_t tid;
    tid = pthread_self();
    printf("\nKeyboard Thread: %lx\n", tid);

    int writefd, nWrite;
    char buf[MAX_BUF]={0,};
    
    if(mkfifo(STD_INPUT, 0666) < 0)
    {
        perror("Keyboard FIFO: mkfifo error ");
        norm_exit();
        return(NULL);
    }
    writefd = open(STD_INPUT, O_WRONLY);

    printf("Keyboard server start\n");
    while(1)
    {
        while (!kbhit())
        {
            fflush(stdout);
            usleep(500);
        }
        buf[0] = getchar();
        buf[1] = '\0';
        
        nWrite = strlen(buf);
        if((nWrite = write(writefd, buf, nWrite)) < 0)
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
    
    if(mkfifo(STD_OUTPUT, 0666) < 0)
    {
        perror("Display FIFO: mkfifo error ");
        exit(1);
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
            usleep(1000);
            continue;
        }
        else
        {
            for (int i=0; i<nRead; i++)
                fputc(buf[i], stdout);
            fflush(0);
        }
    }
}
