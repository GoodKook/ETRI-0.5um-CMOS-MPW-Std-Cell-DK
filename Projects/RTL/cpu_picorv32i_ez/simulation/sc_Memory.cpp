/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_Memory.h
Purpose: Sync. Memory model for picorv32 CPU
            Verilog RTL available at https://github.com/YosysHQ/picorv32.git
Revision History: Feb. 2024
*******************************************************************************/
#include "sc_Memory.h"
#include <unistd.h>     // sleep()
#include <sys/stat.h>   // mkfifo()
#include <fcntl.h>

#include "defs.h"


unsigned char KBD_Buff[MAX_BUF] = "";
int nKeyboardLen = 0;

// ----------------------------------------------------------------------------
// Keyboard Pipe Thread
// ----------------------------------------------------------------------------
// Keyboard Thread
void* thread_routine_keyboard(void *arg)
{
    pthread_t tid;
    tid = pthread_self();
    printf("\nKeyboard Thread: %lx\n", tid);
    
    int readfd = open(A1_KEYBOARD, O_RDONLY);
    if(readfd < 0) // fifo NOT exist
    {
        perror("keyboard fifo open error");
        sc_stop();
        sleep(1);
    }
    perror("keyboard fifo connected");

    char fifoBuf[MAX_BUF];
    while(true)
    {
        if((nKeyboardLen = read(readfd, (char*)fifoBuf, MAX_BUF-1)) < 0)
        {
            perror("keyboard.fifo read error");
            sc_stop();
            sleep(1);
        }
        fflush(0);

        if (nKeyboardLen==0)
        {
            usleep(1000);
            continue;
        }
        
        for (int i=0; i<nKeyboardLen; i++)
        {
            KBD_Buff[i] = fifoBuf[i];
            KBD_Buff[i+1] = '\0';
        }
        printf("\nKBD Thread: %s", KBD_Buff);

        usleep(1000);
    }
}

// ----------------------------------------------------------------------------
// Synchronous Memory Model & Memory mapped I/O
// ----------------------------------------------------------------------------
void sc_Memory::mem_Thread()
{
	uint32_t	Address;
	uint32_t	wAddress;

    union Data32_in_Byte mem_rdata, mem_wdata;

    // FIFO(named pipe) for display terminal
    int writefd = open(A1_DISPLAY, O_WRONLY);
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

    //----------------------------------------------------------------
    int nIdx = 0;
    ready.write(false);
    bProcessing.write(false);
    while (true)
    {
        wait(clk.posedge_event());
        Address = addr.read() & 0x000FFFFF;      // Byte-Address
        wAddress = (Address>>2);	// Word-Address
        
        if (valid.read() && !bProcessing.read())  // Memory enable
        {
            // Check if KEYBOARD_PORT is available
            if (Address == KEYBOARD_PORT)
            {
                if (KBD_Buff[nIdx]=='\0')
                {
                    mem[wAddress] = (uint32_t)0x00;
                    nIdx = 0;
                }
                else
                {
                    mem_rdata.byte0 =
                    mem_rdata.byte1 =
                    mem_rdata.byte2 =
                    mem_rdata.byte3 = (uint8_t)KBD_Buff[nIdx];
                    mem[wAddress] = mem_rdata.data32; // Valid input
                    KBD_Buff[nIdx++] = '\0';
                }
            }

            rdata.write(mem[wAddress]); // Read
            ready.write(true);
            bProcessing.write(true);
                    
            if (wstrb.read())
            {
                mem_wdata.data32 = wdata.read();
                mem_rdata.data32 = mem[wAddress];
                
                if (wstrb.read() & 0x1)
                    mem_rdata.byte0 = mem_wdata.byte0;
                if (wstrb.read() & 0x2)
                    mem_rdata.byte1 = mem_wdata.byte1;
                if (wstrb.read() & 0x4)
                    mem_rdata.byte2 = mem_wdata.byte2;
                if (wstrb.read() & 0x8)
                    mem_rdata.byte3 = mem_wdata.byte3;

                mem[wAddress] = mem_rdata.data32;   // Write

                // Check if write to DISPLAY_PORT
                if (Address==DISPLAY_PORT)
                {
                    unsigned char c = (unsigned char)(mem_wdata.byte0 & 0x07F);
                    if(write(writefd, (char*)&c, 1) < 0)  // Write to display fifo
                        perror("PIA_DSP_REG: write fail");
                }
            }
        }
        else
        {
            ready.write(false);
            bProcessing.write(false);
        }
    }
}

