/**********************************************************************
Filename: sc_fxp_sqrt_top_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_fxp_sqrt_top_TB_H_
#define _SC_fxp_sqrt_top_TB_H_

#include <systemc.h>
#include <stdio.h>

#include "fxp_sqrt_top.h"

SC_MODULE(sc_fxp_sqrt_top_TB)
{
    sc_clock            ap_clk;
    sc_signal<bool>     ap_rst;
    sc_signal<bool>     ap_start;
    sc_signal<bool>     ap_done;
    sc_signal<bool>     ap_idle;
    sc_signal<bool>     ap_ready;

    sc_signal<sc_uint<IN_BW> >  in_val;
    sc_signal<sc_uint<OUT_BW> > ap_return;

    sc_signal<bool>         sc_Stopped;

    sc_signal<in_data_t>    input_val;
    sc_signal<float>        CmathOut;
    sc_signal<out_data_t>   RefOut;
    out_data_t              DutOut;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_fxp_sqrt_top_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        ap_rst.write(true);
        ap_start.write(false);
        sc_start(SC_ZERO_TIME);

        // WAVE
        fp = sc_create_vcd_trace_file("sc_fxp_sqrt_top_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, ap_clk, "ap_clk");
        sc_trace(fp, ap_rst, "ap_rst");
        sc_trace(fp, ap_start, "ap_start");
        sc_trace(fp, ap_done, "ap_done");
        sc_trace(fp, ap_idle, "ap_idle");
        sc_trace(fp, ap_ready, "ap_ready");
        sc_trace(fp, in_val, "in_val");
        sc_trace(fp, ap_return, "ap_return");
    }
    
    ~sc_fxp_sqrt_top_TB(void)
    {
    }
};

#endif
