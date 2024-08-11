/**********************************************************************
Filename: sc_fir8_tb.cpp
Purpose : Testbench of 8-Tab Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#include "sc_fir8_tb.h"

#include <stdlib.h>
#include <time.h>
#include <math.h>
#include "../c_untimed/fir8.h"

#define AMPLITUDE       120.0
#define OUT_TRUNCATE    0

#ifndef MTI_SIM
#define NOISE_RANGE     AMPLITUDE/2.0
#include "../c_untimed/cnoise.h"
#else
#define NOISE_RANGE     0.0
#endif

void sc_fir8_tb::Test_Gen()
{
    double      X_in[F_SAMPLE]; // Noise
    uint16_t    yn;
    int         t = 0;

#ifndef MTI_SIM
    // Generate tests & reference from C-Model 
    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( X_in, F_SAMPLE, 0, NOISE_RANGE ); // Alpha=0(White Noise), range=+/-NOISE_RANGE
#else
    for (int i=0; i<F_SAMPLE; i++)  X_in[i] = 0.0;
#endif

    for (t=0; t<F_SAMPLE; t++)
    {
        x[t] =  sc_uint<8>(AMPLITUDE/16.0*(cos((2*M_PI/F_SAMPLE) *   51.0 * t + (float)(rand() %  10)/ 10.0)+1))
              + sc_uint<8>(AMPLITUDE/16.0*(cos((2*M_PI/F_SAMPLE) *  500.0 * t + (float)(rand() %  30)/ 30.0)+1))
              + sc_uint<8>(AMPLITUDE/16.0*(cos((2*M_PI/F_SAMPLE) *  700.0 * t + (float)(rand() %  50)/ 50.0)+1))
              + sc_uint<8>(AMPLITUDE/ 8.0*(cos((2*M_PI/F_SAMPLE) * 1400.0 * t + (float)(rand() %  70)/ 70.0)+1))
              + sc_uint<8>(AMPLITUDE/ 8.0*(cos((2*M_PI/F_SAMPLE) * 1900.0 * t + (float)(rand() % 110)/110.0)+1))
              + sc_uint<8>(AMPLITUDE/ 8.0*(cos((2*M_PI/F_SAMPLE) * 2100.0 * t + (float)(rand() % 130)/130.0)+1))
              + sc_uint<8>(X_in[t]+NOISE_RANGE);

        fir(&yn, x[t]); // C-Model FIR Filter
        
        y[t] = yn;
    }

    Yin.write(0);
    t = 0;

    while(true)
    {
        wait(clk.posedge_event());
        Xin.write(x[t]);
        t = ((++t) % F_SAMPLE);
    }
}

void sc_fir8_tb::Test_Mon()
{
    int         n = 0;
    uint16_t    yout;
#ifdef EMULATED
    uint16_t    e_yout;
#endif

    FILE *fp = fopen ( "sc_fir8_tb_out.txt", "w" );

    while(true)
    {
        wait(clk.posedge_event());
        yout = (uint16_t)Yout.read();
#ifdef EMULATED
        e_yout = (uint16_t)E_Yout.read();
#endif
        if (yout==0)    continue;

        if (y[n]!=yout)
            printf("Error:");
#ifdef EMULATED
        if (y[n]!=e_yout)
            printf("E_Err:");
#endif
        printf("[%4d] y=%d / Yout=%d\n", n, (uint16_t)y[n], yout);
        fprintf(fp, "%5d %5d\n", (uint16_t)x[n], (uint16_t)yout);   //y[i]);

        n++;
        if (n==F_SAMPLE)
        {
            //FILE *fp = fopen ( "sc_fir8_tb_out.txt", "w" );
            //for (int i=0; i<F_SAMPLE; i++)
            //    fprintf(fp, "%5d %5d\n", (uint16_t)x[i], (uint16_t)yout);   //y[i]);
            fflush(fp);
            fclose(fp);

            sc_stop();
        }
    }
}
