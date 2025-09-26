/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_TOP_MODULE_TB.cpp
Purpose: Testbench
Revision History: Sep. 2025
*******************************************************************************/
#include "sc_TOP_MODULE_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

#include <stdlib.h>
#include <time.h>
#include <math.h>

#include "TOP_MODULE.h"     // un-timed TOP_MODULE model
#include "cnoise.h"         // noise generator

#define AMPLITUDE       120.0
#define OUT_TRUNCATE    0

#define NOISE_RANGE     AMPLITUDE/2.0

//
// Cycle-Accurate Test Generator
//
void sc_TOP_MODULE_TB::Test_Gen()
{
    double      X_in[F_SAMPLE]; // Noise
    uint16_t    yn;
    int         t = 0;

    // Generate tests & reference from C-Model 
    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( X_in, F_SAMPLE, 0, NOISE_RANGE ); // Alpha=0(White Noise), range=+/-NOISE_RANGE

    for (t=0; t<F_SAMPLE; t++)
    {
        x[t] =  sc_uint<8>(AMPLITUDE/16.0*(cos((2*M_PI/F_SAMPLE) *   51.0 * t + (float)(rand() %  10)/ 10.0)+1))
              + sc_uint<8>(AMPLITUDE/16.0*(cos((2*M_PI/F_SAMPLE) *  500.0 * t + (float)(rand() %  30)/ 30.0)+1))
              + sc_uint<8>(AMPLITUDE/16.0*(cos((2*M_PI/F_SAMPLE) *  700.0 * t + (float)(rand() %  50)/ 50.0)+1))
              + sc_uint<8>(AMPLITUDE/ 8.0*(cos((2*M_PI/F_SAMPLE) * 1400.0 * t + (float)(rand() %  70)/ 70.0)+1))
              + sc_uint<8>(AMPLITUDE/ 8.0*(cos((2*M_PI/F_SAMPLE) * 1900.0 * t + (float)(rand() % 110)/110.0)+1))
              + sc_uint<8>(AMPLITUDE/ 8.0*(cos((2*M_PI/F_SAMPLE) * 2100.0 * t + (float)(rand() % 130)/130.0)+1))
              + sc_uint<8>(X_in[t]+NOISE_RANGE);

        TOP_MODULE(&yn, x[t]); // C-Model FIR Filter
        
        y[t] = yn;
    }

    Yin.write(0);
    t = 0;

    while(true)
    {
        wait(clk.posedge_event());
        Rdy.write(true);
        Xin.write(0);
        // Least nibble
        wait(clk.posedge_event());
        Rdy.write(false);
        Xin.write(sc_uint<4>(x[t]));
        // Most nibble
        wait(clk.posedge_event());
        Rdy.write(false);
        Xin.write(sc_uint<4>(x[t]>>4));
        // Skip 2-clocks
        wait(clk.posedge_event());
        Rdy.write(false);
        Xin.write(0);
        wait(clk.posedge_event());
        Rdy.write(false);
        Xin.write(0);

        t = ((++t) % F_SAMPLE);
    }
}

//
// Cycle-Accurate Output Monitor
//
void sc_TOP_MODULE_TB::Test_Mon()
{
    int         n = 0;
    uint16_t    yout, _yout;

    FILE *fp = fopen ( "sc_TOP_MODULE_TB.txt", "w" );

    while(true)
    {
        wait(clk.posedge_event());
        if (Vld.read()==false)  continue;
        // Yout[3:0] --------------------------------
        wait(clk.posedge_event());
        yout = (uint16_t)Yout.read();
        // Yout[7:4] --------------------------------
        wait(clk.posedge_event());
        yout |= ((uint16_t)Yout.read())<<4;
        // Yout[12:8] --------------------------------
        wait(clk.posedge_event());
        yout |= ((uint16_t)Yout.read())<<8;
        // Yout[15:13] --------------------------------
        wait(clk.posedge_event());
        yout |= ((uint16_t)Yout.read())<<12;

        //if (yout==0)    continue;
#ifdef VPI_SIM
        _yRef.write(y[n]);
        yRef.write(_yRef.read());
#else
        yRef.write(y[n]);
#endif
        printf("[%4d] yRef=%d / Yout=%d ", n, (uint16_t)yRef.read(), yout);
        fprintf(fp, "%5d %5d\n", (uint16_t)x[n], (uint16_t)yout);
        if (yRef.read()==yout)  printf("OK\n");
        else                    printf("ERROR\n");

        n++;
        if (n==F_SAMPLE)
        {
#ifdef VPI_SIM
            sc_Stopped.write(true);
#endif
            fflush(fp);
            fclose(fp);

            sc_stop();
        }
    }
}

