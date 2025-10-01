/**********************************************************************
Filename: sc_TOP_MODULE_tb.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Sep. 2025, First release
***********************************************************************/

#ifndef _SC_TOP_MODULE_TB_H_
#define  _SC_TOP_MODULE_TB_H_

#include <systemc.h>
#ifdef EMULATED_CO_SIM
#include "ETOP_MODULE.h"
#else
#include "VTOP_MODULE.h"
#endif
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

SC_MODULE(sc_TOP_MODULE_TB)
{
    sc_clock                ap_clk;
    sc_signal<bool>         ap_rst;
    sc_signal<bool>         clear;
    sc_signal<bool>         start_r;
    sc_signal<sc_uint<8> >  hh;
    sc_signal<sc_uint<8> >  mm;
    sc_signal<sc_uint<8> >  ss;

#ifdef EMULATED_CO_SIM
    ETOP_MODULE*     u_TOP_MODULE;
#else
    VTOP_MODULE*     u_TOP_MODULE;
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

    SC_CTOR(sc_TOP_MODULE_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        // Instaltiate DUT: "TOP_MODULE"
#ifdef EMULATED_CO_SIM
        u_TOP_MODULE = new ETOP_MODULE("u_ETOP_MODULE");
#else
        u_TOP_MODULE = new VTOP_MODULE("u_VTOP_MODULE");
#endif
        u_TOP_MODULE->ap_clk(ap_clk);
        u_TOP_MODULE->ap_rst(ap_rst);
        u_TOP_MODULE->clear(clear);
        u_TOP_MODULE->start_r(start_r);
        u_TOP_MODULE->hh(hh);
        u_TOP_MODULE->mm(mm);
        u_TOP_MODULE->ss(ss);

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_TOP_MODULE_tb");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, ap_clk,    "ap_clk");
        sc_trace(fp, ap_rst,    "ap_rst");
        sc_trace(fp, clear,     "clear");
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
        u_TOP_MODULE->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("VTOP_MODULE.vcd");
#endif
    }
    
    ~sc_TOP_MODULE_TB(void)
    {
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
