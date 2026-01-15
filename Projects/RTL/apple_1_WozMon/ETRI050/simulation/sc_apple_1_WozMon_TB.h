/**********************************************************************
Filename: sc_apple_1_WozMon_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_apple_1_WozMon_TB_H_
#define _SC_apple_1_WozMon_TB_H_

#include <systemc.h>
#include <stdio.h>

#include "sc_mem.h"

SC_MODULE(sc_apple_1_WozMon_TB)
{
    // Signal for DUT's inputs
    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<sc_uint<8> >  DI;
    sc_signal<bool>         IRQ;
    sc_signal<bool>         NMI;
    sc_signal<bool>         RDY;
    sc_signal<bool>         en_woz;
    // Signal for DUT's outputs
    sc_signal<sc_uint<16> > AB;
    sc_signal<sc_uint<8> >  DO;
    sc_signal<bool>         WE;

    sc_signal<bool>         sc_Stopped;

    sc_mem*     u_mem;  // Memory & Peripheral model

    // Test utilities
    void reset_generator();
    //void Test_Mon();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_apple_1_WozMon_TB):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(reset_generator);
        sensitive << clk;

        //SC_THREAD(Test_Mon);
        //sensitive << clk;

        // Memory Instantiation
        u_mem = new sc_mem("u_mem");
        // Binding
        u_mem->clk(clk);
        u_mem->DI(DO);
        u_mem->DO(DI);
        u_mem->WE(WE);
        u_mem->AB(AB);

        sc_Stopped.write(false);

#ifdef VCD_TRACE
        // WAVE
        fp = sc_create_vcd_trace_file("sc_apple_1_WozMon_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, DI,    "DI");
        sc_trace(fp, IRQ,   "IRQ");
        sc_trace(fp, NMI,   "NMI");
        sc_trace(fp, RDY,   "RDY");
        sc_trace(fp, en_woz,"en_woz");
        sc_trace(fp, AB,    "AB");
        sc_trace(fp, DO,    "DO");
        sc_trace(fp, WE,    "WE");
#endif
    }
    
    ~sc_apple_1_WozMon_TB(void)
    {
    }
};

#endif
