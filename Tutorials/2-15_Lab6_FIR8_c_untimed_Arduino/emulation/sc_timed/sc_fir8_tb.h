/********************************************************************
Filename : sc_fir8_tb.h
Purpose  : Testbench of Emulation Wrapper for FIR Filter @ Arduino DUE (ARM Core)
Author   : goodkook@gmail.com
History  : Aug. 2025, First Release
*********************************************************************/
#ifndef _SC_FIR8_TB_H_
#define _SC_FIR8_TB_H_

#include <systemc.h>
#include "sc_fir8.h"

SC_MODULE(sc_fir8_tb)
{
    sc_clock                clk;
    sc_signal<sc_uint<8> >  Xin;
    sc_signal<sc_uint<16> > Yout;

    sc_fir8*    u_sc_fir8;

    // Noise Generator
    data_t gen_signal(int level_denom, int freq, int t, int phase_shift);
    // Threads
    void Test_Gen(void);
    void Test_Mon(void);

    // FIFO for Python Visualization
    int     fir_fifo;

    SC_CTOR(sc_fir8_tb): clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;

        // Instantiate DUT
        u_sc_fir8 = new sc_fir8("u_sc_fir8");
        u_sc_fir8->clk(clk);
        u_sc_fir8->Xin(Xin);
        u_sc_fir8->Yout(Yout);

        // FIFO to connect Python plot
        fir_fifo = open("FIR8_fifo", O_WRONLY);
    }
};
#endif


