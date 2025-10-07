/**********************************************************************
Filename: sc_FIR8_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_FIR8_TB_H_
#define _SC_FIR8_TB_H_

#include <systemc.h>
#include <stdio.h>

#include "cnoise.h"
#include "FIR8.h"

SC_MODULE(sc_FIR8_TB)
{
    sc_clock                ap_clk;
    sc_signal<bool>         ap_rst;
    sc_signal<bool>         ap_start;
    sc_signal<bool>         ap_done;
    sc_signal<bool>         ap_idle;
    sc_signal<bool>         ap_ready;
    sc_signal<bool>         y_ap_vld;
    sc_signal<sc_uint<8> >  x;
    sc_signal<sc_uint<16> > y;

    sc_signal<bool>         sc_Stopped;
    
    acc_t   yRef[F_SAMPLE];

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_FIR8_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        // WAVE
        fp = sc_create_vcd_trace_file("sc_FIR8_tb");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, ap_clk,    "ap_clk");
        sc_trace(fp, ap_rst,    "ap_rst");
        sc_trace(fp, ap_start,  "ap_start");
        sc_trace(fp, ap_done,   "ap_done");
        sc_trace(fp, ap_idle,   "ap_idle");
        sc_trace(fp, ap_ready,  "ap_ready");
        sc_trace(fp, y_ap_vld,  "y_ap_vld");
        sc_trace(fp, x,         "x");
        sc_trace(fp, y,         "y");
    }
    
    ~sc_FIR8_TB(void)
    {
    }
};

#endif
