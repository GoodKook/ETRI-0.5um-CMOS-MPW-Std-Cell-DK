
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../../defs.h"

void _putc(char c)
{
    char *outport = (char*)(DISPLAY_PORT);
    
    *outport = c;
}

void _puts(char* ptr)
{
    int i=0;
    
    while(ptr[i])
    {
#ifndef RISCV32I
        putchar(ptr[i]);
#else
        _putc(ptr[i]);
#endif
        i++;
    }
}

unsigned char _getc(void)
{
    char c, *inport = (char*)(KEYBOARD_PORT);
    do {
        c = *inport;
    } while(!c);
    
    return(c);
}

int _gets(char* ptr)
{
    int i = 0;
    
    while(1)
    {
#ifdef  RISCV32I
        ptr[i] = _getc();
#else
        ptr[i] = getchar();
#endif
        if (ptr[i]=='\n' || ptr[i]=='\0')
        {
            ptr[i+1] = '\0';
            break;
        }
        i++;
    }

    return(i);
}

#define LEN 16
// Function to calculate the DFT
void calcDFT(int *xn, long *Xr, long *Xi)
{
    int k, n;
    long SIN[LEN][LEN], COS[LEN][LEN];
    #include "./sin_cos.txt"
    
    for (k = 0; k < LEN; k++)
    {
        Xr[k] = 0;
        Xi[k] = 0;
        for (n = 0; n < LEN; n++)
        {
            Xr[k] = (Xr[k] + (long)xn[n] * COS[k][n]);
            Xi[k] = (Xi[k] - (long)xn[n] * SIN[k][n]);
        }
    }
}

// Test
void main(void)
{
    char    szBuff[128];
    int     Xn[LEN];
    long    Xr[LEN];
    long    Xi[LEN];

    _puts("\ncalcDFT integer:\n");
    
    //Xr = (long*)malloc(LEN*sizeof(long));
    //Xi = (long*)malloc(LEN*sizeof(long));
    //Xn = (int*)malloc(LEN*sizeof(int));
    //memset((void*)Xn, 0x00, LEN*sizeof(int));
    
    _puts("\nEnter input sequence:\n");
    for (int i=0; i<LEN; i++)
    {
        sprintf(szBuff, "Xn[%2d] = ", i);
        _puts(szBuff);
        _gets(szBuff);
        _puts(szBuff);
        Xn[i] = atoi(szBuff);
    }

    _puts("\nCalculating DFT......\n");
    calcDFT(Xn, Xr, Xi);
 
    for (int i=0; i<LEN; i++)
    {
        sprintf(szBuff, "[%2d] |(%+6ld) + j(%+6ld)| = %12ld\n", i,
                    Xr[i], Xi[i], (Xr[i]*Xr[i]+Xi[i]*Xi[i]));
        _puts(szBuff);
    }

#ifdef RISCV32I
    _puts("\nReady ......\n");
    while(1)
        _putc(_getc());
#endif
}
