/**********************************************************************
Filename: sc_ALU8_Mult_TB.h
Purpose : Core of 8-Tab Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_ALU8_Mult_TB_H_
#define  _SC_ALU8_Mult_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "EALU8_Mult.h"
#endif

#ifdef EMULATED_CO_SIM
#include "EALU8_Mult.h"    // Verilated RTL
#else
#include "VALU8_Mult.h"    // Verilated RTL
#endif

SC_MODULE(sc_ALU8_Mult_TB)
{
    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<sc_uint<8> >  ABCmd_i;
    sc_signal<bool>         LoadA_i;
    sc_signal<bool>         LoadB_i;
    sc_signal<bool>         LoadCmd_i;
    sc_signal<sc_uint<8> >  ACC_o;
    sc_signal<bool>         Done_o;

#ifdef EMULATED_CO_SIM
    EALU8_Mult*    u_ALU8_Mult;
#else
    VALU8_Mult*    u_ALU8_Mult;
#endif

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    // Local Signals, used in the Monitor
    sc_signal<sc_uint<8> >      regA;
    sc_signal<sc_uint<8> >      regB;
    sc_signal<sc_uint<8> >      regACC;
    sc_signal<sc_uint<16> >     regMUL;

    sc_signal<sc_uint<8*4> >    regOP;
    sc_signal<sc_uint<8*5> >    regFLAG;

    sc_signal<bool>             cMUL;
    sc_signal<bool>             cBCD;
    sc_signal<bool>             cSHR;
    sc_signal<bool>             cCI;

    SC_CTOR(sc_ALU8_Mult_TB):   // Constructor
    clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;

#ifdef EMULATED_CO_SIM
        u_ALU8_Mult = new EALU8_Mult("u_EALU8_Mult");
#else
        u_ALU8_Mult = new VALU8_Mult("u_VALU8_Mult");
#endif
    u_ALU8_Mult->clk(clk);
    u_ALU8_Mult->reset(reset);
    u_ALU8_Mult->ABCmd_i(ABCmd_i);
    u_ALU8_Mult->LoadA_i(LoadA_i);
    u_ALU8_Mult->LoadB_i(LoadB_i);
    u_ALU8_Mult->LoadCmd_i(LoadCmd_i);
    u_ALU8_Mult->ACC_o(ACC_o);
    u_ALU8_Mult->Done_o(Done_o);

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_ALU8_Mult_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, reset,     "reset");
        sc_trace(fp, ABCmd_i,   "ABCmd_i");
        sc_trace(fp, LoadA_i,   "LoadA_i");
        sc_trace(fp, LoadB_i,   "LoadB_i");
        sc_trace(fp, LoadCmd_i, "LoadCmd_i");
        sc_trace(fp, ACC_o,     "ACC_o");
        sc_trace(fp, Done_o,    "Done_o");

        sc_trace(fp, regA,      "regA");
        sc_trace(fp, regB,      "regB");
        sc_trace(fp, regACC,    "regACC");
        sc_trace(fp, regMUL,    "regMUL");

        sc_trace(fp, regOP,     "regOP");
        sc_trace(fp, regFLAG,   "regFLAG");

        sc_trace(fp, cMUL,      "cMUL");
        sc_trace(fp, cBCD,      "cBCD");
        sc_trace(fp, cSHR,      "cSHR");
        sc_trace(fp, cCI,       "cCI");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_ALU8_Mult->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("ALU8_Mult.vcd");
#endif
    }
    
    ~sc_ALU8_Mult_TB(void)
    {
    }
};

#endif
