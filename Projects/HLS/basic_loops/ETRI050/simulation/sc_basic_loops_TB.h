/**********************************************************************
Filename: sc_basic_loops_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_BASIC_LOOPS_TB_H_
#define _SC_BASIC_LOOPS_TB_H_

#include "basic_loops.h"   // Untimed C-Model

#include <systemc.h>
#include <stdio.h>

SC_MODULE(sc_basic_loops_TB)
{
    // Signal for DUT's inputs
    sc_clock                ap_clk;
    sc_signal<bool>         ap_rst;
    sc_signal<bool>         ap_start;
    sc_signal<sc_uint<8> >  A_q0;
    // Signal for DUT's outputs
    sc_signal<bool>         ap_done;
    sc_signal<bool>         ap_idle;
    sc_signal<bool>         ap_ready;
    sc_signal<sc_uint<4> >  A_address0;
    sc_signal<bool>         A_ce0;
    sc_signal<sc_uint<13> > ap_return;

    sc_uint<8>      MEM_Dut[10];
    sc_int<8>       MEM_Ref[10];
    dout_t          DutOut;
    dout_t          RefOut;

    sc_signal<bool>         sc_Stopped;

    // Test utilities
    void Test_Gen();
    void Test_Mon();
    void Memory();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_basic_loops_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        SC_THREAD(Memory);
        sensitive << ap_clk;

        // WAVE
        fp = sc_create_vcd_trace_file("sc_basic_loops_tb");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, ap_clk, "ap_clk");
        sc_trace(fp, ap_rst, "ap_rst");
        sc_trace(fp, ap_start, "ap_start");
        sc_trace(fp, ap_done, "ap_done");
        sc_trace(fp, ap_idle, "ap_idle");
        sc_trace(fp, ap_ready, "ap_ready");
        sc_trace(fp, A_address0, "A_address0");
        sc_trace(fp, A_ce0, "A_ce0");
        sc_trace(fp, A_q0, "A_q0");
        sc_trace(fp, ap_return, "ap_return");
    }
    
    ~sc_basic_loops_TB(void)
    {
    }
};

#endif
