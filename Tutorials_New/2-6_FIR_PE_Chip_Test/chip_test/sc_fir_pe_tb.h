/**********************************************************************
Filename: sc_fir_pe_tb.h
Purpose : Testbench
          Chip Test of FIR PE (MyChip 2024-2)
Author  : goodkook@gmail.com
History : Jan. 2025, First release
***********************************************************************/

#ifndef _SC_FIR_PE_TB_H_
#define  _SC_FIR_PE_TB_H_

#include <systemc.h>
#include "E_fir_pe.h"

SC_MODULE(sc_fir_pe_tb)
{
    sc_clock                clk;
    sc_signal<sc_uint<7> >  Cin;
    sc_signal<sc_uint<4> >  Xin;
    sc_signal<sc_uint<4> >  Xout;
    sc_signal<sc_uint<4> >  Yin;
    sc_signal<sc_uint<4> >  Yout;
    sc_signal<bool>         Vld;
    sc_signal<bool>         Rdy;

    E_fir_pe*               u_E_fir_pe;
    sc_signal<uint8_t>      _Cin[4];
    sc_signal<uint8_t>      _Xin[4];
    sc_signal<uint16_t>     _Yin[4];

    // Test utilities
    void Test_Gen(void);
    void Test_Mon(void);

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_fir_pe_tb):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false),
        Vld("Vld"),
        Rdy("Rdy"),
        Xin("Xin"),
        Xout("Xout"),
        Yin("Yin"),
        Yout("Yout")
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;
        
        // Instaltiate FIR8
        u_E_fir_pe = new E_fir_pe("u_E_fir_pe");
        u_E_fir_pe->clk(clk);
        u_E_fir_pe->Cin(Cin);
        u_E_fir_pe->Xin(Xin);
        u_E_fir_pe->Xout(Xout);
        u_E_fir_pe->Yin(Yin);
        u_E_fir_pe->Yout(Yout);
        u_E_fir_pe->Rdy(Rdy);
        u_E_fir_pe->Vld(Vld);

        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir_pe_tb");
        sc_trace(fp, clk, "clk");
        sc_trace(fp, Cin,  "Cin");
        sc_trace(fp, Xin,  "Xin");
        sc_trace(fp, Xout, "Xout");
        sc_trace(fp, Yin,  "Yin");
        sc_trace(fp, Yout, "Yout");
        sc_trace(fp, Rdy,  "Rdy");
        sc_trace(fp, Vld,  "Vld");
    }
    
    ~sc_fir_pe_tb(void)
    {
    }
};

#endif

