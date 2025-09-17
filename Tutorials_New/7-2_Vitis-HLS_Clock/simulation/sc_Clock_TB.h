
/**********************************************************************
Filename: sc_Clock_tb.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Sep. 2025, First release
***********************************************************************/

#ifndef _SC_CLOCK_TB_H_
#define  _SC_CLOCK_TB_H_

#include <systemc.h>
#ifdef EMULATED_CO_SIM
#include "EClock.h"
#else
#include "VClock.h"
#endif
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

SC_MODULE(sc_Clock_TB)
{
    sc_clock                ap_clk;
    sc_signal<bool>         ap_rst;
    sc_signal<bool>         reset;
    sc_signal<bool>         start_r;
    sc_signal<sc_uint<8> >  hh;
    sc_signal<sc_uint<8> >  mm;
    sc_signal<sc_uint<8> >  ss;

#ifdef EMULATED_CO_SIM
    EClock*     u_Clock;
#else
    VClock*     u_Clock;
#endif

    // Test utilities
    void Test_Gen();
    void Test_Mon();

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    SC_CTOR(sc_Clock_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        // Instaltiate DUT: "Clock"
#ifdef EMULATED_CO_SIM
        u_Clock = new EClock("u_EClock");
#else
        u_Clock = new VClock("u_VClock");
#endif
        u_Clock->ap_clk(ap_clk);
        u_Clock->ap_rst(ap_rst);
        u_Clock->reset(reset);
        u_Clock->start_r(start_r);
        u_Clock->hh(hh);
        u_Clock->mm(mm);
        u_Clock->ss(ss);

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_Clock_tb");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, ap_clk,    "ap_clk");
        sc_trace(fp, ap_rst,    "ap_rst");
        sc_trace(fp, reset,     "reset");
        sc_trace(fp, start_r,   "start_r");
        sc_trace(fp, hh,        "hh");
        sc_trace(fp, mm,        "mm");
        sc_trace(fp, ss,        "ss");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_Clock->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("VClock.vcd");
#endif
    }
    
    ~sc_Clock_TB(void)
    {
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
