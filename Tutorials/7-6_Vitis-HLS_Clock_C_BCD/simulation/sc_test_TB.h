/**********************************************************************
Filename: sc_test_tb.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Mar. 2025, First release
***********************************************************************/

#ifndef _SC_TEST_TB_H_
#define  _SC_TEST_TB_H_

#include <systemc.h>
#include "Vtest.h"
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

SC_MODULE(sc_test_TB)
{

    sc_clock            ap_clk;
    sc_signal<bool>     ap_rst;
    sc_signal<bool>     ap_start;
    sc_signal<bool>     ap_done;
    sc_signal<bool>     ap_idle;
    sc_signal<bool>     ap_ready;
    sc_signal<uint32_t> A_address0;
    sc_signal<bool>     A_ce0;
    sc_signal<uint32_t> A_q0;
    sc_signal<uint32_t> ap_return;
#ifdef EMULATED_CO_SIM
#endif

    Vtest*      u_Vtest;
    sc_int<8>               MEM_A[10];
    sc_int<13>	            DutOut;
    sc_int<13>  RefOut;


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

    SC_CTOR(sc_test_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;
        
        SC_THREAD(Memory);
        sensitive << ap_clk;

        // Instaltiate DUT: "test"
        u_Vtest = new Vtest("u_Vtest");
        u_Vtest->ap_clk(ap_clk);
        u_Vtest->ap_rst(ap_rst);
        u_Vtest->ap_start(ap_start);
        u_Vtest->ap_done(ap_done);
        u_Vtest->ap_idle(ap_idle);
        u_Vtest->ap_ready(ap_ready);
        u_Vtest->A_address0(A_address0);
        u_Vtest->A_ce0(A_ce0);
        u_Vtest->A_q0(A_q0);
        u_Vtest->ap_return(ap_return);
#ifdef EMULATED_CO_SIM
#endif

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_test_tb");
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
        u_Vtest->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vtest.vcd");
#endif
    }
    
    ~sc_test_TB(void)
    {
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
