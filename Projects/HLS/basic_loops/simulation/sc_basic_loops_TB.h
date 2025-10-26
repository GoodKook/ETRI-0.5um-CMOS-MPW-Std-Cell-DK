
/**********************************************************************
Filename: sc_basic_loops_tb.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Aug. 2025, First release
***********************************************************************/

#ifndef _SC_BASIC_LOOPS_TB_H_
#define  _SC_BASIC_LOOPS_TB_H_

#include <systemc.h>
#include "basic_loops.h"  // for un-timed C-model types
#ifdef EMULATED_CO_SIM
#include "Ebasic_loops.h"
#else
#include "Vbasic_loops.h"
#endif
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

SC_MODULE(sc_basic_loops_TB)
{
    sc_clock                ap_clk;
    sc_signal<bool>         ap_rst;
    sc_signal<bool>         ap_start;
    sc_signal<bool>         ap_done;
    sc_signal<bool>         ap_idle;
    sc_signal<bool>         ap_ready;
    sc_signal<sc_uint<4> >  A_address0;
    sc_signal<bool>         A_ce0;
    sc_signal<sc_uint<8> >  A_q0;
    sc_signal<sc_uint<13> > ap_return;

#ifdef EMULATED_CO_SIM
    Ebasic_loops*    u_basic_loops;
#else
    Vbasic_loops*    u_basic_loops;
#endif
    sc_uint<8>      MEM_Dut[10];
    sc_int<8>       MEM_Ref[10];
    dout_t          DutOut;
    dout_t          RefOut;

    // Test utilities
    void Test_Gen();
    void Test_Mon();
    void Memory();

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    SC_CTOR(sc_basic_loops_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;
        
        SC_THREAD(Memory);
        sensitive << ap_clk;

        // Instaltiate DUT: "basic_loops"
#ifdef EMULATED_CO_SIM
        u_basic_loops = new Ebasic_loops("u_Ebasic_loops");
#else
        u_basic_loops = new Vbasic_loops("u_Vbasic_loops");
#endif
        u_basic_loops->ap_clk(ap_clk);
        u_basic_loops->ap_rst(ap_rst);
        u_basic_loops->ap_start(ap_start);
        u_basic_loops->ap_done(ap_done);
        u_basic_loops->ap_idle(ap_idle);
        u_basic_loops->ap_ready(ap_ready);
        u_basic_loops->A_address0(A_address0);
        u_basic_loops->A_ce0(A_ce0);
        u_basic_loops->A_q0(A_q0);
        u_basic_loops->ap_return(ap_return);

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_basic_loops_TB");
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
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_basic_loops->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vbasic_loops.vcd");
#endif
    }
    
    ~sc_basic_loops_TB(void)
    {
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
