/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: VALU_wrapper.h
Purpose: SC wrapper for Verilog ALU8
Revision History: Feb. 2024
*******************************************************************************/
#ifndef _VALU_WRAPPER_H_
#define _VALU_WRAPPER_H_

#include "systemc.h"
#include "ALU_wrapper.h"

/*******************************************************************************
Purpose: SystemC interface wrapper compatible with VERILATOR generated SC module
*******************************************************************************/
SC_MODULE(VALU_wrapper)
{
    sc_in<bool>         clk;
    sc_in<bool>         reset;
    sc_in<uint32_t>     ABCmd_i;
    sc_in<bool>         LoadA_i;
    sc_in<bool>         LoadB_i;
    sc_in<bool>         LoadCmd_i;
    sc_out<uint32_t>    ACC_o;
    sc_out<bool>        Done_o;

    sc_signal<bool>         _clk;
    sc_signal<bool>         _reset;
    sc_signal<sc_bv<8> >    _ABCmd_i;
    sc_signal<sc_bv<8> >    _ACC_o;
    sc_signal<bool>         _LoadA_i;
    sc_signal<bool>         _LoadB_i;
    sc_signal<bool>         _LoadCmd_i;
    sc_signal<bool>         _Done_o;

    ALU_wrapper*   u_ALU_wrapper;

    void eval()
    {
        _clk = clk.read();
        _reset = reset.read();

        _ABCmd_i   = (sc_bv<8>)ABCmd_i.read();
        _LoadA_i   = LoadA_i;
        _LoadB_i   = LoadB_i;
        _LoadCmd_i = LoadCmd_i;
        
        ACC_o.write(sc_uint<8>(_ACC_o));
        Done_o.write(_Done_o);
    }
    
    SC_CTOR(VALU_wrapper) : // constructor
        clk("clk"),
        reset("reset"),
        ABCmd_i("ABCmd_i"),
        ACC_o("ACC_o"),
        LoadA_i("LoadA_i"),
        LoadB_i("LoadB_i"),
        LoadCmd_i("LoadCmd_i"),
        Done_o("Done_o")
    {
        SC_METHOD(eval);
        sensitive << clk << reset;
        sensitive << ABCmd_i << LoadA_i << LoadB_i << LoadCmd_i;

        // Verilog model instantiation
        u_ALU_wrapper = new ALU_wrapper("u_ALU_wrapper");
        // Binding
        u_ALU_wrapper->clk(_clk);
        u_ALU_wrapper->reset(_reset);
        u_ALU_wrapper->ABCmd_i(_ABCmd_i);
        u_ALU_wrapper->ACC_o(_ACC_o);
        u_ALU_wrapper->LoadA_i(_LoadA_i);
        u_ALU_wrapper->LoadB_i(_LoadB_i);
        u_ALU_wrapper->LoadCmd_i(_LoadCmd_i);
        u_ALU_wrapper->Done_o(_Done_o);
    }
};

#endif
