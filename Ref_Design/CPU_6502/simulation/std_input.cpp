///////////////////////////////////////////////////////////////////
// Filename: std_input.cpp
// Purpose : fifo server for Keyboard terminal
//              can be used with CPU Core Test as StdIN
// Author: GoodKook, goodkook@gmail.com
// History: First release, Feb., 2024
// Compile: gcc -o std_input std_input.cpp
//

#include "std_input.h"

void norm_exit()
{
    unlink(STD_INPUT);
    exit(0);
}

void sig_int(int signo)
{
    norm_exit();
}

void print_help()
{
    printf("CPU_6502 Keyboard server for Apple-1 Woz Monitor\n");
    printf("\tD014 : Load keyboard input script, ./KBD_SEQ.txt\n");
    printf("\tD016 : Load HEX file at ./Apple-1/program.hex\n");
    printf("\tD018 : Load BIN file at ./Apple-1/program.bin\n");
    printf("\tNote : Set memory 0: 20 <PCL> <PCH> 20 00 FF\n");
    printf("\t\tJSR $<PCH><PCL>\t; User code\n");
    printf("\t\tJSR $FF00\t; Monitor Entry\n");
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
    
    if(mkfifo(STD_INPUT, 0666) < 0)
    {
        perror("Keyboard: mkfifo error ");
        exit(1);
    }
        
    writefd = open(STD_INPUT, O_WRONLY);
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
