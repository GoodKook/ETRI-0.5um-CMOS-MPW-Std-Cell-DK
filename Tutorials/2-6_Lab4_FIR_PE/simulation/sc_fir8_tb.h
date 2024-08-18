/**********************************************************************
Filename: sc_fir8_tb.h
Purpose : Testbench of 8-Tab Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_FIR8_TB_H_
#define  _SC_FIR8_TB_H_

#include <systemc.h>
#include "sc_fir8.h"

SC_MODULE(sc_fir8_tb)
{
    sc_clock                clk;
    sc_signal<sc_uint<4> >  Xin;
    sc_signal<sc_uint<4> >  Xout;
    sc_signal<sc_uint<4> >  Yin;
    sc_signal<sc_uint<4> >  Yout;
    sc_signal<bool>         Vld;
    sc_signal<bool>         Rdy;
#ifdef EMULATED
    sc_signal<sc_uint<4> >     E_Xout;
    sc_signal<sc_uint<4> >     E_Yout;
    sc_signal<bool>            E_Vld;
#endif

    sc_fir8*                u_sc_fir8;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_uint<8>  x[F_SAMPLE];    // Time seq. input
    sc_uint<16> y[F_SAMPLE];    // Filter output
    
#ifdef  VCD_TRACE_FIR8_TB
    sc_trace_file* fp;  // VCD file
#endif

    SC_CTOR(sc_fir8_tb):
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
        u_sc_fir8 = new sc_fir8("u_sc_fir8");
        u_sc_fir8->clk(clk);
        u_sc_fir8->Xin(Xin);
        u_sc_fir8->Xout(Xout);
        u_sc_fir8->Yin(Yin);
        u_sc_fir8->Yout(Yout);
        u_sc_fir8->Rdy(Rdy);
        u_sc_fir8->Vld(Vld);
#ifdef EMULATED
        u_sc_fir8->E_Xout(E_Xout);
        u_sc_fir8->E_Yout(E_Yout);
        u_sc_fir8->E_Vld(E_Vld);
#endif

#ifdef VCD_TRACE_FIR8_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir8_tb");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk, "clk");
        sc_trace(fp, Xin,  "Xin");
        sc_trace(fp, Xout, "Xout");
        sc_trace(fp, Yin,  "Yin");
        sc_trace(fp, Yout, "Yout");
        sc_trace(fp, Rdy,  "Rdy");
        sc_trace(fp, Vld,  "Vld");
#endif
    }
    
    ~sc_fir8_tb(void)
    {
    }
};

#endif