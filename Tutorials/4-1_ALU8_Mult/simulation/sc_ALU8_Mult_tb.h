/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_ALU8_Mult_tb.h
Purpose: Test Top for 8-bit ALU8_Mult
Revision History: Dec 15 2023,
        Feb. 2024, Multiplier, FSM for I/O
        Feb. 2025
*******************************************************************************/
#ifndef _SC_ALU8_MULT_TB_H_
#define _SC_ALU8_MULT_TB_H_

#include "VALU8_Mult.h"
#include "sc_gen_test.h"
#include "sc_monitor.h"

#include <verilated_vcd_sc.h>

SC_MODULE(sc_ALU8_Mult_tb)
{
    sc_clock            clk;
    sc_signal<bool>     reset;
    sc_signal<uint32_t> ABCmd_i;    // 8-bit
    sc_signal<bool>     LoadA_i;
    sc_signal<bool>     LoadB_i;
    sc_signal<bool>     LoadCmd_i;
    sc_signal<bool>     MulL_i;
    sc_signal<bool>     MulH_i;
    sc_signal<bool>     Flag_i;
    sc_signal<uint32_t> ACC_o;  // 8-bit

    // Verilated DUT
    VALU8_Mult*   u_ALU8_Mult;

    // for Testbench
    sc_Gen_Test*    u_sc_Gen_Test;
    sc_Monitor*     u_sc_Monitor;

    sc_trace_file*  fp;     // SystemC Trace VCD file
    VerilatedVcdSc* tfp;    // Verilated Trace

    sc_signal<sc_uint<8> > ABCmd_i_n8;
    sc_signal<sc_uint<8> > ACC_o_n8;

    void rtl_bitwidth()
    {
        ABCmd_i_n8.write(sc_uint<8>(ABCmd_i));
        ACC_o_n8.write(sc_uint<8>(ACC_o));
    }

    SC_CTOR(sc_ALU8_Mult_tb) :   // Constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false),
        reset("reset"),
        ABCmd_i("ABCmd_i"),
        LoadA_i("LoadA_i"),
        LoadB_i("LoadB_i"),
        LoadCmd_i("LoadCmd_i"),
        MulL_i("MulL_i"),
        MulH_i("MulH_i"),
        Flag_i("Flag_i"),
        ACC_o("ACC_o")
    {
        SC_METHOD(rtl_bitwidth);
        sensitive << ABCmd_i << ACC_o;
        
        // DUT Instantiation
        u_ALU8_Mult = new VALU8_Mult("u_ALU8_Mult");
        // Binding
        u_ALU8_Mult->clk(clk);
        u_ALU8_Mult->reset(reset);
        u_ALU8_Mult->ABCmd_i(ABCmd_i);
        u_ALU8_Mult->LoadA_i(LoadA_i);
        u_ALU8_Mult->LoadB_i(LoadB_i);
        u_ALU8_Mult->LoadCmd_i(LoadCmd_i);
        u_ALU8_Mult->MulL_i(MulL_i);
        u_ALU8_Mult->MulH_i(MulH_i);
        u_ALU8_Mult->Flag_i(Flag_i);
        u_ALU8_Mult->ACC_o(ACC_o);

        u_sc_Gen_Test = new sc_Gen_Test("u_sc_Gen_Test");
        u_sc_Gen_Test->clk(clk);
        u_sc_Gen_Test->reset(reset);
        u_sc_Gen_Test->ABCmd(ABCmd_i);
        u_sc_Gen_Test->LoadA(LoadA_i);
        u_sc_Gen_Test->LoadB(LoadB_i);
        u_sc_Gen_Test->LoadCmd(LoadCmd_i);
        u_sc_Gen_Test->MulL(MulL_i);
        u_sc_Gen_Test->MulH(MulH_i);
        u_sc_Gen_Test->Flag(Flag_i);
        
        u_sc_Monitor = new sc_Monitor("u_sc_Monitor");
        u_sc_Monitor->clk(clk);
        u_sc_Monitor->reset(reset);
        u_sc_Monitor->ABCmd(ABCmd_i);
        u_sc_Monitor->LoadA(LoadA_i);
        u_sc_Monitor->LoadB(LoadB_i);
        u_sc_Monitor->LoadCmd(LoadCmd_i);
        u_sc_Monitor->MulL(MulL_i);
        u_sc_Monitor->MulH(MulH_i);
        u_sc_Monitor->Flag(Flag_i);
        u_sc_Monitor->ACC(ACC_o);

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_VALU8_Mult_tb");
        fp->set_time_unit(1, SC_PS);
        sc_trace(fp, clk, "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, ABCmd_i_n8, "ABCmd_i");
        sc_trace(fp, LoadA_i, "LoadA_i");
        sc_trace(fp, LoadB_i, "LoadB_i");
        sc_trace(fp, LoadCmd_i, "LoadCmd_i");
        sc_trace(fp, MulL_i, "MulL_i");
        sc_trace(fp, MulH_i, "MulH_i");
        sc_trace(fp, Flag_i, "Flag_i");
        sc_trace(fp, ACC_o_n8, "ACC_o");

        sc_trace(fp, u_sc_Monitor->regOP, "regOP");
        sc_trace(fp, u_sc_Monitor->regFLAG, "regFLAG");
        sc_trace(fp, u_sc_Monitor->regMUL, "regMUL");
    	sc_trace(fp, u_sc_Monitor->rA, "rA");
    	sc_trace(fp, u_sc_Monitor->rB, "rB");
    	sc_trace(fp, u_sc_Monitor->rCmd, "rCmd");
    	sc_trace(fp, u_sc_Monitor->rACC, "rACC");

        // Trace Verilated Verilog integnals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_ALU8_Mult->trace(tfp,2);  // Trace level of hierarchy=2
    }

    // Destructor
    ~sc_ALU8_Mult_tb()
    {}

};

#endif // _SC_ALU8_MULT_TB_H_
