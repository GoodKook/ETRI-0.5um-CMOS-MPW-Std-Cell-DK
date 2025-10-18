/* -----------------------------------------------------------
Filename : TOP_MODULE_TB.cpp
Purpose  : C algorithm testbench for TOP_MODULE
Author   : goodkook@gmail.com
History  : Mar. 2024, First Release
-------------------------------------------------------------- */

#include <stdio.h>
#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */
#include <math.h>
#include "TOP_MODULE.h"
#include "cnoise.h"

#include "systemc.h"

#define AMPLITUDE       120.0
#define NOISE_RANGE     AMPLITUDE/5.0

void calcDFT(uint16_t *xn, uint16_t len, uint16_t N, double *Xr, double *Xi);

data_t gen_signal(int level_denom, int freq, int t, int phase_shift)
{
    data_t ret =
    (data_t)(AMPLITUDE/level_denom
                * (cos((2*M_PI/F_SAMPLE)
                    * (float)freq
                    * t
                    + (float)phase_shift)+1));
                    //+ (float)(rand()%phase_shift)/(float)phase_shift)+1));
    return ret;
}

int sc_main(int argc, char** argv)
{
    data_t  x[F_SAMPLE];
    acc_t   y;

    uint16_t    _x[F_SAMPLE], _y[F_SAMPLE]; // for calcDFT

    double Xin[F_SAMPLE];
    double Xr[F_SAMPLE], Xi[F_SAMPLE];
    double Yr[F_SAMPLE], Yi[F_SAMPLE];

    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( Xin, F_SAMPLE, 0, NOISE_RANGE );
    // Alpha=0(White Noise), range=+/-NOISE_RANGE

    for (int t=0; t<F_SAMPLE; t++)
    {
        x[t] =   gen_signal( 16,   51, t, 10)
               + gen_signal(  8,  700, t, 30)
               + gen_signal(  4, 1900, t, 50)
               + gen_signal(  4, 2100, t, 70)
               + (data_t)(Xin[t]+NOISE_RANGE);
        
        TOP_MODULE(&y, x[t]); // FIR Filter

        _x[t] = (uint16_t)x[t];
        _y[t] = (uint16_t)y;
    }

    calcDFT(_x, F_SAMPLE, F_SAMPLE, Xr, Xi);
    calcDFT(_y, F_SAMPLE, F_SAMPLE, Yr, Yi);

    for (int i=0; i<F_SAMPLE; i++)
        printf("%d %d %5.3f %d %5.3f\n", i,
                    _x[i], log((double)(Xr[i]*Xr[i]+Xi[i]*Xi[i])),
                    _y[i], log((double)(Yr[i]*Yr[i]+Yi[i]*Yi[i]))
        );

    return 0;
}
