/* -----------------------------------------------------------
Filename : fir8_TB.cpp
Purpose  : C algorithm testbench for fir8
Author   : goodkook@gmail.com
History  : Oct. 2026, First Release
-------------------------------------------------------------- */
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <time.h>
#include <math.h>

#include "cnoise.h"
#include "fir8.h"

#define F_SAMPLE        4800

//------------------------------------------------------------------------------
#define AMPLITUDE       255.0
#define NOISE_RANGE     AMPLITUDE/5.0

data_t gen_signal(int level_denom, int freq, int t, int phase_shift)
{
    return((data_t)
        ((AMPLITUDE/(float)level_denom) * cos((2.0 * M_PI/F_SAMPLE) * (float)freq * (float)t + (2.0 * M_PI/360.0 * (float)phase_shift)) + 1.0));
}
//------------------------------------------------------------------------------

int main(int argc, char** argv)
{
    // FIFO interface to Python
    int fir8_fifo;
    char* szFifo = (char*)"fir8_fifo";

    // Connect Python plot via FIFO
    mkfifo(szFifo, 0666);
    fir8_fifo = open(szFifo, O_WRONLY);
    if(fir8_fifo<0)
        fprintf(stderr,"%s: open error\n", szFifo);

    data_t  x[F_SAMPLE];
#ifdef __Y16__
    acc_t   y[F_SAMPLE];
#else
    data_t  y[F_SAMPLE];
#endif

    double Xin[F_SAMPLE];

    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( Xin, F_SAMPLE, 0, NOISE_RANGE );
    // Alpha=0(White Noise), range=+/-NOISE_RANGE

    for (int t=0; t<F_SAMPLE; t++)
    {
        x[t] =  (data_t)(Xin[t]+NOISE_RANGE)
                + gen_signal( 16,   51, t, 10)
                + gen_signal(  8,  700, t, 30)
                + gen_signal(  4, 1900, t, 50)
                + gen_signal(  4, 2100, t, 70);
        
        fir8(&y[t], x[t]); // FIR Filter
    }

    for (int i=0; i<F_SAMPLE; i++)
    {
        printf("%d %d %d\n", i, x[i], y[i]);
        write(fir8_fifo, &x[i], sizeof(short));
        write(fir8_fifo, &y[i], sizeof(short));
    }

    close(fir8_fifo);
    unlink(szFifo);
    
    return 0;
}
