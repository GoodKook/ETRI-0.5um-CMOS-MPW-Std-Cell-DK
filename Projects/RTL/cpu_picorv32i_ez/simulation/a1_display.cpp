//
// a1_display.cpp
// fifo server for Display terminal
//

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>

#define MAX_BUF 128
#define A1_DISPLAY  "display.fifo"

void norm_exit()
{
    unlink(A1_DISPLAY);
    exit(0);
}

void sig_int(int signo)
{
    norm_exit();
}

int main()
{
    int readfd, n;
    char buf[MAX_BUF]={0,};

    printf("Display server\n");
    
    if(signal(SIGINT, sig_int) == SIG_ERR)
    {
        perror("Display: signal error ");
        exit(1);
    }
    
    if(mkfifo(A1_DISPLAY, 0666) < 0)
    {
        perror("Display: mkfifo error ");
        exit(1);
    }
    
    readfd = open(A1_DISPLAY, O_RDONLY);
    if(readfd < 0)
    {
        perror("Display: open error ");
        exit(1);
    }

    printf("Display server start\n");
    while(1)
    {
        if((n = read(readfd, buf, 1)) < 0)   // MAX_BUF
        {
            perror("Display: read error ");
            exit(1);
        }

        if(n == 0)
        {
            printf("Display: file end\n");
            norm_exit();
        }
        else
        {
            putchar(buf[0]);
            buf[0] = '\0';
            fflush(stdout);
        }
        n = 0;
    }
}
