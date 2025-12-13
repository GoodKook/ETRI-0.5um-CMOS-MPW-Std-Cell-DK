/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_FIR8_TB.cpp
Purpose: Testbench
Revision History: Sep. 2025
*******************************************************************************/
#include "sc_FIR8_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

//
// Cycle-Accurate Test Generator
//
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
                    //+ (float)(rand()%phase_shift)/(float)phase_shift)+1));
    return ret;
}

void sc_FIR8_TB::Test_Gen()
{
    // Reference: un-timed
    double  Xin[F_SAMPLE];  // White Noise
    data_t  xn[F_SAMPLE];    // Filter test input
    acc_t   yn;

    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( Xin, F_SAMPLE, 0, NOISE_RANGE );
    // Alpha=0(White Noise), range=+/-NOISE_RANGE

    for (int t=0; t<F_SAMPLE; t++)
    {
        xn[t] =   gen_signal( 16,   51, t, 10)
               + gen_signal(  8,  700, t, 30)
               + gen_signal(  4, 1900, t, 50)
               + gen_signal(  4, 2100, t, 70)
               + (data_t)(Xin[t]+NOISE_RANGE);

        FIR8(&yn, xn[t]); // FIR Filter

        _yRef[t] = yn;
    }

    int test_count = 0;

    ap_rst.write(1);
    ap_start.write(0);
    x.write(0);

    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());

    ap_rst.write(0);

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_idle.read())
        {
            ap_start.write(1);
            continue;
        }
        if (ap_ready.read())
        {
            x.write(xn[test_count]);
            test_count++;
        }
    }
}

//
// Cycle-Accurate Output Monitor
//
void sc_FIR8_TB::Test_Mon()
{
    int test_count = 0;

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (y_ap_vld.read())
        {
            if (test_count>=F_SAMPLE)   break;
#if defined(EMULATED_CO_SIM) && defined(SA)
            __yRef.write(_yRef[test_count]);
            yRef.write(__yRef.read());
#elif defined(EMULATED_CO_SIM) && defined(CA)
            yRef.write(_yRef[test_count]);
#else
            yRef.write(_yRef[test_count]);
#endif
            printf("[%4d] y=%5d Y=%5d ", test_count, (uint16_t)yRef.read(), (uint16_t)y.read());

            if ((uint16_t)yRef.read()==(uint16_t)y.read())
               printf("OK\n");
            else
                printf("ERROR\n");

            test_count++;
        }
    }

    sc_stop();
}

