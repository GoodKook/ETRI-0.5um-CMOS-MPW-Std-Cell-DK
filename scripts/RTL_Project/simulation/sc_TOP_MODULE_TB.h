/**********************************************************************
Filename: sc_TOP_MODULE_TB.h
Purpose : Core of 8-Tab Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_TOP_MODULE_TB_H_
#define  _SC_TOP_MODULE_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "ETOP_MODULE.h"
#endif

#include "TOP_MODULE.h"     // for Filter Tab. Coeff (See ../c_untimed model)
#include "VTOP_MODULE.h"    // Verilated RTL

#define N_PE_ARRAY  8

SC_MODULE(sc_TOP_MODULE_TB)
{
    sc_clock                clk;
    sc_signal<bool>         Rdy;
    sc_signal<bool>         Vld;
    sc_signal<sc_uint<4> >  Xin;
    sc_signal<sc_uint<4> >  Xout;
    sc_signal<sc_uint<4> >  Yin;
    sc_signal<sc_uint<4> >  Yout;

    VTOP_MODULE*    u_VTOP_MODULE[N_PE_ARRAY];
#ifdef EMULATED_CO_SIM
    ETOP_MODULE*    u_ETOP_MODULE;
#endif

    // Signal Channels connecting PEs
    sc_signal<sc_uint<4> >  X[N_PE_ARRAY-1];    // X-input
    sc_signal<sc_uint<4> >  Y[N_PE_ARRAY-1];    // Accumulated
    sc_signal<sc_uint<6> >  C[N_PE_ARRAY];      // Filter-Tabs Coeff
    sc_signal<bool>         Valid[N_PE_ARRAY];

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_uint<8>  x[F_SAMPLE];    // Time seq. input
    sc_uint<16> y[F_SAMPLE];    // Filter output

    SC_CTOR(sc_TOP_MODULE_TB):   // Constructor
    clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false),
    Rdy("Rdy"), Vld("Vld"), Xin("Xin"), Xout("Xout"), Yin("Yin"), Yout("Yout")
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;

        // Instaltiate PE & Build array
        char    szPeName[16];
        for (int i=0; i<N_PE_ARRAY-1; i++)
        {
            sprintf(szPeName, "u_TOP_MODULE_%d", i);
            u_VTOP_MODULE[i] = new VTOP_MODULE(szPeName);
            C[i].write(sc_uint<8>(filter_taps[i])); // Filter Coeff.
            u_VTOP_MODULE[i]->Cin(C[i]);
            u_VTOP_MODULE[i]->clk(clk);
        }
        // 0-th PE
        u_VTOP_MODULE[0]->Xin(Xin);
        u_VTOP_MODULE[0]->Xout(X[0]);
        u_VTOP_MODULE[0]->Yin(Yin);
        u_VTOP_MODULE[0]->Yout(Y[0]);
        u_VTOP_MODULE[0]->Rdy(Rdy);
        u_VTOP_MODULE[0]->Vld(Valid[0]);
        // Systolic Array
        for (int i=1; i<N_PE_ARRAY-1; i++)
        {
            u_VTOP_MODULE[i]->Xin(X[i-1]);
            u_VTOP_MODULE[i]->Xout(X[i]);
            u_VTOP_MODULE[i]->Yin(Y[i-1]);
            u_VTOP_MODULE[i]->Yout(Y[i]);
            u_VTOP_MODULE[i]->Rdy(Valid[i-1]);
            u_VTOP_MODULE[i]->Vld(Valid[i]);
        }
        // Last PE
#ifdef EMULATED_CO_SIM
        sprintf(szPeName, "u_TOP_MODULE_%d", N_PE_ARRAY-1);
        u_ETOP_MODULE = new ETOP_MODULE(szPeName);
        C[N_PE_ARRAY-1].write(sc_uint<8>(filter_taps[N_PE_ARRAY-1])); // Filter Coeff.
        u_ETOP_MODULE->Cin(C[N_PE_ARRAY-1]);
        u_ETOP_MODULE->clk(clk);

        u_ETOP_MODULE->Xin(X[N_PE_ARRAY-2]);
        u_ETOP_MODULE->Xout(Xout);
        u_ETOP_MODULE->Yin(Y[N_PE_ARRAY-2]);
        u_ETOP_MODULE->Yout(Yout);
        u_ETOP_MODULE->Rdy(Valid[N_PE_ARRAY-2]);
        u_ETOP_MODULE->Vld(Vld);
#else
        sprintf(szPeName, "u_TOP_MODULE_%d", N_PE_ARRAY-1);
        u_VTOP_MODULE[N_PE_ARRAY-1] = new VTOP_MODULE(szPeName);
        C[N_PE_ARRAY-1].write(sc_uint<8>(filter_taps[N_PE_ARRAY-1])); // Filter Coeff.
        u_VTOP_MODULE[N_PE_ARRAY-1]->Cin(C[N_PE_ARRAY-1]);
        u_VTOP_MODULE[N_PE_ARRAY-1]->clk(clk);

        u_VTOP_MODULE[N_PE_ARRAY-1]->Xin(X[N_PE_ARRAY-2]);
        u_VTOP_MODULE[N_PE_ARRAY-1]->Xout(Xout);
        u_VTOP_MODULE[N_PE_ARRAY-1]->Yin(Y[N_PE_ARRAY-2]);
        u_VTOP_MODULE[N_PE_ARRAY-1]->Yout(Yout);
        u_VTOP_MODULE[N_PE_ARRAY-1]->Rdy(Valid[N_PE_ARRAY-2]);
        u_VTOP_MODULE[N_PE_ARRAY-1]->Vld(Vld);
#endif

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_TOP_MODULE_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk, "clk");
        sc_trace(fp, Xin,  "Xin");
        sc_trace(fp, Xout, "Xout");
        sc_trace(fp, Yin,  "Yin");
        sc_trace(fp, Yout, "Yout");
        sc_trace(fp, Rdy,  "Rdy");
        sc_trace(fp, Vld,  "Vld");

        char szTrace[16];
        for (int i=0; i<N_PE_ARRAY-1; i++)
        {
            sprintf(szTrace, "X_%d", i);
            sc_trace(fp, X[i], szTrace);
            sprintf(szTrace, "Y_%d", i);
            sc_trace(fp, Y[i], szTrace);
            sprintf(szTrace, "Valid_%d", i);
            sc_trace(fp, Valid[i], szTrace);
        }
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        for (int i=0; i<N_PE_ARRAY-1; i++)
            u_VTOP_MODULE[i]->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("VTOP_MODULE.vcd");
#endif
    }
    
    ~sc_TOP_MODULE_TB(void)
    {
    }
};

#endif
