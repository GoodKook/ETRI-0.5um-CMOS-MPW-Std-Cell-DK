/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_mem.cpp
Purpose: Sync. Memory model for Verilog-6502 CPU
Revision History: Jan. 1, 2024
*******************************************************************************/
#include "sc_mem.h"
#include <unistd.h>     // sleep()
#include <sys/stat.h>   // mkfifo()
#include <fcntl.h>

#include "CPU_terminal.h"

unsigned char KBD_Buff = '\0';

// Keyboard Thread
void* thread_routine_keyboard(void *arg)
{
    pthread_t tid;
    tid = pthread_self();
    printf("\nKeyboard Thread: %lx\n", tid);
    
    int readfd = open(STD_INPUT, O_RDONLY); // A1_KEYBOARD
    if(readfd < 0) // fifo NOT exist
    {
        perror("keyboard fifo open error");
        sc_stop();
        sleep(1);
    }
    perror("keyboard fifo connected");

    int nRead = 0;
    while(true)
    {
        if (KBD_Buff=='\0')
        {
            if ((nRead = read(readfd, &KBD_Buff, 1))<0)
            {
                perror("keyboard.fifo read error");
                sc_stop();
                sleep(1);
            }
            else if (nRead==1)
            {
                printf("\nKBD: %c(0x%02X)", KBD_Buff, KBD_Buff);
                if (KBD_Buff=='q')
                {
                    sc_stop();
                    sleep(1);
                }
            }
        }
        usleep(1);
        //sched_yield();
    }
}

// ----------------------------------------------------------------------------
// Synchronous Memory Model & Memory mapped I/O
// ----------------------------------------------------------------------------
void sc_mem::mem_Thread()
{
	uint32_t	Address;
    int         nIdx = 0;
    int         nLines = 0; // Read TXT file
    
    // FIFO(named pipe) for display terminal
    int writefd = open(STD_OUTPUT, O_WRONLY);   // A1_DISPLAY
    if(writefd < 0) // fifo NOT exist
    {
        perror("display fifo open error");
        sc_stop();
        sleep(1);
    }
    perror("display fifo connected");
    
    // Keyboard input from another terminal
    pthread_t thread_kbd;
    if (pthread_create(&thread_kbd, NULL, thread_routine_keyboard, NULL)!=0)
    {
        perror("Keyboard Thread: Creation Fail!");
        sc_stop();
        sleep(1);
    }

	while (true)
	{
		wait(clk.posedge_event());
		Address = AB.read();	// Read Address-Bus

		if (WE.read())	// Memory Write ---------------------------------------------------------------
		{
			mem[Address] = DI.read();	// WRITE MEMORY

			// Memory Mapped I/O (Screen & Keyboard)
			if (Address == PIA_KBD_REG)         // PIA.A keyboard register
			{
                printf("\nMEM:Write [%04X]%02X KBD REG    ", Address, mem[Address]);
			}
			else if (Address == PIA_KBD_CTL)	// PIA.A keyboard control register
			{
                printf("\nMEM:Write [%04X]%02X KBD CTL    ", Address, mem[Address]);
			}
			else if (Address == PIA_DSP_REG)	// PIA.B display register
			{
                printf("\nMEM:Write [%04X]%02X DSP REG(%02X)", Address, mem[Address], (char)mem[Address] & 0x07F);
                unsigned char c = (unsigned char)(mem[Address] & 0x07F);
                //unsigned char c = (unsigned char)(mem[Address]);
                if(write(writefd, (char*)&c, 1) < 0)  // Write to display fifo
                    perror("PIA_DSP_REG: write fail");
				mem[Address] = (mem[Address] & 0x07F);	// Clear B7 (Character out to screen)
			}
			else if (Address == PIA_DSP_CTL)	// PIA.B display control register
			{
                printf("\nMEM:Write [%04X]%02X DSP CTL    ", Address, mem[Address]);
			}
            else
            {
                //printf("\nMEM:Write [%04X]%02X           ", Address, mem[Address]);
            }
		}
		else // Memory Read ------------------------------------------------------------------------
		{
			// Memory Read Operation
			if (Address == PIA_KBD_REG)         // PIA.A keyboard input
			{
                printf("\nMEM:Read  [%04X]%02X KBD REG(%02X)", Address, mem[Address], mem[Address] & 0x07F);

                if (KBD_Buff=='\0')
                {
                    mem[Address] = 0x00;
                    mem[PIA_KBD_CTL] = (mem[PIA_KBD_CTL] & 0x3F);	// Keyboard empty
                }
                else if (KBD_Buff=='\n')
                {
                    mem[Address] = 0x08D;    // CR | Valid input
                    mem[PIA_KBD_CTL] = (mem[PIA_KBD_CTL] & 0x3F);	// Keyboard empty
                    KBD_Buff = '\0';
                }
                else
                {
                    mem[Address] = (KBD_Buff | 0x80);               // Valid input
                    mem[PIA_KBD_CTL] = (mem[PIA_KBD_CTL] & 0x3F);	// Keyboard empty
                    KBD_Buff = '\0';
                }
			}
			else if (Address == PIA_KBD_CTL)	// PIA.A keyboard Control Register
			{
                //printf("\nMEM:Read  [%04X]%02X KBD CTL    ", Address, mem[Address]);

                if (KBD_Buff)
                {
                    mem[Address] = (mem[Address] | 0x80);	// Keyboard ready
                    printf("\nMEM:Read  [%04X]%02X KBD CTL    ", Address, mem[Address]);
                }
			}
			else if (Address == PIA_DSP_REG)	// PIA.B Display Output Register
			{
                printf("\nMEM:Read  [%04X]%02X DSP REG    ", Address, mem[Address]);
			}
			else if (Address == PIA_DSP_CTL)	// PIA.B Display Control Register
			{
                printf("\nMEM:Read  [%04X]%02X DSP CTL    ", Address, mem[Address]);
			}
            else if(Address == HEX_FILE_LOAD)
            {
                char szHexFilename[64], *pHexFilename;
                fputs("\nFilename(.hex):", stdout);
                pHexFilename = fgets(szHexFilename, sizeof(szHexFilename), stdin);
                szHexFilename[strlen(szHexFilename)-1] = '\0';
                ReadHEX((char*)szHexFilename);
                //ReadHEX((char*)"./Apple-1/program.hex");
            }
            else if(Address == BIN_FILE_LOAD)
            {
                char szBinFilename[64], *pBinFilename;
                fputs("\nFilename(.bin):", stdout);
                pBinFilename = fgets(szBinFilename, sizeof(szBinFilename), stdin);
                szBinFilename[strlen(szBinFilename)-1] = '\0';
                ReadBIN((char*)szBinFilename, 0x0000);    // cc65 binary
                //ReadBIN((char*)"./Apple-1/program.bin", 0x0000);    // cc65 binary
            }
            else
            {
                //printf("\nMEM:Read  [%04X]%02X            ", Address, mem[Address]);
            }
            
			DO.write(mem[Address]);	// READ MEMORY
		}
        fflush(0);
	}
}

