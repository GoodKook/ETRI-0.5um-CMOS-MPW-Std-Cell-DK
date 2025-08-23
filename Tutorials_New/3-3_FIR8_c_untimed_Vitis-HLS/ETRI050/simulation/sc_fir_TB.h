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
    sc_clock                ap_clk;
    sc_signal<bool>         ap_rst;
    sc_signal<bool>         ap_start;
    sc_signal<sc_uint<8> >  x;
    // Signal for DUT's outputs
    sc_signal<bool>         ap_done;
    sc_signal<bool>         ap_idle;
    sc_signal<bool>         ap_ready;
    sc_signal<sc_uint<16> > y;
    sc_signal<bool>         y_ap_vld;

    sc_signal<acc_t>        Ref_y;  // Reference(C++ model) output
    sc_signal<bool>         sc_Stopped;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_fir_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, ap_clk, "ap_clk");
        sc_trace(fp, ap_rst, "ap_rst");
        sc_trace(fp, ap_start, "ap_start");
        sc_trace(fp, x, "x");
        sc_trace(fp, ap_done, "ap_done");
        sc_trace(fp, ap_idle, "ap_idle");
        sc_trace(fp, ap_ready, "ap_ready");
        sc_trace(fp, y_ap_vld, "y_ap_vld");
        sc_trace(fp, y, "y");
    }
    
    ~sc_fir_TB(void)
    {
    }
};

#endif
