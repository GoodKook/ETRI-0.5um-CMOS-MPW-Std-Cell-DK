/**********************************************************************
Filename: sc_fir_pe_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_FIR_PE_TB_H_
#define _SC_FIR_PE_TB_H_

#include <systemc.h>
#include <stdio.h>
#include <fcntl.h>

#ifdef EMULATED_CO_SIM
#include "Efir_pe.h"
#endif
#include "Vfir_pe.h"
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

SC_MODULE(sc_fir_pe_TB)
{
    // Signal for DUT's inputs
    sc_clock                ap_clk;
    sc_signal<bool>         ap_rst;
    sc_signal<bool>         ap_start;
    sc_signal<sc_uint<8> >  Cin;
    sc_signal<sc_uint<4> >  Xin;
    sc_signal<sc_uint<4> >  Yin;
    sc_signal<bool>         Rdy;
    // Signal for DUT's outputs
    sc_signal<bool>         ap_done;
    sc_signal<bool>         ap_idle;
    sc_signal<bool>         ap_ready;
    sc_signal<sc_uint<4> >  Xout;
    sc_signal<sc_uint<4> >  Yout;
    sc_signal<bool>         Vld;

#ifdef EMULATED_CO_SIM
    // Signal for EMU's outputs
#endif
    Vfir_pe*                   u_Vfir_pe;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    SC_CTOR(sc_fir_pe_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        // Instaltiate DUT: "Vfir_pe"
        u_Vfir_pe = new Vfir_pe("u_Vfir_pe");
        // Binding input ports
        u_Vfir_pe->ap_clk(ap_clk);
        u_Vfir_pe->ap_rst(ap_rst);
        u_Vfir_pe->ap_start(ap_start);
        u_Vfir_pe->Cin(Cin);
        u_Vfir_pe->Xin(Xin);
        u_Vfir_pe->Yin(Yin);
        u_Vfir_pe->Rdy(Rdy);
        // Binding output ports
        u_Vfir_pe->ap_done(ap_done);
        u_Vfir_pe->ap_idle(ap_idle);
        u_Vfir_pe->ap_ready(ap_ready);
        u_Vfir_pe->Xout(Xout);
        u_Vfir_pe->Yout(Yout);
        u_Vfir_pe->Vld(Vld);

#ifdef EMULATED_CO_SIM
#endif

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir_pe_tb");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, ap_clk, "ap_clk");
        sc_trace(fp, ap_rst, "ap_rst");
        sc_trace(fp, ap_start, "ap_start");
        sc_trace(fp, Cin, "Cin");
        sc_trace(fp, Xin, "Xin");
        sc_trace(fp, Yin, "Yin");
        sc_trace(fp, Rdy, "Rdy");
        sc_trace(fp, ap_done, "ap_done");
        sc_trace(fp, ap_idle, "ap_idle");
        sc_trace(fp, ap_ready, "ap_ready");
        sc_trace(fp, Xout, "Xout");
        sc_trace(fp, Yout, "Yout");
        sc_trace(fp, Vld, "Vld");
        #ifdef EMULATED_CO_SIM
        #endif
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_Vfir_pe->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vfir_pe.vcd");
#endif
    }
    
    ~sc_fir_pe_TB(void)
    {
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
