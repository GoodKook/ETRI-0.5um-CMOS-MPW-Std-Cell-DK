// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vfir_pe.h for the primary calling header

#ifndef VERILATED_VFIR_PE___024ROOT_H_
#define VERILATED_VFIR_PE___024ROOT_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"


class Vfir_pe__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vfir_pe___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ __Vcellinp__fir_pe__clk;
    CData/*0:0*/ __Vcellinp__fir_pe__Rdy;
    CData/*3:0*/ __Vcellinp__fir_pe__Yin;
    CData/*3:0*/ __Vcellinp__fir_pe__Xin;
    CData/*7:0*/ __Vcellinp__fir_pe__Cin;
    CData/*4:0*/ fir_pe__DOT__LoadCtl;
    CData/*3:0*/ fir_pe__DOT__XinL;
    CData/*3:0*/ fir_pe__DOT__XinH;
    CData/*3:0*/ fir_pe__DOT__Yin3;
    CData/*3:0*/ fir_pe__DOT__Yin2;
    CData/*3:0*/ fir_pe__DOT__Yin1;
    CData/*3:0*/ fir_pe__DOT__Yin0;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP____Vcellinp__fir_pe__clk__0;
    CData/*0:0*/ __VactContinue;
    SData/*15:0*/ fir_pe__DOT__y;
    SData/*15:0*/ fir_pe__DOT___y;
    IData/*31:0*/ __VactIterCount;
    sc_core::sc_in<bool> clk;
    sc_core::sc_in<uint32_t> Cin;
    sc_core::sc_in<uint32_t> Xin;
    sc_core::sc_out<uint32_t> Xout;
    sc_core::sc_in<uint32_t> Yin;
    sc_core::sc_out<uint32_t> Yout;
    sc_core::sc_in<bool> Rdy;
    sc_core::sc_out<bool> Vld;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vfir_pe__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vfir_pe___024root(Vfir_pe__Syms* symsp, const char* v__name);
    ~Vfir_pe___024root();
    VL_UNCOPYABLE(Vfir_pe___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
