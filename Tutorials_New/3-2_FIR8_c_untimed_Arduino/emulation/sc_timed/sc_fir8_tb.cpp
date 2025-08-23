/********************************************************************
Filename : sc_fir8_tb.c
Purpose  : Testbench of Emulation Wrapper for FIR Filter @ Arduino DUE (ARM Core)
Author   : goodkook@gmail.com
History  : Aug. 2025, First Release
*********************************************************************/

#include "sc_fir8_tb.h"
#include "cnoise.h"

#define AMPLITUDE       120.0
#define NOISE_RANGE     AMPLITUDE/5.0
#define OUT_TRUNCATE    0

data_t sc_fir8_tb::gen_signal(int level_denom, int freq, int t, int phase_shift)
{
    data_t ret =
    (data_t)(AMPLITUDE/level_denom
                * (cos((2*M_PI/F_SAMPLE)
                    * (float)freq
                    * t
                    + (float)phase_shift)+1));

    return ret;
}

void sc_fir8_tb::Test_Gen(void)
{
    int i = 0;

    double x[F_SAMPLE];
    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( x, F_SAMPLE, 0, NOISE_RANGE );
    // Alpha=0(White Noise), range=+/-NOISE_RANGE

    while(true)
    {
        wait(clk.posedge_event());
        Xin = (data_t)(
                gen_signal( 16,   51, i, 10)
              + gen_signal(  8,  700, i, 30)
              + gen_signal(  4, 1900, i, 50)
              + gen_signal(  4, 2100, i, 70)
              + (data_t)(x[i]+NOISE_RANGE));

        if (i>=F_SAMPLE)    i = 0;
        else                i++;
    }
}

void sc_fir8_tb::Test_Mon(void)
{
    int i = 0;
    acc_t   _Xin, _Yout;

    while(true)
    {
        wait(clk.posedge_event());
        printf("Y[%d]=%d\n", i, (uint16_t)Yout.read());

        // Visualize Xin & Yout with Python via FIFO
        _Xin  = (acc_t)Xin.read();
        _Yout = (acc_t)Yout.read();

        if (_Yout<11000) _Yout = 11000;

        if (fir_fifo>0)
        {
            write(fir_fifo, &_Xin, sizeof(short));
            write(fir_fifo, &_Yout, sizeof(short));
        }

        if (i>=F_SAMPLE)    sc_stop();
        else                i++;
    }
}
