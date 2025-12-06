#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
	unsigned char *binBuff = new unsigned char[65536];
	unsigned int nAddress = 0, nLength = 0;
    int nBytes = 0;
	FILE* fp_bin = fopen("adventure2.bin", "rb");

	if (fp_bin == 0)
	{
		printf("BIN file not found!\n");
        delete[] binBuff;
		return -1;
	}

    // Read binary (MAX 64k bytes)
	nBytes = (int)fread(binBuff, sizeof(char), 65536, fp_bin);
    fclose(fp_bin);

    // Read first 4 bytes for Start Address & Length
    nAddress = (unsigned int)binBuff[1] * 256 + (unsigned int)binBuff[0];
    nLength  = (unsigned int)binBuff[3] * 256 + (unsigned int)binBuff[2];
    for (int i = 4; i < nLength; i++)
    {
        //mem[nAddress] = (uint32_t)binBuff[i];
        printf("mem[0x%04X] = 0x%02X;\n", nAddress, binBuff[i]);
        nAddress++;
    }
     
     // Set Reset vector
     //mem[0] = 0x20;  // JSR  $StartUp
     //mem[1] = binBuff[0];
     //mem[2] = binBuff[1];
     //mem[3] = 0x20;  // JSR  $FF00
     //mem[4] = 0x00;
     //mem[5] = 0xFF;
    
    delete[] binBuff;

    return 0;
}
