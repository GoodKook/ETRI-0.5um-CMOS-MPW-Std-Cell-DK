/*
    Apple-1 binary to memory
*/
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
	unsigned char   *binBuff = new unsigned char[65536];
	unsigned int    nAddress = 0, nLength = 0;
    int             nBytes = 0, Offset = 0;
	FILE*           fp_bin;
	FILE*           fp_mem;

    if (argc!=3)
    {
        printf("Apple-1 Binary to Memory converter\n");
        printf("Usage: bin2mem <bin_file> <address>\n");
        printf("        set address to 0 for CC65 binary\n");
        return -1;
    }

	fp_bin = fopen(argv[1], "rb");
	if (fp_bin == 0)
	{
		printf("ROM/BIN file not found!\n");
        delete[] binBuff;
		return -1;
	}

    char mem_filename[64];
    sprintf(mem_filename, "%s.h", argv[1]);
    fp_mem = fopen(mem_filename, "w");
    
    // Read binary (MAX 64k bytes)
	nBytes = (int)fread(binBuff, sizeof(char), 65536, fp_bin);
    fprintf(fp_mem, "// %d bytes read from %s\n", nBytes, argv[1]);
    fclose(fp_bin);

    Offset = (int)strtol(argv[2], NULL, 16);
    fprintf(fp_mem, "// Offset address: %04X\n", Offset);
    
    if (Offset==0)  // cc65 binary
    {
        fprintf(fp_mem, "//It's CC65 generated binary!\n");
        // Read first 4 bytes for Start Address & Length
        nAddress = (unsigned int)binBuff[1] * 256 + (unsigned int)binBuff[0];
        nLength  = (unsigned int)binBuff[3] * 256 + (unsigned int)binBuff[2];

        for (int i = 4; i < nLength; i++)
        {
            fprintf(fp_mem, "\tMemory[0x%04X] = 0x%02X;\n", nAddress, binBuff[i]);
            nAddress++;
        }
        
        // Set Reset vector
        fprintf(fp_mem, "\tMemory[0x0000] = 0x20;   // JSR $Startup\n");
        fprintf(fp_mem, "\tMemory[0x0001] = 0x%02X;\n", binBuff[0]);
        fprintf(fp_mem, "\tMemory[0x0002] = 0x%02X;\n", binBuff[1]);
        fprintf(fp_mem, "\tMemory[0x0003] = 0x20;   // JSR $FF00\n");
        fprintf(fp_mem, "\tMemory[0x0004] = 0x00;\n");
        fprintf(fp_mem, "\tMemory[0x0005] = 0xFF;\n");
    }
    else
    {
        nAddress = Offset;
        nLength  = nBytes;

        for (int i = 0; i < nLength; i++)
        {
            fprintf(fp_mem, "\tMemory[0x%04X] = 0x%02X;\n", nAddress, binBuff[i]);
            nAddress++;
        }
    }
    
    fclose(fp_mem);
    delete[] binBuff;
    return 0;
}
