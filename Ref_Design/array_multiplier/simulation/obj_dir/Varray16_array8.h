// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design internal header
// See Varray16.h for the primary calling header

#ifndef VERILATED_VARRAY16_ARRAY8_H_
#define VERILATED_VARRAY16_ARRAY8_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"


class Varray16__Syms;

class alignas(VL_CACHE_LINE_BYTES) Varray16_array8 final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(a,7,0);
    VL_IN8(b,7,0);
    CData/*0:0*/ z2__DOT__z1__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z2__DOT__z1__DOT____Vcellinp__z2____pinNumber1;
    CData/*0:0*/ z2__DOT__z2__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z2__DOT__z2__DOT____Vcellinp__z2____pinNumber1;
    CData/*1:0*/ z2__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2;
    CData/*0:0*/ z2__DOT__z3__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z2__DOT__z3__DOT____Vcellinp__z2____pinNumber1;
    CData/*1:0*/ z2__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2;
    CData/*0:0*/ z2__DOT__z4__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z2__DOT__z4__DOT____Vcellinp__z2____pinNumber1;
    CData/*1:0*/ z2__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2;
    CData/*0:0*/ z3__DOT__z1__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z3__DOT__z1__DOT____Vcellinp__z2____pinNumber1;
    CData/*0:0*/ z3__DOT__z2__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z3__DOT__z2__DOT____Vcellinp__z2____pinNumber1;
    CData/*1:0*/ z3__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2;
    CData/*0:0*/ z3__DOT__z3__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z3__DOT__z3__DOT____Vcellinp__z2____pinNumber1;
    CData/*1:0*/ z3__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2;
    CData/*0:0*/ z3__DOT__z4__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z3__DOT__z4__DOT____Vcellinp__z2____pinNumber1;
    CData/*1:0*/ z3__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2;
    CData/*0:0*/ z4__DOT__z1__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z4__DOT__z1__DOT____Vcellinp__z2____pinNumber1;
    CData/*0:0*/ z4__DOT__z2__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z4__DOT__z2__DOT____Vcellinp__z2____pinNumber1;
    CData/*1:0*/ z4__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2;
    CData/*0:0*/ z4__DOT__z3__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z4__DOT__z3__DOT____Vcellinp__z2____pinNumber1;
    CData/*1:0*/ z4__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2;
    CData/*0:0*/ z4__DOT__z4__DOT____Vcellout__z1____pinNumber4;
    CData/*0:0*/ z4__DOT__z4__DOT____Vcellinp__z2____pinNumber1;
    CData/*1:0*/ z4__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2;
    CData/*5:0*/ __VdfgRegularize_h5bb319d4_0_0;
    CData/*1:0*/ __VdfgRegularize_h5bb319d4_0_5;
    CData/*1:0*/ __VdfgRegularize_h5bb319d4_0_6;
    CData/*1:0*/ __VdfgRegularize_h5bb319d4_0_7;
    CData/*1:0*/ __VdfgRegularize_h5bb319d4_0_8;
    VL_OUT16(c,15,0);

    // INTERNAL VARIABLES
    Varray16__Syms* const vlSymsp;

    // CONSTRUCTORS
    Varray16_array8(Varray16__Syms* symsp, const char* v__name);
    ~Varray16_array8();
    VL_UNCOPYABLE(Varray16_array8);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
