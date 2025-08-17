/* -----------------------------------------------------------
Filename : FIR8_TL.c
Purpose  : Testbench for Emulation Wrapper of FIR Filter @ Arduino DUE (ARM Core)
Author   : goodkook@gmail.com
History  : Aug. 2025, First Release
-------------------------------------------------------------- */

#include "fir8.h"

#include <time.h>       /* time */
#include <math.h>

#include "fir8.h"
#include "cnoise.h"

#define AMPLITUDE       120.0
#define NOISE_RANGE     AMPLITUDE/5.0
#define OUT_TRUNCATE    0

data_t gen_signal(int level_denom, int freq, int t, int phase_shift)
{
    data_t ret =
    (data_t)(AMPLITUDE/level_denom
                * (cos((2*M_PI/F_SAMPLE)
                    * (float)freq
                    * t
                    + (float)phase_shift)+1));

    return ret;
}

int main()
{
    int     fir_fifo;
    acc_t   Xin;
    acc_t   Yout;

    bool bRet = false;

    double x[F_SAMPLE];
    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( x, F_SAMPLE, 0, NOISE_RANGE );
    // Alpha=0(White Noise), range=+/-NOISE_RANGE

    // FIFO to connect Python plot
    fir_fifo = open("FIR8_fifo", O_WRONLY);

    for (int i=0; i<F_SAMPLE; i++)
    {
        Xin = (data_t)(
                gen_signal( 16,   51, i, 10)
              + gen_signal(  8,  700, i, 30)
              + gen_signal(  4, 1900, i, 50)
              + gen_signal(  4, 2100, i, 70)
              + (data_t)(x[i]+NOISE_RANGE));

        bRet = fir(&Yout, (data_t)Xin);    // Call FIR8
        if (!bRet)
            break;
        else
            fprintf(stderr, "Y[%d]=%d\n", i, Yout);

        if (Yout<11000)
            Yout = 11000;

        if (fir_fifo>0)
        {
            write(fir_fifo, &Xin, sizeof(short));
            write(fir_fifo, &Yout, sizeof(short));
        }
    }

    fprintf(stderr, "Wait for Python Visualization.........\n");

    return 0;
}
