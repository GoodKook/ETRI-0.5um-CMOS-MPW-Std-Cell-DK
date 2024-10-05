// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Varray16.h for the primary calling header

#include "Varray16__pch.h"
#include "Varray16__Syms.h"
#include "Varray16___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Varray16___024root___dump_triggers__stl(Varray16___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Varray16___024root___eval_triggers__stl(Varray16___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Varray16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Varray16___024root___eval_triggers__stl\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VstlTriggered.set(0U, (IData)(vlSelfRef.__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Varray16___024root___dump_triggers__stl(vlSelf);
    }
#endif
}

void Varray16___024root___ico_sequent__TOP__0(Varray16___024root* vlSelf);
void Varray16_array8___ico_sequent__TOP__array16__DOT__z2__0(Varray16_array8* vlSelf);
void Varray16_array8___ico_sequent__TOP__array16__DOT__z3__0(Varray16_array8* vlSelf);
void Varray16_array8___ico_sequent__TOP__array16__DOT__z4__0(Varray16_array8* vlSelf);
void Varray16_array8___ico_sequent__TOP__array16__DOT__z1__0(Varray16_array8* vlSelf);
void Varray16___024root___ico_sequent__TOP__1(Varray16___024root* vlSelf);

VL_ATTR_COLD void Varray16___024root___eval_stl(Varray16___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Varray16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Varray16___024root___eval_stl\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Varray16___024root___ico_sequent__TOP__0(vlSelf);
        Varray16_array8___ico_sequent__TOP__array16__DOT__z2__0((&vlSymsp->TOP__array16__DOT__z2));
        Varray16_array8___ico_sequent__TOP__array16__DOT__z3__0((&vlSymsp->TOP__array16__DOT__z3));
        Varray16_array8___ico_sequent__TOP__array16__DOT__z4__0((&vlSymsp->TOP__array16__DOT__z4));
        Varray16_array8___ico_sequent__TOP__array16__DOT__z1__0((&vlSymsp->TOP__array16__DOT__z1));
        Varray16___024root___ico_sequent__TOP__1(vlSelf);
    }
}
