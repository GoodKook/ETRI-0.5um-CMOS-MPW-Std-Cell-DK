/**********************************************************************
Filename: sc_fir_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_FIR_TB_H_
#define _SC_FIR_TB_H_

#include "fir8.h"   // Untimed C-Model

#include <systemc.h>
#include <stdio.h>

SC_MODULE(sc_fir_TB)
{
    // Signal for DUT's inputs
    sc_clock                clk;
    sc_signal<bool>         rst;
    sc_signal<sc_uint<8> >  x;
    // Signal for DUT's outputs
    sc_signal<bool>         ready;
    sc_signal<sc_uint<8> >  y;

    sc_signal<acc_t>        Ref_y;  // Reference(C++ model) output
    sc_signal<bool>         sc_Stopped;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_fir_TB):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;

        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk, "clk");
        sc_trace(fp, rst, "rst");
        sc_trace(fp, x, "x");
        sc_trace(fp, ready, "ready");
        sc_trace(fp, y, "y");
    }

    ~sc_fir_TB(void)
    {
    }
};

#endif
