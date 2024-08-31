/**********************************************************************
Co-Simulation of Verilated+SystemC VPI+iVerilog
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
    sc_in<bool>             clk;
    sc_in<sc_uint<4> >      eXout;
    sc_in<sc_uint<4> >      eYout;
    sc_in<bool>             eVld;
    sc_out<sc_uint<4> >     eXin;
    sc_out<sc_uint<4> >     eYin;
    sc_out<bool>            eRdy;

    sc_signal<sc_uint<4> >  Xin;
    sc_signal<sc_uint<4> >  Yin;
    sc_signal<bool>         Rdy;

    sc_fir8*                u_sc_fir8;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_uint<8>  x[F_SAMPLE];    // Time seq. input
    sc_uint<16> y[F_SAMPLE];    // Filter output

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_fir8_tb): clk("clk")
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;
        
        // Instaltiate FIR8
        u_sc_fir8 = new sc_fir8("u_sc_fir8");
        u_sc_fir8->clk(clk);
        u_sc_fir8->Xin(Xin);
        u_sc_fir8->Yin(Yin);
        u_sc_fir8->Rdy(Rdy);
        u_sc_fir8->Xout(eXin);
        u_sc_fir8->Yout(eYin);
        u_sc_fir8->Vld(eRdy);

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_fir8_tb");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, Xin,   "Xin");
        sc_trace(fp, Yin,   "Yin");
        sc_trace(fp, Rdy,   "Rdy");
        sc_trace(fp, eXin,  "eXin");
        sc_trace(fp, eYin,  "eYin");
        sc_trace(fp, eRdy,  "eRdy");
        sc_trace(fp, eXout, "eXout");
        sc_trace(fp, eYout, "eYout");
        sc_trace(fp, eVld,  "eVld");
    }
    
    ~sc_fir8_tb(void)
    {
    }
};

#endif