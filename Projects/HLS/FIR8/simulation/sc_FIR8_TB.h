/**********************************************************************
Filename: sc_FIR8_tb.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Sep. 2025, First release
***********************************************************************/

#ifndef _SC_FIR8_TB_H_
#define  _SC_FIR8_TB_H_

#include <systemc.h>
#include "FIR8.h"   // un-timed model
#include "cnoise.h"

#ifdef EMULATED_CO_SIM
#include "EFIR8.h"
#else
#include "VFIR8.h"
#endif
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

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

#ifdef EMULATED_CO_SIM
    EFIR8*     u_FIR8;
#else
    VFIR8*     u_FIR8;
#endif

    acc_t   yRef[F_SAMPLE];

    // Test utilities
    void Test_Gen();
    void Test_Mon();

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    SC_CTOR(sc_FIR8_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        // Instaltiate DUT: "FIR8"
#ifdef EMULATED_CO_SIM
        u_FIR8 = new EFIR8("u_EFIR8");
#else
        u_FIR8 = new VFIR8("u_VFIR8");
#endif
        u_FIR8->ap_clk(ap_clk);
        u_FIR8->ap_rst(ap_rst);
        u_FIR8->ap_start(ap_start);
        u_FIR8->ap_done(ap_done);
        u_FIR8->ap_idle(ap_idle);
        u_FIR8->ap_ready(ap_ready);
        u_FIR8->y_ap_vld(y_ap_vld);
        u_FIR8->x(x);
        u_FIR8->y(y);

#ifdef VCD_TRACE_TEST_TB
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
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_FIR8->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("VFIR8.vcd");
#endif
    }
    
    ~sc_FIR8_TB(void)
    {
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
