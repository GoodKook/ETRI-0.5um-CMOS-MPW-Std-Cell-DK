//
// a1_keyboard.cpp
// fifo server for Keyboard terminal
//
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <cstring>

#define MAX_BUF 128
#define A1_KEYBOARD "keyboard.fifo"

void norm_exit()
{
    unlink(A1_KEYBOARD);
    exit(0);
}

void sig_int(int signo)
{
    norm_exit();
}

void print_help()
{
    printf("Keyboard server\n");
    printf("\t\'q\' - quit\n");
    printf("\t\'h\' - help\n");
}

int main()
{
    int writefd, n;
    char buf[MAX_BUF]={0,};

    print_help();

    if(signal(SIGINT, sig_int) == SIG_ERR)
    {
        perror("Keyboard: signal error ");
        exit(1);
    }
    
    if(mkfifo(A1_KEYBOARD, 0666) < 0)
    {
        perror("Keyboard: mkfifo error ");
        exit(1);
    }
        
    writefd = open(A1_KEYBOARD, O_WRONLY);
    if(writefd < 0)
    {
        perror("Keyboard: open error ");
        exit(1);
    }

    printf("Keyboard server start\n");
    while(1)
    {
        putchar('>');
        fgets(buf, MAX_BUF, stdin);
        
        if (buf[0]=='h')
        {
            print_help();
            continue;
        }
        else if (buf[0]=='q')
            break;
        
        n = strlen(buf) + 2;
        if((n = write(writefd, buf, n)) < 0)
        {
            perror("Keyboard: write error ");
            exit(1);
        }

        if(n == 0)
        {
            printf("Keyboard: file end\n");
            norm_exit();
        }
    }
    
    close(writefd);
    norm_exit();
}