// ----------------------------------------------------------------------------
// Memory Init Util (Monitor ROM Loader)
// ----------------------------------------------------------------------------
int sc_mem::ReadHEX(char* Hex_Filename)
{
	char szBuff[256], szTemp[8];
	FILE* fp_hex = fopen(Hex_Filename, "rt");

    if (fp_hex== 0)
	{
		cout << Hex_Filename << ":HEX file not found!" << endl;
		return -1;
	}

    int nAddress;

	while (true)
	{
		// Read line
		if (fgets(szBuff, 256, fp_hex) == NULL) // EOF
        {
            fclose(fp_hex);
			return 0;
        }
		// HEX format
		// :00 0000 00 12345678
		// Start symbol ':'
		if (szBuff[0] != ':')
        {
            fclose(fp_hex);
			return -1;
        }
		// Number of Bytes
		szTemp[0] = szBuff[1];
		szTemp[1] = szBuff[2];
		szTemp[2] = '\0';
		int nByte = strtol(szTemp, NULL, 16);
		if (nByte < 1)
			continue;
		// Address
		szTemp[0] = szBuff[3];
		szTemp[1] = szBuff[4];
		szTemp[2] = szBuff[5];
		szTemp[3] = szBuff[6];
		szTemp[4] = '\0';
		nAddress = strtol(szTemp, NULL, 16);

		// Init. Memory
		for (int i = 0; i < nByte; i++)
		{
			szTemp[0] = szBuff[i * 2 + 9];
			szTemp[1] = szBuff[i * 2 + 10];
			szTemp[2] = '\0';
			mem[nAddress] = (uint32_t)strtol(szTemp, NULL, 16);
			nAddress++;
		}
	}
    
    fclose(fp_hex);

    cout << Hex_Filename << ":HEX Loaded!" << endl;
    return 0;
}

int sc_mem::ReadBIN(char* BIN_Filename, int Offset)
{
	unsigned char *binBuff = new unsigned char[65536];
	unsigned int nAddress = 0, nLength = 0;
    int nBytes = 0;
	FILE* fp_bin = fopen(BIN_Filename, "rb");

	if (fp_bin == 0)
	{
		cout << BIN_Filename << ":BIN file not found!" << endl;
        //delete binBuff;
        delete[] binBuff;
		return -1;
	}

    // Read binary (MAX 64k bytes)
	nBytes = (int)fread(binBuff, sizeof(char), 65536, fp_bin);
    fclose(fp_bin);

    if (Offset==0)  // cc65 binary
    {
        // Read first 4 bytes for Start Address & Length
        nAddress = (unsigned int)binBuff[1] * 256 + (unsigned int)binBuff[0];
        nLength  = (unsigned int)binBuff[3] * 256 + (unsigned int)binBuff[2];

        for (int i = 4; i < nLength; i++)
        {
            mem[nAddress] = (uint32_t)binBuff[i];
            nAddress++;
        }
        
        // Set Reset vector
        mem[0] = 0x20;  // JSR  $StartUp
        mem[1] = binBuff[0];
        mem[2] = binBuff[1];
        mem[3] = 0x20;  // JSR  $FF00
        mem[4] = 0x00;
        mem[5] = 0xFF;
    }
    else
    {
        nAddress = Offset;
        nLength  = nBytes;

        for (int i = 0; i < nLength; i++)
        {
            mem[nAddress] = (uint32_t)binBuff[i];
            nAddress++;
        }
    }
    
    delete[] binBuff;

    cout << BIN_Filename << ":BIN Loaded!" << endl;
    return 0;
}
