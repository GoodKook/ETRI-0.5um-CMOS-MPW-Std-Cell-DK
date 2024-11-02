/*
    CPU_6502_SA

    CPU_6502 Stand-Alone FPGA Emulator
    
    g++ -o CPU_6502_SA CPU_6502_SA.cpp
*/
#include <stdio.h>
#include <stdlib.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#include <sys/ioctl.h> // For FIONREAD

#include <dirent.h>

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

void PrintHelp()
{
    printf("CPU_6502 Stand-Alone\n");
    printf("====================\n");
    printf("\t- Wozniak's System Monitor Loaded\n");
    printf("\t- Monitor command must be upper case charactor\n");
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
    printf("\t    * Op-code: JSR=$20 / LDA=$A9\n");
    printf("\t- Access memory address DO18 to download cc65 binary\n");
    printf("\t- Press 'd' to start download at prompting \"D018: \"\n");
    printf("\t- Type 'h' for Help\n");
    printf("\t- Type 'q' for Exit\n");
}

int main(int argc, char* argv[])
{
    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting
    
    // ------------------------------------------------------------
    // Init COM port to communicate Arduino Emulator 
    //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
    fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
    if (fd < 0)
    {
        perror("Error opening serial port");
        return -1;
    }

    // Set up serial port/B38400/B115200
    options.c_cflag = B115200 | CS8 | CLOCAL | CREAD;
    options.c_iflag = IGNPAR;
    options.c_oflag = 0;
    options.c_lflag = 0;

    // Apply the settings
    tcflush(fd, TCIFLUSH);
    tcsetattr(fd, TCSANOW, &options);

    // Establish Contact
    int len = 0;
    unsigned char rx, tx[4];
    while(!len)
        len = read(fd, &rx, 1);
    if (rx=='A')
        write(fd, &rx, 1);
    printf("Connection established...\n");

    // -------------------------------------------------------------
    // Command-Line Loop
    FILE            *fp_bin;   // CC65 binary file
    unsigned char   szInBuff[80];
    char            szBinFile[128];
    int             nInBuff = 0;
    
    PrintHelp();
    
    len = 0;
    while(true)
    {
        // Keyboard input
        while (!kbhit())
        {
            // Reading from emulator
            len = read(fd, &rx, 1); // Something to read?
            if (len)
            {
                if (rx==0x0D)   // CR ?
                {
                    rx = '\n';
                    nInBuff = 0;
                }
                else
                {
                    szInBuff[nInBuff++] = rx;
                    szInBuff[nInBuff]   = '\0'; // NULL terminate
                }
                putchar(rx);
                fflush(stdout);
            }
            fflush(stdout);
            usleep(500);
        }
        tx[0] = getchar();
        tx[1] = '\0';
        //printf("%c", tx[0]);
        //printf(" %02X", tx[0]);

        if (tx[0]==0x0A)
            tx[0] = 0x0D;       // CR
        else if (tx[0]=='q')    // Exit
        {
            close(fd);
            return 0;
        }
        else if (tx[0]=='h')    // Help
        {
            PrintHelp();
            continue;
        }
        else if (tx[0]=='l')    // List binary file(s)
        {
            //List_Bin();
            system("ls ./Apple-1/*.bin");
            continue;
        }
        else if (tx[0]=='d')    // Download CC65 binary
        {
            if (strcmp((const char*)szInBuff, "D018: ")) continue;
            
            printf("CC65 Binary File:");
            for ( int byte=getchar(), i=0; (byte!='\n') && (i<126); byte=getchar(), i++ )
            {
                putchar( byte );
                szBinFile[i] = (char)byte;
                szBinFile[i+1] = '\0';
            }
            
            printf("\nDownloading CC65 binary: %s\n", szBinFile);
            if((fp_bin = fopen(szBinFile, "rb"))==0)
            {
                printf("\nFail to open cc65 binary file:%s\n", szBinFile);
                tx[0] = 0x00;
                while(write(fd, &tx, 1)<=0) usleep(1);
                while(read(fd, &rx, 1)<=0)  usleep(1);
                while(write(fd, &tx, 1)<=0) usleep(1);
                while(read(fd, &rx, 1)<=0)  usleep(1);
                while(write(fd, &tx, 1)<=0) usleep(1);
                while(read(fd, &rx, 1)<=0)  usleep(1);
                while(write(fd, &tx, 1)<=0) usleep(1);
                while(read(fd, &rx, 1)<=0)  usleep(1);
                continue;
            }

            while(fread(tx, sizeof(unsigned char), 1, fp_bin)>=1)
            {
                while(write(fd, &tx, 1)<=0) usleep(1); // Sent a byte to Emulator
                while(read(fd, &rx, 1)<=0)  usleep(1); // Wait for ACK
                printf("%02X ", rx);
                fflush(stdout);
            }
            fclose(fp_bin);
            continue;
        }
        else if (islower((int)tx[0]))
            continue;

        while(write(fd, &tx, 1)<=0)  usleep(1); // Send to Emulator
    }
    
    close(fd);
    return 0;
}
