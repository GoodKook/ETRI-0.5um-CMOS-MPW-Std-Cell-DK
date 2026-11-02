/*******************************************************************************
Autor: GoodKook, goodkook@gmail.com
Associated Filename: sc_fir8_TB.cpp
Purpose: Testbench
Revision History: Aprr. 2025
*******************************************************************************/
#include "sc_fir8_TB.h"

// Noisy Inputs --------------------------------------------------
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
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
        ((AMPLITUDE/(float)level_denom) * (cos((2.0 * M_PI/F_SAMPLE) * (float)freq * (float)t + (2.0 * M_PI/360.0 * (float)phase_shift)) + 1.0)));
}
//------------------------------------------------------------------------------

//
// Cycle-Accurate Test Generator
//
void sc_fir8_TB::Test_Gen()
{
    //--------------------------------------------------------------------------
    double Xin[F_SAMPLE];

    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( Xin, F_SAMPLE, 0, NOISE_RANGE );
    // Alpha=0(White Noise), range=+/-NOISE_RANGE
    //--------------------------------------------------------------------------
    data_t  _x;
    int     t = 0;
    //--------------------------------------------------------------------------

    rst_n.write(false);
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    rst_n.write(true);

    while(true)
    {
        wait(clk.posedge_event());

        // Handshake------------------------------------------------------
        if (!out_valid.read())
        {
            in_valid.write(true);

            _x =  (data_t)(Xin[t]+NOISE_RANGE)
                + gen_signal( 16,   51, t, 10)
                + gen_signal(  8,  700, t, 30)
                + gen_signal(  4, 1900, t, 50)
                + gen_signal(  4, 2100, t, 70);
            x.write(_x);    // to DUT

            t++;
            if (t>=F_SAMPLE)    t = 0;

            // Wait for the output to be valid before sending the next input
            do {
                wait(clk.posedge_event());
                in_valid.write(false);
            } while(!out_valid.read());
        }
    }
}

//
// Cycle-Accurate Output Monitor
//
void sc_fir8_TB::Test_Mon()
{
    data_t  _x, __x[OUTPUT_LATENCY] = {0,};
    data_t  _y;

    bool    bError = false;
    int     test_count = 0;

    while(true)
    {
        wait(clk.posedge_event());

        if (out_valid.read())
        {
            // Output Latency Compensation
            for (int i=0; i<OUTPUT_LATENCY-1; i++)
                __x[i] = __x[i+1];
            __x[OUTPUT_LATENCY-1] = (data_t)(x.read().to_uint());

            if (test_count>=F_SAMPLE)
            {
                fprintf(stderr,"\nTest Completed %s..............", bError ? "with Errors" : "Successfully");
                break;
            }
            else
            {
                //----------------------------------------------------------
                // Reference Output Generation
                _x = __x[0];    //(data_t)(x.read().to_uint());
                fir8(&_y, _x);      // C-Model
                //----------------------------------------------------------

                if ((data_t)(y.read().to_uint()) != _y)
                {
                    bError = true;
                    fprintf(stderr,"\nError: x=%3d, RTL_y=%3d, Ref_y=%3d, test_count=%4d ******",
                        _x, y.read().to_uint(), _y, test_count);
                }
                else
                {
                    fprintf(stderr,"\nPass : x=%3d, RTL_y=%3d, Ref_y=%3d, test_count=%4d",
                        _x, y.read().to_uint(), _y, test_count);
                }

                // Write FIFO to python visualizer
                unsigned short _x_ = x.read().to_uint();
                unsigned short _y_ = y.read().to_uint();
                unsigned short _ref_y_ = (unsigned short)_y;
                write(fir8_fifo, &_x_, sizeof(short));
                write(fir8_fifo, &_y_, sizeof(short));
                write(fir8_fifo, &_ref_y_, sizeof(short));
            }

            test_count++;
        }
    }

    sc_stop();

    close(fir8_fifo);
    unlink(szFifo);
}

