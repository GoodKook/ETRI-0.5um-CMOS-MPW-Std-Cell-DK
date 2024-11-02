/*
    CPU_6502_SA

    CPU_6502 Stand-Alone FPGA Emulator
    
    g++ -o CPU_6502_SA CPU_6502_RT2.cpp
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

//------------------------------------------------------------------------
// DUT interface,
//  See DUT's wrapper Verilog
//
// Inputs to DUT (6-Bytes)
//  [0] = {--|Dsp_Rd|Kbd_Wr|RDY|NMI|IRQ|reset}
//  [1] = Kbd_In
// Memory Emulation
//  [2] = {-----|Mem_Emu_Clk|Mem_Emu_Wen|Mem_Emu_Ena}
//  [3] = Mem_Emu_Adr[15:8]
//  [4] = Mem_Emu_Adr[ 7:0]
//  [5] = Mem_Emu_Din
// Outputs from DUT (5-bytes)
//  [0]  <= Dsp_Reg_Out;
//  [1]  <= Kbd_Reg_Out;
//  [2]  <= Kbd_Ctl_Out;
//  [3]  <= Mem_Emu_Dout

#define N_TX    6
#define N_RX    4

#define DSP_RD  0x20
#define KBD_WR  0x10
#define CPU_RDY 0x08
#define CPU_NMI 0x04
#define CPU_IRQ 0x02
#define CPU_RST 0x01

// Arduino Serial IF
int fd;                 // Serial port file descriptor
struct termios options; // Serial port setting

int ConnectEmulator()
{
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
    
    return 1;
}

void TransactEmulator(unsigned char* txPacket, unsigned char* rxPacket)
{
    unsigned char x, y;

    for (int i=0; i<N_TX; i++)
    {
        x = txPacket[i];
        while(write(fd, &x, 1)<=0)  usleep(1);
    }

    for (int i=0; i<N_RX; i++)
    {
        while(read(fd, &y, 1)<=0)   usleep(1);
        rxPacket[i] = y;
    }
}

//-----------------------------------------------------------
// FPGA Emulator Input. See Verilog cou_wrapper_RT2.v
//-----------------------------------------------------------
//  reset  <= stimIn[0][0];
//  IRQ    <= stimIn[0][1];
//  NMI    <= stimIn[0][2];
//  RDY    <= stimIn[0][3];
//  Kbd_Wr <= stimIn[0][4];
//  Dsp_Rd <= stimIn[0][5];
//  Kbd_In <= stimIn[1];
// Memory Emulation
//  Mem_Emu_Ena       <= stimIn[2][0];
//  Mem_Emu_Wen       <= stimIn[2][1];
//  Mem_Emu_Clk       <= stimIn[2][2];
//  Mem_Emu_Adr[15:8] <= stimIn[3];
//  Mem_Emu_Adr[ 7:0] <= stimIn[4];
//  Mem_Emu_Din       <= stimIn[5];
//-----------------------------------------------------------
// FPGA Emulator Input. See Verilog cou_wrapper_RT2.v
//-----------------------------------------------------------
//  vectOut[0]  <= Dsp_Reg_Out;
//  vectOut[1]  <= Kbd_Reg_Out;
//  vectOut[2]  <= Kbd_Ctl_Out;
//  vectOut[3]  <= Mem_Emu_Dout;

#define MEM_EMU_EN   0x01
#define MEM_EMU_WEN  0x02
#define MEM_EMU_CLK  0x04

unsigned char CPU_MemoryRead(unsigned int Address)
{
    unsigned char txPack[N_TX], rxPack[N_RX];

    for (int i=0; i<N_TX; i++)  txPack[i] = 0x00;
    for (int i=0; i<N_RX; i++)  rxPack[i] = 0x00;

    txPack[0] = DSP_RD | KBD_WR;    // Hold CPU
    txPack[2] = MEM_EMU_EN;         // Enable Memory emulation
    txPack[3] = (Address >> 8);     // Address[15:8]
    txPack[4] = (Address & 0x00FF); // Address[ 7:0]
    TransactEmulator(txPack, rxPack);
    usleep(1);

    txPack[2] = MEM_EMU_EN | MEM_EMU_CLK; // Memory emulation, Write enable, Clock
    TransactEmulator(txPack, rxPack);
    usleep(1);

    txPack[2] = MEM_EMU_EN; // Memory emulation, Write enable, Clock
    TransactEmulator(txPack, rxPack);
    usleep(1);
    
    return rxPack[3];
}

unsigned char CPU_MemoryWrite(unsigned int Address, unsigned char byte)
{
    unsigned char txPack[N_TX], rxPack[N_RX];

    for (int i=0; i<N_TX; i++)  txPack[i] = 0x00;
    for (int i=0; i<N_RX; i++)  rxPack[i] = 0x00;

    txPack[0] = DSP_RD | KBD_WR;    // Hold CPU
    txPack[2] = MEM_EMU_EN;         // Enable Memory emulation
    txPack[3] = (Address >> 8);     // Address[15:8]
    txPack[4] = (Address & 0x00FF); // Address[ 7:0]
    txPack[5] = byte;               // Din[ 7:0]
    TransactEmulator(txPack, rxPack);
    usleep(1);

    txPack[2] = MEM_EMU_EN | MEM_EMU_WEN;   // Memory emulation, Write enable
    TransactEmulator(txPack, rxPack);
    usleep(1);

    txPack[2] = MEM_EMU_EN | MEM_EMU_WEN | MEM_EMU_CLK; // Memory emulation, Write enable, Clock
    TransactEmulator(txPack, rxPack);
    usleep(1);

    txPack[2] = MEM_EMU_EN; // Memory emulation, Write enable
    TransactEmulator(txPack, rxPack);
    usleep(1);
    
    return byte;    //CPU_MemoryRead(Address);
}

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
    printf("\t- Type 'd' to download CC65 binary\n");
    printf("\t- Type 'i' to download iHEX\n");
    printf("\t- Type 'k' to download Keyboard\n");
    printf("\t- Type 'h' for Help\n");
    printf("\t- Type 'q' for Exit\n");
}

void File_List(char *Path)
{
}

int main(int argc, char* argv[])
{
    if (ConnectEmulator()<0)    return -1;
    PrintHelp();

    // -------------------------------------------------------------
    // Command-Line Loop
    FILE *fp_bin;   // CC65 binary file
    char szBinFile[128], szHexFile[128];

    unsigned char Disp, KbdBuff[8];

    printf("Going command-line......\n");
    while(true)
    {
        // Keyboard input
        while (!kbhit())
        {
            if(read(fd, &Disp, 1)>=1)
            {
                //printf("[%02X(%c)]", Disp, Disp & 0x7F);
                //fflush(stdout);
                if (Disp==0x0D) Disp  = '\n'; // CR ?
                putchar(Disp);
                fflush(stdout);
            }
            else
                usleep(1);
        }
        KbdBuff[0] = getchar();
        KbdBuff[1] = '\0';

        if (KbdBuff[0]==0x0A)   KbdBuff[0] = 0x0D;  // CR
        else if (KbdBuff[0]=='q')    // Exit
        {
            close(fd);
            return 0;
        }
        else if (KbdBuff[0]=='h')    // Help
        {
            PrintHelp();
            continue;
        }
        else if (KbdBuff[0]=='l')    // List binary file(s)
        {
            system("ls ./Apple-1/*");
            continue;
        }
        else if (KbdBuff[0]=='d')    // Download CC65 binary
        {
            system("ls ./Apple-1/*.bin");
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
                continue;
            }

            unsigned char tx, rx, len[4];
            unsigned int  nLength;
            
            // Switch to download mode
            while(write(fd, KbdBuff, 1)<=0) usleep(1);
            sleep(1);

            // Read 4-Byte CC65 header
            fread(len, sizeof(unsigned char), 4, fp_bin);
            nLength = (unsigned int)len[3] * 256 + (unsigned int)len[2];
            printf("Address=%02X%02X, Length=%04X\n", len[1], len[0], nLength);
            // Send 4-Byte CC65 header
            tx = len[0];    while(write(fd, &tx, 1)<=0) usleep(1);
            tx = len[1];    while(write(fd, &tx, 1)<=0) usleep(1);
            tx = len[2];    while(write(fd, &tx, 1)<=0) usleep(1);
            tx = len[3];    while(write(fd, &tx, 1)<=0) usleep(1);
            
            for(int i=0; i<nLength; i++)
            {
                if (fread(&tx, sizeof(unsigned char), 1, fp_bin)<=0)
                {
                    printf("File length mismatch\n");
                    fclose(fp_bin);
                    continue;
                }

                while(write(fd, &tx, 1)<=0) usleep(1);
                while(read(fd, &rx, 1)<=0)  usleep(1);
                if (tx!=rx)
                {
                    printf("\nDownload Error\n");
                    fclose(fp_bin);
                    continue;
                }
                else
                    printf("%02X ", rx);
                fflush(stdout);
            }
            fclose(fp_bin);
        }
        else if (KbdBuff[0]=='i')    // Download iHEX
        {
            char szHexBuff[128];
            unsigned char tx, rx;

            system("ls ./Apple-1/*.hex");
            printf("iHEX File:");
            for ( int byte=getchar(), i=0; (byte!='\n') && (i<126); byte=getchar(), i++ )
            {
                putchar( byte );
                szHexFile[i] = (char)byte;
                szHexFile[i+1] = '\0';
            }
            
            printf("\nDownloading iHEX: %s\n", szHexFile);
            if((fp_bin = fopen(szHexFile, "r"))==0)
            {
                printf("\nFail to open iHEX file:%s\n", szHexFile);
                continue;
            }

            // Switch to download mode
            while(write(fd, KbdBuff, 1)<=0) usleep(1);
            sleep(1);

            while (true)
            {
                // Read line
                if (fgets(szHexBuff, 128, fp_bin) == NULL) // EOF
                {
                    fclose(fp_bin);
                    continue;
                }

                for (int i=0; i<=strlen(szHexBuff); i++)
                {
                    tx = szHexBuff[i];
                    while(write(fd, &tx, 1)<=0) usleep(1);
                }

                for (int i=0; i<(((szHexBuff[1]&0x0F)*16) + (szHexBuff[2]&0x0F)); i++)
                {
                    while(read(fd, &rx, 1)<=0)  usleep(1);
                    printf("%02X ", rx);
                    fflush(stdout);
                }
            }
        }
        else if (KbdBuff[0]=='k')    // Download Key input
        {
            char            line[128], *result;
            unsigned char   rx, tx;
            int             len;
            
            system("ls ./Apple-1/*.txt");
            printf("Keyboard Sequence TXT file:");
            for ( int byte=getchar(), i=0; (byte!='\n') && (i<126); byte=getchar(), i++ )
            {
                putchar( byte );
                szHexFile[i] = (char)byte;
                szHexFile[i+1] = '\0';
            }

            if((fp_bin = fopen(szHexFile, "r"))==0)
            {
                printf("\nFail to open TXT file:%s\n", szHexFile);
                continue;
            }
            
            printf("\n");
            while ((result = fgets(line, 128, fp_bin)) != NULL)
            {
                len = strlen(result);
                result[len-1] = 0x0D;
                result[len] = '\0';
                
                for (int i=0; i<len; i++)
                {

                    tx = result[i];
                    while(write(fd, &tx, 1)<=0) usleep(10);
                    while(read(fd, &rx, 1)<=0)  usleep(10);
                    //printf("%c", rx);
                    //fflush(stdout);
                }
                sleep(1);
                printf(".");
                fflush(stdout);
            }
            continue;
        }
        else if (islower((int)KbdBuff[0]))
            continue;

        //printf("Writing Keyboard to Emulator......\n");
        while(write(fd, KbdBuff, 1)<=0)  usleep(1);
    }
    
    close(fd);
    return 0;
}
