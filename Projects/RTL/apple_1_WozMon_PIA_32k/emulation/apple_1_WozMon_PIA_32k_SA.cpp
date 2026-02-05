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

// CPU Control byte
//      +-+-+-+-+-+-+-+-+
//  [0] | | |5| | |2|1|0|
//      +-+-+-+-+-+-+-+-+
//           |     | | |
//           |     | | +---reset
//           |     | +---IRQ
//           |     +---NMI
//           +---emu_en
#define _CPU_RUN_   0x00
#define _CPU_RESET_ 0x01
#define _CPU_IRQ_   0x02
#define _CPU_NMI_   0x04
#define _EMU_EN_    0x20

//------------------------------------------------------------------------
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

//------------------------------------------------------------------------
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
    printf("\t    * Op-code: JSR=$20 / LDA=$A9\n\n");
    printf("\t- Type 'r' for RESET CPU\n");
    printf("\t- Type 'l' for list CC65 binary files available\n");
    printf("\t- Type 'b' for Download cc65 binary\n");
    printf("\t- Type 'h' for Help\n");
    printf("\t- Type '^C' for Exit\n");
}

//------------------------------------------------------------------------
void DownloadBIN(int fd)
{
    FILE            *fp_bin;   // CC65 binary file
    char            szBinFile[128];
    unsigned char   rx, tx;
    int nErr = 0;
 
    //----------------------------------------------------------------------------------
    // Download CC65 binary
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
    }
    else
    {
        unsigned int nDownload = 0;
        while(fread(&tx, sizeof(unsigned char), 1, fp_bin)>=1)
        {
            while(write(fd, &tx, 1)<=0) usleep(1); // Sent a byte to Emulator
            while(read(fd, &rx, 1)<=0)  usleep(1); // Wait for ACK
            if (tx != rx)               printf("[%d]Error: %02X %02X\n", nErr++, tx, rx);
            else
            {
                switch(nDownload%4)
                {
                    case 0: putc('-', stdout);  putc(0x0D, stdout); break;
                    case 1: putc('\\', stdout); putc(0x0D, stdout); break;
                    case 2: putc('|', stdout);  putc(0x0D, stdout); break;
                    case 3: putc('/', stdout);  putc(0x0D, stdout); break;
                }
            }
            fflush(stdout);
            nDownload++;

            //printf("%02X ", tx);
            //fflush(stdout);
        }
        printf("\nDone.\n");
        fflush(stdout);
        fclose(fp_bin);
        //close(fd);
    }
    return;
}

//------------------------------------------------------------------------
// MAIN
//------------------------------------------------------------------------
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
    fprintf(stderr, "Request emulator connection......\n");
    unsigned char _rx, _tx = 'A';
    while(write(fd, &_tx, 1)<=0)  usleep(10);
    while(read(fd, &_rx, 1)<=0)   usleep(10);
    if (_rx=='A')
        fprintf(stderr, "Connection established...\n");
    else
    {
        fprintf(stderr, "Connection failed...\n");
        return -1;
    }

    // -------------------------------------------------------------
    // Command-Line Loop
    int len = 0;
    unsigned char rx, tx, cpu_ctl, kbd_data;
    
    PrintHelp();
    
    len = 0;
    while(true)
    {
        len = read(fd, &rx, 1); // Something to read?
        if (len)
        {
            //printf("\n%d-Byte from DUT[%02X]", len, rx);
            if (rx==0x0D)   // CR ?
                rx = '\n';
            putchar(rx);
        }
        else if (kbhit()) // Keyboard input?
        {
            tx = getchar();

            if (tx==0x0A)
                tx = 0x0D;       // CR
            else if (tx=='h')    // Help
            {
                PrintHelp();
                continue;
            }
            else if (tx=='l')    // List binary file(s)
            {
                system("ls ./Apple-1/*.bin");
                continue;
            }
            else if (tx=='b')    // Download CC65 Binary
            {
                cpu_ctl  = _CPU_RESET_ | _EMU_EN_;
                kbd_data = 0x00;
                while(write(fd, &cpu_ctl, 1)<=0)  usleep(1); // Send _CPU_CTL_ to Emulator
                while(write(fd, &kbd_data, 1)<=0) usleep(1); // Send _KBD_DATA_ to Emulator

                DownloadBIN(fd);

                continue;
            }
            else if (tx=='r')    // Reset
            {
                cpu_ctl  = _CPU_RESET_;
                kbd_data = 0x00;
                while(write(fd, &cpu_ctl, 1)<=0)  usleep(1); // Send _CPU_CTL_ to Emulator
                while(write(fd, &kbd_data, 1)<=0) usleep(1); // Send _KBD_DATA_ to Emulator
                printf("\nCPU Resetting......\n");
            }
            else if (islower((int)tx))
                continue;

            cpu_ctl  = _CPU_RUN_;
            kbd_data = tx;
            while(write(fd, &cpu_ctl, 1)<=0)  usleep(1); // Send _CPU_CTL_ to Emulator
            while(write(fd, &kbd_data, 1)<=0) usleep(1); // Send _KBD_DATA_ to Emulator
        }

        fflush(stdout);
        usleep(500);
    }

    return 0;
}
