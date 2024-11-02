/**********************************************************************
Filename: sc_fir8.h
Purpose : Core of 8-Tab Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_FIR8_H_
#define  _SC_FIR8_H_

#include <systemc.h>

#ifdef VERILATED
#include "V_fir_pe.h"
#endif
#ifdef EMULATED
#include "E_fir_pe.h"
#endif
#ifdef MTI_SIM
#include "fir_pe.h"
#endif
#if !defined(VERILATED) && !defined(EMULATED) && !defined(MTI_SIM)
#error Specify PE model: VERILATED or EMULATED or MTI_SIM
#endif

#include "fir8.h"   // Filter Tab. Coeff

#define N_PE_ARRAY  8

SC_MODULE(sc_fir8)
{
    sc_in<bool>             clk;
    sc_in<bool>             Rdy;
    sc_out<bool>            Vld;
    sc_in<sc_uint<4> >      Xin;
    sc_out<sc_uint<4> >     Xout;
    sc_in<sc_uint<4> >      Yin;
    sc_out<sc_uint<4> >     Yout;
#ifdef EMULATED
    sc_out<sc_uint<4> >     E_Xout;
    sc_out<sc_uint<4> >     E_Yout;
    sc_out<bool>            E_Vld;
#endif

#ifdef VERILATED
    V_fir_pe*       u_fir_pe[N_PE_ARRAY];
#endif
#ifdef EMULATED
    E_fir_pe*       u_E_fir_pe;
#endif
#ifdef MTI_SIM
    fir_pe*         u_fir_pe[N_PE_ARRAY];
#endif

    sc_signal<sc_uint<4> >  X[N_PE_ARRAY-1];    // X-input
    sc_signal<sc_uint<4> >  Y[N_PE_ARRAY-1];    // Accumulated
    sc_signal<sc_uint<8> >  C[N_PE_ARRAY];      // Filter-Tabs Coeff
    sc_signal<bool>         Valid[N_PE_ARRAY];

#ifdef  VCD_TRACE_FIR8
    sc_trace_file* fp;  // VCD file
#endif

    SC_CTOR(sc_fir8):
        clk("clk"),
        Xin("Xin"),
        Xout("Xout"),
        Yin("Yin"),
        Yout("Yout")
    {
        // Instaltiate PE array
        char    szPeName[16];
        for (int i=0; i<N_PE_ARRAY; i++)
        {
            sprintf(szPeName, "u_PE_%d", i);
#ifdef VERILATED
            u_fir_pe[i] = new V_fir_pe(szPeName);
#endif
#ifdef MTI_SIM
            u_fir_pe[i] = new fir_pe(szPeName);
#endif
#if !defined(VERILATED) && !defined(EMULATED) && !defined(MTI_SIM)
#error fir_pe NOT defined
#endif
            C[i].write(sc_uint<8>(filter_taps[i]));
            u_fir_pe[i]->Cin(C[i]);
            u_fir_pe[i]->clk(clk);
        }
        // 0-th PE
        u_fir_pe[0]->Xin(Xin);
        u_fir_pe[0]->Xout(X[0]);
        u_fir_pe[0]->Yin(Yin);
        u_fir_pe[0]->Yout(Y[0]);
        u_fir_pe[0]->Rdy(Rdy);
        u_fir_pe[0]->Vld(Valid[0]);
        // Systolic Array
        for (int i=1; i<N_PE_ARRAY-1; i++)
        {
            u_fir_pe[i]->Xin(X[i-1]);
            u_fir_pe[i]->Xout(X[i]);
            u_fir_pe[i]->Yin(Y[i-1]);
            u_fir_pe[i]->Yout(Y[i]);
            u_fir_pe[i]->Rdy(Valid[i-1]);
            u_fir_pe[i]->Vld(Valid[i]);
        }
        // Last PE
        u_fir_pe[N_PE_ARRAY-1]->Xin(X[N_PE_ARRAY-2]);
        u_fir_pe[N_PE_ARRAY-1]->Xout(Xout);
        u_fir_pe[N_PE_ARRAY-1]->Yin(Y[N_PE_ARRAY-2]);
        u_fir_pe[N_PE_ARRAY-1]->Yout(Yout);
        u_fir_pe[N_PE_ARRAY-1]->Rdy(Valid[N_PE_ARRAY-2]);
        u_fir_pe[N_PE_ARRAY-1]->Vld(Vld);
#ifdef EMULATED
        // Emulated PE
        u_E_fir_pe = new E_fir_pe("u_Emul_PE");
        C[N_PE_ARRAY-1].write(sc_uint<8>(filter_taps[N_PE_ARRAY-1]));
        u_E_fir_pe->Cin(C[N_PE_ARRAY-1]);
        u_E_fir_pe->clk(clk);

        u_E_fir_pe->Xin(X[N_PE_ARRAY-2]);
        u_E_fir_pe->Xout(E_Xout);
        u_E_fir_pe->Yin(Y[N_PE_ARRAY-2]);
        u_E_fir_pe->Yout(E_Yout);
        u_E_fir_pe->Rdy(Valid[N_PE_ARRAY-2]);
        u_E_fir_pe->Vld(E_Vld);
#endif

#ifdef VCD_TRACE_FIR8
        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir8");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk, "clk");
        sc_trace(fp, Xin,  "Xin");
        sc_trace(fp, Xout, "Xout");
        sc_trace(fp, Yin,  "Yin");
        sc_trace(fp, Yout, "Yout");
        sc_trace(fp, Rdy,  "Rdy");
        sc_trace(fp, Vld,  "Vld");
#ifdef EMULATED
        sc_trace(fp, E_Xout, "E_Xout");
        sc_trace(fp, E_Yout, "E_Yout");
        sc_trace(fp, E_Vld,  "E_Vld");
#endif
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
    }
    
    ~sc_fir8(void)
    {
    }
};

#endif
