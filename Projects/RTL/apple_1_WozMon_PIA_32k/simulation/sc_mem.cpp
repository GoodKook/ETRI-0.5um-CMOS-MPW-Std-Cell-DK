/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_mem.cpp
Purpose: Sync. Memory model for Verilog-6502 CPU
Revision History: Jan. 1, 2024
*******************************************************************************/
#include "sc_mem.h"
#include <unistd.h>     // sleep()

// ----------------------------------------------------------------------------
// Synchronous Memory Model
// ----------------------------------------------------------------------------
void sc_mem::mem_Thread()
{
    emu_en.write(false); // Disable Memory emulation
    emu_clk.write(false);
    emu_we.write(false);
    emu_di.write(0);
    emu_addr.write(0);

	while (true)
	{
		wait(clk.posedge_event());

        if (emu_load_bin.read() && emu_load_hex.read())
        {
            fputs("\nIllegal Load command!", stdout);
        }
        else if (emu_load_bin.read())
        {
            // BIN_FILE_LOAD
            kbd.close_keyboard();

            char szBinFilename[64], *pBinFilename;
            fputs("\nFilename(.bin):", stdout);
            pBinFilename = fgets(szBinFilename, sizeof(szBinFilename), stdin);
            szBinFilename[strlen(szBinFilename)-1] = '\0';
            ReadBIN((char*)szBinFilename, 0x0000);    // cc65 binary
                
            //kbd.init_keyboard();
		}
        else if (emu_load_hex.read())
        {
            kbd.close_keyboard();
            char szHexFilename[64], *pHexFilename;
            fputs("\nFilename(.hex):", stdout);
            pHexFilename = fgets(szHexFilename, sizeof(szHexFilename), stdin);
            szHexFilename[strlen(szHexFilename)-1] = '\0';
            ReadHEX((char*)szHexFilename);
            //kbd.init_keyboard();
        }
        fflush(0);
	}
}

//-----------------------------------------------------------------------------
#define EMU_WRITE_MEM(nAddress, cByte) \
{ \
    emu_we.write(true); \
    emu_addr.write(nAddress); \
    emu_di.write(cByte); \
    emu_clk.write(false); \
    wait(SC_ZERO_TIME); \
    emu_clk.write(true); \
    wait(SC_ZERO_TIME); \
}
#define EMU_READ_MEM(nAddress, cByte) \
{ \
    emu_we.write(false); \
    emu_addr.write(nAddress); \
    emu_clk.write(false); \
    wait(SC_ZERO_TIME); \
    emu_clk.write(true); \
    wait(SC_ZERO_TIME); \
    cByte = emu_do.read(); \
}
// ----------------------------------------------------------------------------
// Memory Init Util (Monitor ROM Loader)
// ----------------------------------------------------------------------------
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

    emu_en.write(true); // Enable Memory emulation
    emu_clk.write(0);
    emu_we.write(true); // RAM write enable

    if (Offset==0)  // cc65 binary
    {
        // Read first 4 bytes for Start Address & Length
        nAddress = (unsigned int)binBuff[1] * 256 + (unsigned int)binBuff[0];
        nLength  = (unsigned int)binBuff[3] * 256 + (unsigned int)binBuff[2];
        
        for (int i = 4; i < nLength; i++)
        {
            unsigned char _binBuff;
            EMU_WRITE_MEM(nAddress, binBuff[i])
            EMU_READ_MEM(nAddress, _binBuff)

            if (i>4)
            {
                switch(i%4)
                {
                    case 0: fputc('-', stderr);  break;
                    case 1: fputc('\\', stderr); break;
                    case 2: fputc('|', stderr);  break;
                    case 3: fputc('/', stderr);  break;
                }
                fputc(0x0D, stderr);
                if (binBuff[i-1]!=_binBuff) cout << "E" << endl;
                fflush(0);
            }
            nAddress++;
        }

        // Set Reset vector
        EMU_WRITE_MEM(0, 0x20)
        EMU_WRITE_MEM(1, binBuff[0])
        EMU_WRITE_MEM(2, binBuff[1])
        EMU_WRITE_MEM(3, 0x20)
        EMU_WRITE_MEM(4, 0x00)
        EMU_WRITE_MEM(5, 0xFF)
    }
    else
    {
        nAddress = Offset;
        nLength  = nBytes;

        for (int i = 0; i < nLength; i++)
        {
            EMU_WRITE_MEM(nAddress, binBuff[i])
            nAddress++;
        }
    }
    
    delete[] binBuff;

    cout << BIN_Filename << ":BIN Loaded!" << endl;

    emu_en.write(false); // Disable Memory emulation
    emu_clk.write(false);
    emu_we.write(false); // RAM write Disable
    wait(SC_ZERO_TIME);

    return 0;
}

// ----------------------------------------------------------------------------
// Memory Init Util (Monitor ROM Loader)
// ----------------------------------------------------------------------------
int sc_mem::ReadHEX(char* Hex_Filename)
{
	unsigned char *binBuff = new unsigned char[65536];

    char szBuff[256], szTemp[8];
	FILE* fp_hex = fopen(Hex_Filename, "rt");

    if (fp_hex== 0)
	{
		cout << Hex_Filename << ":HEX file not found!" << endl;
        delete[] binBuff;
		return -1;
	}

    int nAddress;

    emu_en.write(true); // Enable Memory emulation
    emu_clk.write(false);
    emu_we.write(true); // RAM write enable
    wait(SC_ZERO_TIME);

    while (true)
	{
		// Read line
		if (fgets(szBuff, 256, fp_hex) == NULL) // EOF
            break;
		// HEX format
		// :00 0000 00 12345678
		// Start symbol ':'
		if (szBuff[0] != ':')
            break;
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
            unsigned char _binBuff;

			szTemp[0] = szBuff[i * 2 + 9];
			szTemp[1] = szBuff[i * 2 + 10];
			szTemp[2] = '\0';
			binBuff[nAddress] = (unsigned char)((uint32_t)strtol(szTemp, NULL, 16));

            EMU_WRITE_MEM(nAddress, binBuff[nAddress])
            EMU_READ_MEM(nAddress, _binBuff)

            if (i>0)
            {
                switch((i/32)%4)
                {
                    case 0: fputc('-', stderr);  break;
                    case 1: fputc('\\', stderr); break;
                    case 2: fputc('|', stderr);  break;
                    case 3: fputc('/', stderr);  break;
                }
                fputc(0x0D, stderr);
                if (binBuff[nAddress-1]!=_binBuff) cout << "E" << endl;
                fflush(0);
            }
            nAddress++;
		}
	}
    
    fclose(fp_hex);

    delete[] binBuff;

    cout << Hex_Filename << ":HEX Loaded!" << endl;

    emu_en.write(false); // Disable Memory emulation
    emu_clk.write(false);
    emu_we.write(false); // RAM write Disable
    wait(SC_ZERO_TIME);

    return 0;
}
