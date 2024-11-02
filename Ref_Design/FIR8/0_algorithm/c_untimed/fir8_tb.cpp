/* -----------------------------------------------------------
Filename : fir8_tb.c
Purpose  : C algorithm testbench for FIR8
Author   : goodkook@gmail.com
History  : Mar. 2024, First Release
-------------------------------------------------------------- */

#include <stdio.h>
#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */
#include <math.h>
#include "fir8.h"
#include "cnoise.h"

#define AMPLITUDE       120.0
#define NOISE_RANGE     AMPLITUDE/5.0
#define OUT_TRUNCATE    0

void calcDFT(uint16_t *xn, uint16_t len, uint16_t N, double *Xr, double *Xi);

int main(void)
{
    data_t  x[F_SAMPLE];
    acc_t   y[F_SAMPLE], yn;
    
    double Xin[F_SAMPLE];
    double Xr[F_SAMPLE], Xi[F_SAMPLE];
    double Yr[F_SAMPLE], Yi[F_SAMPLE];

    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( Xin, F_SAMPLE, 0, NOISE_RANGE ); // Alpha=0(White Noise), range=+/-NOISE_RANGE
    //for (int i=0; i<F_SAMPLE; i++)
    //    printf("Xin[%d]=%5.3f\n", i, Xin[i]);

    for (int t=0; t<F_SAMPLE; t++)
    {
        x[t] =  (data_t)(AMPLITUDE/16*(cos((2*M_PI/F_SAMPLE) *   51.0 * t + (float)(rand()%10)/10.0)+1))
              + (data_t)(AMPLITUDE/ 8*(cos((2*M_PI/F_SAMPLE) *  700.0 * t + (float)(rand()%30)/30.0)+1))
              + (data_t)(AMPLITUDE/ 4*(cos((2*M_PI/F_SAMPLE) * 1900.0 * t + (float)(rand()%50)/50.0)+1))
              + (data_t)(AMPLITUDE/ 4*(cos((2*M_PI/F_SAMPLE) * 2100.0 * t + (float)(rand()%70)/70.0)+1))
              + (data_t)(Xin[t]+NOISE_RANGE);
        fir(&yn, x[t]); // FIR Filter
        y[t] = (yn>>OUT_TRUNCATE);
    }

    calcDFT((acc_t*)x, F_SAMPLE, F_SAMPLE, Xr, Xi);
    calcDFT(y, F_SAMPLE, F_SAMPLE, Yr, Yi);

    for (int i=0; i<F_SAMPLE; i++)
        printf("%d %d %5.3f %d %5.3f\n", i,
                    x[i], log((double)(Xr[i]*Xr[i]+Xi[i]*Xi[i])),
                    y[i], log((double)(Yr[i]*Yr[i]+Yi[i]*Yi[i]))
        );

    return 0;
}
