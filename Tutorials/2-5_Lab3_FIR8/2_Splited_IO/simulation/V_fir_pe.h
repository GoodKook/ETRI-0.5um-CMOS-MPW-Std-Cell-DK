/**********************************************************************
Filename: sc_fir_pe.h
Purpose : Verilated PE of Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _V_FIR_PE_H_
#define _V_FIR_PE_H_

#include <systemc.h>
#include "./obj_dir/Vfir_pe.h"

SC_MODULE(V_fir_pe)
{
    sc_in<bool>             clk;
    sc_in<bool>             Rdy;
    sc_out<bool>            Vld;
    sc_in<sc_uint<8> >      Cin;
    sc_in<sc_uint<4> >      Xin;
    sc_out<sc_uint<4> >     Xout;
    sc_in<sc_uint<4> >      Yin;
    sc_out<sc_uint<4> >     Yout;

    Vfir_pe*            u_Vfir_pe;
    sc_signal<uint32_t> _Cin;
    sc_signal<uint32_t> _Xin;
    sc_signal<uint32_t> _Xout;
    sc_signal<uint32_t> _Yin;
    sc_signal<uint32_t> _Yout;
    sc_signal<bool>     _Rdy;
    sc_signal<bool>     _Vld;
  
    void pe_method(void)
    {
        _Cin = (uint32_t)Cin.read();
        _Xin = (uint32_t)Xin.read();
        _Yin = (uint32_t)Yin.read();
        _Rdy = Rdy.read();

        Xout.write(sc_uint<4>(_Xout));
        Yout.write(sc_uint<4>(_Yout));
        Vld.write(_Vld);
    }

    SC_CTOR(V_fir_pe):
        clk("clk"),
        Rdy("Rdy"), _Rdy("_Rdy"),
        Vld("Vld"), _Vld("_Vld"),
        Cin("Cin"), _Cin("_Cin"),
        Xin("Xin"), _Xin("_Xin"),
        Xout("Xout"), _Xout("_Xout"),
        Yin("Yin"), _Yin("_Yin"),
        Yout("Yout"), _Yout("_Yout")
    {
        SC_METHOD(pe_method);
        sensitive << clk << Cin << Xin << Yin << Rdy;
        
        // Instantiate Verilated PE
        u_Vfir_pe = new Vfir_pe("u_Vfir_pe");
        u_Vfir_pe->clk(clk);
        u_Vfir_pe->Cin(_Cin);
        u_Vfir_pe->Xin(_Xin);
        u_Vfir_pe->Xout(_Xout);
        u_Vfir_pe->Yin(_Yin);
        u_Vfir_pe->Yout(_Yout);
        u_Vfir_pe->Rdy(_Rdy);
        u_Vfir_pe->Vld(_Vld);
    }
    
    ~V_fir_pe(void)
    {
    }
};

#endif
