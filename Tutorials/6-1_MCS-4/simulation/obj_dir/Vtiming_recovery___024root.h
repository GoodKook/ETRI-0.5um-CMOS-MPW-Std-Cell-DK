// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtiming_recovery.h for the primary calling header

#ifndef VERILATED_VTIMING_RECOVERY___024ROOT_H_
#define VERILATED_VTIMING_RECOVERY___024ROOT_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"


class Vtiming_recovery__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtiming_recovery___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ __Vcellinp__timing_recovery__sysclk;
    CData/*0:0*/ __Vcellout__timing_recovery__x32;
    CData/*0:0*/ __Vcellout__timing_recovery__x31;
    CData/*0:0*/ __Vcellout__timing_recovery__x22;
    CData/*0:0*/ __Vcellout__timing_recovery__x21;
    CData/*0:0*/ __Vcellout__timing_recovery__x12;
    CData/*0:0*/ __Vcellout__timing_recovery__x11;
    CData/*0:0*/ __Vcellout__timing_recovery__m22;
    CData/*0:0*/ __Vcellout__timing_recovery__m21;
    CData/*0:0*/ __Vcellout__timing_recovery__m12;
    CData/*0:0*/ __Vcellout__timing_recovery__m11;
    CData/*0:0*/ __Vcellout__timing_recovery__a32;
    CData/*0:0*/ __Vcellout__timing_recovery__a31;
    CData/*0:0*/ __Vcellout__timing_recovery__a22;
    CData/*0:0*/ __Vcellout__timing_recovery__a21;
    CData/*0:0*/ __Vcellout__timing_recovery__a12;
    CData/*0:0*/ __Vcellout__timing_recovery__a11;
    CData/*0:0*/ __Vcellinp__timing_recovery__sync;
    CData/*0:0*/ __Vcellinp__timing_recovery__clk2;
    CData/*0:0*/ __Vcellinp__timing_recovery__clk1;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP____Vcellinp__timing_recovery__sysclk__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VactIterCount;
    sc_core::sc_in<bool> sysclk;
    sc_core::sc_in<bool> clk1;
    sc_core::sc_in<bool> clk2;
    sc_core::sc_in<bool> sync;
    sc_core::sc_out<bool> a11;
    sc_core::sc_out<bool> a12;
    sc_core::sc_out<bool> a21;
    sc_core::sc_out<bool> a22;
    sc_core::sc_out<bool> a31;
    sc_core::sc_out<bool> a32;
    sc_core::sc_out<bool> m11;
    sc_core::sc_out<bool> m12;
    sc_core::sc_out<bool> m21;
    sc_core::sc_out<bool> m22;
    sc_core::sc_out<bool> x11;
    sc_core::sc_out<bool> x12;
    sc_core::sc_out<bool> x21;
    sc_core::sc_out<bool> x22;
    sc_core::sc_out<bool> x31;
    sc_core::sc_out<bool> x32;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtiming_recovery__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtiming_recovery___024root(Vtiming_recovery__Syms* symsp, const char* v__name);
    ~Vtiming_recovery___024root();
    VL_UNCOPYABLE(Vtiming_recovery___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
