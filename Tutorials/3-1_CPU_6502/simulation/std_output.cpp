///////////////////////////////////////////////////////////////////
// Filename: std_output.cpp
// Purpose : fifo server for Display terminal
//              can be used with CPU Core Test as StdOUT
// Author: GoodKook, goodkook@gmail.com
// History: First release, Feb., 2024
// Compile: gcc -o std_out std_output.cpp
//

#include "std_output.h"

void norm_exit()
{
    unlink(STD_OUTPUT);
    exit(0);
}

void sig_int(int signo)
{
    norm_exit();
}

int main()
{
    int readfd, n;
    char buf[4]={0,};

    printf("Display server for CPU Core IP test\n");
    
    if(signal(SIGINT, sig_int) == SIG_ERR)
    {
        perror("Display: signal error ");
        exit(1);
    }
    
    if(mkfifo(STD_OUTPUT, 0666) < 0)
    {
        perror("Display: mkfifo error ");
        exit(1);
    }
    
    readfd = open(STD_OUTPUT, O_RDONLY);
    if(readfd < 0)
    {
        perror("Display: open error ");
        exit(1);
    }

    printf("Display server start\n");
    while(1)
    {
        if((n = read(readfd, buf, 1)) < 0)
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
            if (buf[0]==0x0D || buf[0]==0x8D)   // CR ?
                putchar('\n');
            else
                putchar(buf[0]);
            
            fflush(stdout);
        }
        n = 0;
    }
}
