/**********************************************************************
Filename: sc_TOP_MODULE_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_TOP_MODULE_TB_H_
#define _SC_TOP_MODULE_TB_H_

#include <systemc.h>
#include <stdio.h>

#include "TOP_MODULE.h"
#include "cnoise.h"

SC_MODULE(sc_TOP_MODULE_TB)
{
    // Signal for DUT's inputs
    sc_clock                clk;
    sc_signal<bool>         Rdy;
    sc_signal<bool>         Cin;
    sc_signal<sc_uint<4> >  Xin;
    sc_signal<sc_uint<4> >  Yin;
    // Signal for DUT's outputs
    sc_signal<bool>         Vld;
    sc_signal<sc_uint<4> >  Xout;
    sc_signal<sc_uint<4> >  Yout;

    sc_signal<bool>         sc_Stopped;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_uint<8>  x[F_SAMPLE];    // Time seq. input
    sc_uint<16> y[F_SAMPLE];    // Filter output

    sc_signal<sc_uint<16> > yRef, _yRef;

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_TOP_MODULE_TB):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;

        sc_Stopped.write(false);
        
        // WAVE
        fp = sc_create_vcd_trace_file("sc_TOP_MODULE_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, Rdy,   "Rdy");
        sc_trace(fp, Cin,   "Cin");
        sc_trace(fp, Xin,   "Xin");
        sc_trace(fp, Yin,   "Yin");
        sc_trace(fp, Vld,   "Vld");
        sc_trace(fp, Xout,  "Xout");
        sc_trace(fp, Yout,  "Yout");
    }
    
    ~sc_TOP_MODULE_TB(void)
    {
    }
};

#endif
