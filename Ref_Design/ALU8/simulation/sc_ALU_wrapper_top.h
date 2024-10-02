/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_ALU_wrapper_top.h
Purpose: Test Top for 8-bit ALU_wrapper
Revision History: Dec 15 2023,
        Feb. 2024, Multiplier, FSM for I/O
*******************************************************************************/
#ifndef _SC_ALU_WRAPPER_TOP_H_
#define _SC_ALU_WRAPPER_TOP_H_

#include "VALU_wrapper.h"
#include "sc_gen_test.h"
#include "sc_monitor.h"

SC_MODULE(sc_ALU_wrapper_Top)
{
    sc_clock            clk;
    sc_signal<bool>     reset;
    sc_signal<uint32_t> ABCmd_i;
    sc_signal<bool>     LoadA_i;
    sc_signal<bool>     LoadB_i;
    sc_signal<bool>     LoadCmd_i;
    sc_signal<uint32_t> ACC_o;
    sc_signal<bool>     Done_o;

    // Verilated DUT
    VALU_wrapper*   u_ALU_wrapper;
    // for Testbench
    sc_Gen_Test*    u_sc_Gen_Test;
    sc_Monitor*     u_sc_Monitor;

    sc_trace_file* fp;  // VCD file
    sc_signal<sc_uint<8> > ABCmd_i_n8;
    sc_signal<sc_uint<8> > ACC_o_n8;
    void rtl_bitwidth()
    {
        ABCmd_i_n8.write(sc_uint<8>(ABCmd_i));
        ACC_o_n8.write(sc_uint<8>(ACC_o));
    }

    SC_CTOR(sc_ALU_wrapper_Top) :   // Constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false),
        reset("reset"),
        ABCmd_i("ABCmd_i"),
        LoadA_i("LoadA_i"),
        LoadB_i("LoadB_i"),
        LoadCmd_i("LoadCmd_i"),
        ACC_o("ACC_o"),
        Done_o("Done_o")
    {
        SC_METHOD(rtl_bitwidth);
        sensitive << ABCmd_i << ACC_o;
        
        // DUT Instantiation
        u_ALU_wrapper = new VALU_wrapper("u_ALU_wrapper");
        // Binding
        u_ALU_wrapper->clk(clk);
        u_ALU_wrapper->reset(reset);
        u_ALU_wrapper->ABCmd_i(ABCmd_i);
        u_ALU_wrapper->LoadA_i(LoadA_i);
        u_ALU_wrapper->LoadB_i(LoadB_i);
        u_ALU_wrapper->LoadCmd_i(LoadCmd_i);
        u_ALU_wrapper->ACC_o(ACC_o);
        u_ALU_wrapper->Done_o(Done_o);

        u_sc_Gen_Test = new sc_Gen_Test("u_sc_Gen_Test");
        u_sc_Gen_Test->clk(clk);
        u_sc_Gen_Test->reset(reset);
        u_sc_Gen_Test->ABCmd(ABCmd_i);
        u_sc_Gen_Test->LoadA(LoadA_i);
        u_sc_Gen_Test->LoadB(LoadB_i);
        u_sc_Gen_Test->LoadCmd(LoadCmd_i);
        
        u_sc_Monitor = new sc_Monitor("u_sc_Monitor");
        u_sc_Monitor->clk(clk);
        u_sc_Monitor->reset(reset);
        u_sc_Monitor->ABCmd(ABCmd_i);
        u_sc_Monitor->LoadA(LoadA_i);
        u_sc_Monitor->LoadB(LoadB_i);
        u_sc_Monitor->LoadCmd(LoadCmd_i);
        u_sc_Monitor->ACC(ACC_o);
        u_sc_Monitor->Done(Done_o);

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_VALU_wrapper");
        fp->set_time_unit(1, SC_PS);
        sc_trace(fp, clk, "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, ABCmd_i_n8, "ABCmd_i");
        sc_trace(fp, LoadA_i, "LoadA_i");
        sc_trace(fp, LoadB_i, "LoadB_i");
        sc_trace(fp, LoadCmd_i, "LoadCmd_i");
        sc_trace(fp, ACC_o_n8, "ACC_o");
        sc_trace(fp, Done_o, "Done_o");

        sc_trace(fp, u_sc_Monitor->regA, "regA");
        sc_trace(fp, u_sc_Monitor->regB, "regB");
        sc_trace(fp, u_sc_Monitor->regOP, "regOP");
        sc_trace(fp, u_sc_Monitor->regACC, "regACC");
        sc_trace(fp, u_sc_Monitor->regFLAG, "regFLAG");
        sc_trace(fp, u_sc_Monitor->regMUL, "regMUL");
        sc_trace(fp, u_sc_Monitor->cMUL, "cMUL");
        sc_trace(fp, u_sc_Monitor->cBCD, "cBCD");
        sc_trace(fp, u_sc_Monitor->cSHR, "cSHR");
        sc_trace(fp, u_sc_Monitor->cCI,  "cCI");
    }

    // Destructor
    ~sc_ALU_wrapper_Top()
    {}

};

#endif // _SC_ALU_WRAPPER_TOP_H_
