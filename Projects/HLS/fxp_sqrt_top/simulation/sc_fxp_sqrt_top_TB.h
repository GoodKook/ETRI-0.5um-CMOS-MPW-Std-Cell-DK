/**********************************************************************
Filename: sc_fxp_sqrt_top_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Mar. 2025, First release
***********************************************************************/

#ifndef _SC_FXP_SQRT_TOP_TB_H_
#define _SC_FXP_SQRT_TOP_TB_H_

#include <systemc.h>
#include "fxp_sqrt_top.h"
#ifdef EMULATED_CO_SIM
#include "Efxp_sqrt_top.h"  // Emulated DUT
#else
#include "Vfxp_sqrt_top.h"  // Verilated DUT
#endif
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

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

#ifdef EMULATED_CO_SIM
    Efxp_sqrt_top*      u_fxp_sqrt_top;
#else
    Vfxp_sqrt_top*      u_fxp_sqrt_top;
#endif

    sc_signal<in_data_t>    input_val;
    sc_signal<float>        CmathOut;
    sc_signal<out_data_t>   RefOut;
    out_data_t              DutOut;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    SC_CTOR(sc_fxp_sqrt_top_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        // Instaltiate DUT: "test"
#ifdef EMULATED_CO_SIM
        u_fxp_sqrt_top = new Efxp_sqrt_top("u_fxp_sqrt_top");
#else
        u_fxp_sqrt_top = new Vfxp_sqrt_top("u_fxp_sqrt_top");
#endif
        u_fxp_sqrt_top->ap_clk(ap_clk);
        u_fxp_sqrt_top->ap_rst(ap_rst);
        u_fxp_sqrt_top->ap_start(ap_start);
        u_fxp_sqrt_top->ap_done(ap_done);
        u_fxp_sqrt_top->ap_idle(ap_idle);
        u_fxp_sqrt_top->ap_ready(ap_ready);
        u_fxp_sqrt_top->in_val(in_val);
        u_fxp_sqrt_top->ap_return(ap_return);
#ifdef EMULATED_CO_SIM
#endif

#ifdef VCD_TRACE_TEST_TB
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
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_fxp_sqrt_top->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vfxp_sqrt_top.vcd");
#endif
    }
    
    ~sc_fxp_sqrt_top_TB(void)
    {
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