// ----------------------------------------------------------------------------
// Memory Init Util (Monitor ROM Loader)
// ----------------------------------------------------------------------------
int sc_Memory::ReadHEX(char* Hex_Filename)
{
	char szBuff[256], szTemp[16];
	FILE* fp_hex = fopen(Hex_Filename, "rt");

    if (fp_hex== 0)
	{
		cout << "ROM/HEX file not found!" << endl;
		return -1;
	}

    uint32_t nAddress = 0;
    uint32_t nOffset = 0;
    uint32_t nSegment = 0;

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
        
		// Offset Address
		szTemp[0] = szBuff[3];
		szTemp[1] = szBuff[4];
		szTemp[2] = szBuff[5];
		szTemp[3] = szBuff[6];
		szTemp[4] = '\0';
		nOffset = strtol(szTemp, NULL, 16);

		// Record
		szTemp[0] = szBuff[7];
		szTemp[1] = szBuff[8];
		szTemp[2] = '\0';
        int nRecord = strtol(szTemp, NULL, 16);
        
        switch(nRecord)
        {
            case 00: // Data
                union Data32_in_Byte mem_data;
                // Init. Memory
                for (int i = 0; i < (nByte/4); i++)
                {
                    szTemp[0] = szBuff[i * 8 + 9];
                    szTemp[1] = szBuff[i * 8 + 10];
                    szTemp[2] = '\0';
                    mem_data.byte0 = (uint8_t)strtol(szTemp, NULL, 16);
                    szTemp[0] = szBuff[i * 8 + 11];
                    szTemp[1] = szBuff[i * 8 + 12];
                    szTemp[2] = '\0';
                    mem_data.byte1 = (uint8_t)strtol(szTemp, NULL, 16);
                    szTemp[0] = szBuff[i * 8 + 13];
                    szTemp[1] = szBuff[i * 8 + 14];
                    szTemp[2] = '\0';
                    mem_data.byte2 = (uint8_t)strtol(szTemp, NULL, 16);
                    szTemp[0] = szBuff[i * 8 + 15];
                    szTemp[1] = szBuff[i * 8 + 16];
                    szTemp[2] = '\0';
                    mem_data.byte3 = (uint8_t)strtol(szTemp, NULL, 16);
                    
                    nAddress = (nSegment<<4) + nOffset; // nSegment from '02' Record
                    mem[(nAddress>>2)] = mem_data.data32;
                    nOffset += 4;
                }
                break;
            case 01: // End of File
                cout << "ROM/HEX file: End of Record!" << endl;
                return 0;
            case 02: // Extended Segment Address
                szTemp[0] = szBuff[9];
                szTemp[1] = szBuff[10];
                szTemp[2] = szBuff[11];
                szTemp[3] = szBuff[12];
                szTemp[4] = '\0';
                nSegment = strtol(szTemp, NULL, 16);
                break;
            case 03: // Start Segment Address
                szTemp[0] = szBuff[9];
                szTemp[1] = szBuff[10];
                szTemp[2] = szBuff[11];
                szTemp[3] = szBuff[12];
                szTemp[4] = '\0';
                nSegment = strtol(szTemp, NULL, 16);
                szTemp[0] = szBuff[13];
                szTemp[1] = szBuff[14];
                szTemp[2] = szBuff[15];
                szTemp[3] = szBuff[16];
                szTemp[4] = '\0';
                nOffset = strtol(szTemp, NULL, 16);
                nAddress = (nSegment<<4)+nOffset;   // Start Address
                printf("\nStart Address=%08X in Byte\n", nAddress);
                
                mem_data.data32 = (nOffset << 20) | 0x0000006f;    // Immediate Jump address
                mem[(nSegment<<2)] = mem_data.data32;   // Reset Start address in Word. See "PROGADDR_RESET"
                break;
            case 04: // Extended Linear Address
                szTemp[0] = szBuff[9];
                szTemp[1] = szBuff[10];
                szTemp[2] = szBuff[11];
                szTemp[3] = szBuff[12];
                szTemp[4] = '\0';
                nSegment = strtol(szTemp, NULL, 16);
                nSegment = (nSegment << 16);
                break;
            case 05: // Start Linear Address (Length=4)
                szTemp[0] = szBuff[9];
                szTemp[1] = szBuff[10];
                szTemp[2] = szBuff[11];
                szTemp[3] = szBuff[12];
                szTemp[4] = szBuff[13];
                szTemp[5] = szBuff[14];
                szTemp[6] = szBuff[15];
                szTemp[7] = szBuff[16];
                szTemp[8] = '\0';
                nAddress = strtol(szTemp, NULL, 16);
                break;
            default:
                cout << "ROM/HEX file: Illegal Record!" << endl;
                return -1;
        }
    }
    
    fclose(fp_hex);
	return 0;
}
