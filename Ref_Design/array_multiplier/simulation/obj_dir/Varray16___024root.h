// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design internal header
// See Varray16.h for the primary calling header

#ifndef VERILATED_VARRAY16___024ROOT_H_
#define VERILATED_VARRAY16___024ROOT_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"
class Varray16_array8;


class Varray16__Syms;

class alignas(VL_CACHE_LINE_BYTES) Varray16___024root final : public VerilatedModule {
  public:
    // CELLS
    Varray16_array8* __PVT__array16__DOT__z1;
    Varray16_array8* __PVT__array16__DOT__z2;
    Varray16_array8* __PVT__array16__DOT__z3;
    Varray16_array8* __PVT__array16__DOT__z4;

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __VactContinue;
    SData/*15:0*/ __Vcellinp__array16__b;
    SData/*15:0*/ __Vcellinp__array16__a;
    IData/*31:0*/ __VactIterCount;
    sc_core::sc_in<uint32_t> a;
    sc_core::sc_in<uint32_t> b;
    sc_core::sc_out<uint32_t> c;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<0> __VactTriggered;
    VlTriggerVec<0> __VnbaTriggered;

    // INTERNAL VARIABLES
    Varray16__Syms* const vlSymsp;

    // CONSTRUCTORS
    Varray16___024root(Varray16__Syms* symsp, const char* v__name);
    ~Varray16___024root();
    VL_UNCOPYABLE(Varray16___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
