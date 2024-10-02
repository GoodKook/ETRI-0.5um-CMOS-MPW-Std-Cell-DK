/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: ALU_wrapper.h
Purpose: SC wrapper for Verilog ALU8
Revision History: Feb, 2024
*******************************************************************************/
#ifndef _ALU_WRAPPER_H_
#define _ALU_WRAPPER_H_

#include "systemc.h"

/*******************************************************************************
Purpose: SystemC wrapper for ALU8
*******************************************************************************/
class ALU_wrapper : public sc_foreign_module
{
public:
    sc_in<bool>         clk;
    sc_in<bool>         reset;
    sc_in<sc_bv<8> >    ABCmd_i;
    sc_in<bool>         LoadA_i;
    sc_in<bool>         LoadB_i;
    sc_in<bool>         LoadCmd_i;
    sc_out<sc_bv<8> >   ACC_o;
    sc_out<bool>        Done_o;

    ALU_wrapper(sc_module_name nm) : sc_foreign_module(nm, "ALU_wrapper"),
        clk("clk"),
        reset("reset"),
        ABCmd_i("ABCmd_i"),
        LoadA_i("LoadA_i"),
        LoadB_i("LoadB_i"),
        LoadCmd_i("LoadCmd_i"),
        ACC_o("ACC_o"),
        Done_o("Done_o")
    {
    }
    
    ~ALU_wrapper()
    {}
};

#endif
