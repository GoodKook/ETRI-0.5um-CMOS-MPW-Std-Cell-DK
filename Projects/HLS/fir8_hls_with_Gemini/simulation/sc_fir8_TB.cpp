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
        ((AMPLITUDE/(float)level_denom) * cos((2.0 * M_PI/F_SAMPLE) * (float)freq * (float)t + (2.0 * M_PI/360.0 * (float)phase_shift)) + 1.0));
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
    data_t  _y;
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

            //----------------------------------------------------------
            // Reference Output Generation
            fir8(&_y, _x);      // C-Model

            for(int i=0; i<LATENCY_CYCLE-1; i++)
                Ref_x[i].write(Ref_x[i+1].read());
            Ref_x[LATENCY_CYCLE-1].write(_x);   // to Reference Input

            for(int i=0; i<LATENCY_CYCLE-1; i++)
                Ref_y[i].write(Ref_y[i+1].read());
            Ref_y[LATENCY_CYCLE-1].write(_y);   // to Reference Output

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
    bool    bError = false;
    int     test_count = 0;

    while(true)
    {
        wait(clk.posedge_event());

        if (out_valid.read())
        {
            if (test_count>=F_SAMPLE)
            {
                fprintf(stderr,"\nTest Completed %s..............", bError ? "with Errors" : "Successfully");
                break;
            }
            else if (test_count>LATENCY_CYCLE)
            {
                if (y.read() != Ref_y[0].read())
                {
                    bError = true;
                    fprintf(stderr,"\nError: y=%3d, Ref_y=%3d, test_count=%4d",
                        y.read().to_uint(), Ref_y[0].read().to_uint(), test_count);
                }
                else
                {
                    fprintf(stderr,"\nPass: y=%3d, Ref_y=%3d, test_count=%4d",
                        y.read().to_uint(), Ref_y[0].read().to_uint(), test_count);
                }

                // Write FIFO to python visualizer
                unsigned short _x = Ref_x[0].read().to_uint();
                unsigned short _y = Ref_y[0].read().to_uint();
                write(fir8_fifo, &_x, sizeof(short));
                write(fir8_fifo, &_y, sizeof(short));
            }

            test_count++;
        }
    }

    sc_stop();

    close(fir8_fifo);
    unlink(szFifo);
}

