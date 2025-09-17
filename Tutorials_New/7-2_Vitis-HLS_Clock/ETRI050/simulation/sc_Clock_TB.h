/**********************************************************************
Filename: sc_Clock_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_CLOCK_TB_H_
#define _SC_CLOCK_TB_H_

#include <systemc.h>
#include <stdio.h>

SC_MODULE(sc_Clock_TB)
{
    // Signal for DUT's inputs
    sc_clock                ap_clk;
    sc_signal<bool>         ap_rst;
    sc_signal<bool>         reset;
    sc_signal<bool>         start_r;
    // Signal for DUT's outputs
    sc_signal<sc_uint<8> >  hh;
    sc_signal<sc_uint<8> >  mm;
    sc_signal<sc_uint<8> >  ss;

    sc_signal<bool>         sc_Stopped;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_Clock_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        ap_rst.write(true);
        reset.write(true);
        start_r.write(false);
        sc_start(SC_ZERO_TIME);

        // WAVE
        fp = sc_create_vcd_trace_file("sc_Clock_tb");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, ap_clk, "ap_clk");
        sc_trace(fp, ap_rst, "ap_rst");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, start_r, "start_r");
        sc_trace(fp, hh, "hh");
        sc_trace(fp, mm, "mm");
        sc_trace(fp, ss, "ss");
    }
    
    ~sc_Clock_TB(void)
    {
    }
};

#endif
