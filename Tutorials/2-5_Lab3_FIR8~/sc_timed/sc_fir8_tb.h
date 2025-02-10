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

#ifdef VERILATED_CO_SIM
#include "Vfir8.h"
#include <verilated_vcd_sc.h>
#endif

SC_MODULE(sc_fir8_tb)
{
    sc_clock                clk;
    sc_signal<sc_uint<8> >  Xin;
    sc_signal<sc_uint<8> >  Xout;
    sc_signal<sc_uint<16> > Yin;
    sc_signal<sc_uint<16> > Yout;

    sc_fir8*                u_sc_fir8;

#ifdef VERILATED_CO_SIM
    sc_signal<uint32_t>     V_Xin;
    sc_signal<uint32_t>     V_Xout;
    sc_signal<uint32_t>     V_Yin;
    sc_signal<uint32_t>     V_Yout;

    Vfir8*  u_Vfir8;
    VerilatedVcdSc* tfp;    // Verilator VCD
#endif


    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_uint<8>  x[F_SAMPLE];    // Time seq. input
    sc_uint<16> y[F_SAMPLE];    // Filter output
    
#ifdef  VCD_TRACE_FIR8_TB
    sc_trace_file* fp;  // VCD file
#endif

    SC_CTOR(sc_fir8_tb): clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
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

#ifdef VERILATED_CO_SIM
        u_Vfir8 = new Vfir8("u_Vfir8");
        u_Vfir8->clk(clk);
        u_Vfir8->Xin(V_Xin);
        u_Vfir8->Xout(V_Xout);
        u_Vfir8->Yin(V_Yin);
        u_Vfir8->Yout(V_Yout);

        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_Vfir8->trace(tfp, 3);  // Trace levels of hierarchy
        tfp->open("Vfir8.vcd");
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
#endif
    }
    
    ~sc_fir8_tb(void)
    {
    }
};

#endif