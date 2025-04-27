/*******************************************************************************
Autor: GoodKook, goodkook@gmail.com
Associated Filename: sc_fir_TB.cpp
Purpose: Testbench
Revision History: Aprr. 2025
*******************************************************************************/
#include "sc_fir_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

// Noisy Inputs --------------------------------------------------
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

#define AMPLITUDE       120.0
#define OUT_TRUNCATE    0

#define NOISE_RANGE     AMPLITUDE/2.0
#include "cnoise.h"
//-----------------------------------------------------------------

//
// Cycle-Accurate Test Generator
//
void sc_fir_TB::Test_Gen()
{
    data_t  _x;
    acc_t   _y;

    // Generate tests & reference from C-Model
    double      X_in[F_SAMPLE]; // Noise
    int         t = 0;
    srand(time(NULL));
    cnoise_generate_colored_noise_uniform( X_in, F_SAMPLE, 0, NOISE_RANGE ); // Alpha=0(White Noise), range=+/-NOISE_RANGE

    ap_start.write(false);
    ap_rst.write(true);
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());

    ap_rst.write(false);

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_idle.read())
        {
            x.write(0);
            ap_start.write(true);
        }

        if (ap_ready.read())
        {
            // Prepare Input
            _x =  sc_uint<8>(AMPLITUDE/16.0*(cos((2*M_PI/F_SAMPLE) *   51.0 * t + (float)(rand() %  10)/ 10.0)+1))
                + sc_uint<8>(AMPLITUDE/16.0*(cos((2*M_PI/F_SAMPLE) *  500.0 * t + (float)(rand() %  30)/ 30.0)+1))
                + sc_uint<8>(AMPLITUDE/16.0*(cos((2*M_PI/F_SAMPLE) *  700.0 * t + (float)(rand() %  50)/ 50.0)+1))
                + sc_uint<8>(AMPLITUDE/ 8.0*(cos((2*M_PI/F_SAMPLE) * 1400.0 * t + (float)(rand() %  70)/ 70.0)+1))
                + sc_uint<8>(AMPLITUDE/ 8.0*(cos((2*M_PI/F_SAMPLE) * 1900.0 * t + (float)(rand() % 110)/110.0)+1))
                + sc_uint<8>(AMPLITUDE/ 8.0*(cos((2*M_PI/F_SAMPLE) * 2100.0 * t + (float)(rand() % 130)/130.0)+1))
                + sc_uint<8>(X_in[t]+NOISE_RANGE);
            t++;
            if (t>=F_SAMPLE)    t = 0;
            //_x = (data_t)rand();
            //_x = 1;

            x.write(_x);    // to DUT

            fir( &_y, _x);  // Reference C-Model
            Ref_y.write(_y);
        }
    }
}

//
// Cycle-Accurate Output Monitor
//
void sc_fir_TB::Test_Mon()
{
    int test_count = 0;

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_done.read())
        {
            cout
                << "[" << std::setw(4) << test_count << "] "
                << "y=" << std::setw(5) << Ref_y.read() << ":"
#ifdef EMULATED_CO_SIM
                << "Y=" << std::setw(5) << E_y.read()
                << ((E_y.read()!=Ref_y.read())? " ERROR":" OK")
#else
                << "Y=" << std::setw(5) << y.read()
                << ((y.read()!=Ref_y.read())? " ERROR":" OK")
#endif
                << std::endl;

                // Send result to Python viewer via FIFO
                if (fir_fifo>0)
                {
                    unsigned short _x = x.read();
                    unsigned short _y = y.read();

                    if((nWrite = write(fir_fifo, &_x, sizeof(short))) < sizeof(short))
                        fprintf(stderr,"fir_fifo: x write error\n");
                    if((nWrite = write(fir_fifo, &_y, sizeof(short))) < sizeof(short))
                        fprintf(stderr,"fir_fifo: y write error\n");
                }

                test_count++;
                if (test_count>=F_SAMPLE)
                {
                    fflush(0);
                    close(fir_fifo);
                    break;
                }
        }
    }
    
    sc_stop();
    fprintf(stderr,"\nWaiting for Python Viewer..............");
}

