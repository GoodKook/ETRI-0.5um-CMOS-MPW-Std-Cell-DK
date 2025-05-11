//
// Discrete Fourier Transform (Integer)
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//---------------------------------------------------
void _puts(char *s)
{
    int i;
    for (i=0; i<strlen(s); i++)
        putchar(s[i]);
}
//---------------------------------------------------
#define LEN 16

// Function to calculate the DFT
void calcDFT(int *xn, long *Xr, long *Xi)
{
    int k, n;
    long SIN[LEN][LEN], COS[LEN][LEN];
    #include "sin_cos.txt"
    
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
int main(void)
{
    char    szBuff[128];
    int     Xn[LEN], i;
    long    Xr[LEN];
    long    Xi[LEN];

    puts("\n*** calcDFT integer ***");
    //Xr = (long*)malloc(LEN*sizeof(long));
    //Xi = (long*)malloc(LEN*sizeof(long));
    //Xn = (int*)malloc(LEN*sizeof(int));
    //memset((void*)Xn, 0x00, LEN*sizeof(int));

    printf("\nEnter input sequence (Leghth<%d):\n", LEN);
    for (i=0; i<LEN; i++)
    {
        sprintf(szBuff, "Xn[%2d] = ", i);
        _puts(szBuff);
        gets(szBuff);
        Xn[i] = (int)atoi(szBuff);
    }

    puts("\nCalculating DFT......\n");
    calcDFT(Xn, Xr, Xi);
 
    for (i=0; i<LEN; i++)
        printf("Xn[%2d]=%2d |(%6ld) + j(%6ld)| = %12ld\n", i, Xn[i], Xr[i], Xi[i], (Xr[i]*Xr[i]+Xi[i]*Xi[i]));
    
    return 0;
}
