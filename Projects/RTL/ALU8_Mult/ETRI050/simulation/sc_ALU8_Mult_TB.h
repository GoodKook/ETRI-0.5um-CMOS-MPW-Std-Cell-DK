/**********************************************************************
Filename: sc_ALU8_Mult_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_ALU8_Mult_TB_H_
#define _SC_ALU8_Mult_TB_H_

#include <systemc.h>
#include <stdio.h>

SC_MODULE(sc_ALU8_Mult_TB)
{
    // Signal for DUT's inputs
    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<bool>         LoadA_i;
    sc_signal<bool>         LoadB_i;
    sc_signal<bool>         LoadCmd_i;
    sc_signal<sc_uint<8> >  ABCmd_i;
    // Signal for DUT's outputs
    sc_signal<sc_uint<8> >  ACC_o;
    sc_signal<bool>         Done_o;

    sc_signal<bool>         sc_Stopped;

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

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_ALU8_Mult_TB):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;

        sc_Stopped.write(false);
        
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
    }
    
    ~sc_ALU8_Mult_TB(void)
    {
    }
};

#endif
