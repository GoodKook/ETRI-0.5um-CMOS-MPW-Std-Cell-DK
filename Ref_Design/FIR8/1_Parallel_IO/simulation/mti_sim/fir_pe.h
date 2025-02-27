/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: fir_pe.h
Purpose: SC wrapper for Verilog fir_pe
Revision History: Mar, 2024
*******************************************************************************/
#ifndef _FIR_PE_H_
#define _FIR_PE_H_

#include "systemc.h"

/*******************************************************************************
Purpose: SystemC wrapper for Verilog fir_pe.v
*******************************************************************************/
class fir_pe : public sc_foreign_module
{
public:
    sc_in<bool>         clk;
    sc_in<sc_uint<8> >    Cin;
    sc_in<sc_uint<8> >    Xin;
    sc_out<sc_uint<8> >   Xout;
    sc_in<sc_uint<16> >   Yin;
    sc_out<sc_uint<16> >  Yout;

    fir_pe(sc_module_name nm) : sc_foreign_module(nm, "fir_pe"),
        clk("clk"),
        Cin("Cin"),
        Xin("Xin"),
        Xout("Xout"),
        Yin("Yin"),
        Yout("Yout")
    {
    }
    
    ~fir_pe()
    {}
};

#endif
