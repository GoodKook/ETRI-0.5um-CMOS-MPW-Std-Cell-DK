// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Varray16.h for the primary calling header

#include "Varray16__pch.h"
#include "Varray16__Syms.h"
#include "Varray16___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Varray16___024root___dump_triggers__ico(Varray16___024root* vlSelf);
#endif  // VL_DEBUG

void Varray16___024root___eval_triggers__ico(Varray16___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Varray16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Varray16___024root___eval_triggers__ico\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VicoTriggered.set(0U, (IData)(vlSelfRef.__VicoFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Varray16___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

void Varray16___024root___ico_sequent__TOP__0(Varray16___024root* vlSelf);
void Varray16_array8___ico_sequent__TOP__array16__DOT__z2__0(Varray16_array8* vlSelf);
void Varray16_array8___ico_sequent__TOP__array16__DOT__z3__0(Varray16_array8* vlSelf);
void Varray16_array8___ico_sequent__TOP__array16__DOT__z4__0(Varray16_array8* vlSelf);
void Varray16_array8___ico_sequent__TOP__array16__DOT__z1__0(Varray16_array8* vlSelf);
void Varray16___024root___ico_sequent__TOP__1(Varray16___024root* vlSelf);

void Varray16___024root___eval_ico(Varray16___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Varray16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Varray16___024root___eval_ico\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        Varray16___024root___ico_sequent__TOP__0(vlSelf);
        Varray16_array8___ico_sequent__TOP__array16__DOT__z2__0((&vlSymsp->TOP__array16__DOT__z2));
        Varray16_array8___ico_sequent__TOP__array16__DOT__z3__0((&vlSymsp->TOP__array16__DOT__z3));
        Varray16_array8___ico_sequent__TOP__array16__DOT__z4__0((&vlSymsp->TOP__array16__DOT__z4));
        Varray16_array8___ico_sequent__TOP__array16__DOT__z1__0((&vlSymsp->TOP__array16__DOT__z1));
        Varray16___024root___ico_sequent__TOP__1(vlSelf);
    }
}

VL_INLINE_OPT void Varray16___024root___ico_sequent__TOP__1(Varray16___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Varray16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Varray16___024root___ico_sequent__TOP__1\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    VL_ASSIGN_SII(32,vlSelfRef.c, ((((0xffffU & (((0xfff0U 
                                                   & (((0xffU 
                                                        & (((0xfcU 
                                                             & (((0xfU 
                                                                  & (((((IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                        & (IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                       << 3U) 
                                                                      | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                           ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                          << 2U) 
                                                                         | ((2U 
                                                                             & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                                << 1U)) 
                                                                            | (1U 
                                                                               & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                                >> 0xeU) 
                                                                                & (IData)(vlSelfRef.__Vcellinp__array16__b)))))) 
                                                                     + 
                                                                     VL_SHIFTR_III(4,4,32, 
                                                                                ((((IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                                & (IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                                << 3U) 
                                                                                | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                                << 2U) 
                                                                                | (IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_6))), 2U))) 
                                                                 + 
                                                                 (((((IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                                     & (IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                                    << 3U) 
                                                                   | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                                        ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                                       << 2U) 
                                                                      | ((2U 
                                                                          & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                             << 1U)) 
                                                                         | (1U 
                                                                            & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                                >> 0xcU) 
                                                                               & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                                >> 2U)))))) 
                                                                  + 
                                                                  ((((IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                                     & (IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                                    << 5U) 
                                                                   | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                                        ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                                       << 4U) 
                                                                      | ((8U 
                                                                          & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z2.z2__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                             << 3U)) 
                                                                         | (4U 
                                                                            & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                                >> 0xcU) 
                                                                               & (IData)(vlSelfRef.__Vcellinp__array16__b)))))))) 
                                                                << 2U)) 
                                                            | (IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_6)) 
                                                           + 
                                                           VL_SHIFTR_III(8,8,32, 
                                                                         (((IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_0) 
                                                                           << 2U) 
                                                                          | (IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_5)), 4U))) 
                                                       + 
                                                       (((0xfcU 
                                                          & (((0xfU 
                                                               & (((((IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                     & (IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                    << 3U) 
                                                                   | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                        ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                       << 2U) 
                                                                      | ((2U 
                                                                          & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                             << 1U)) 
                                                                         | (1U 
                                                                            & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                                >> 0xaU) 
                                                                               & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                                >> 4U)))))) 
                                                                  + 
                                                                  VL_SHIFTR_III(4,4,32, 
                                                                                ((((IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                                & (IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                                << 3U) 
                                                                                | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                                << 2U) 
                                                                                | (IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_7))), 2U))) 
                                                              + 
                                                              (((((IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                                  & (IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                                 << 3U) 
                                                                | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                                     ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                                    << 2U) 
                                                                   | ((2U 
                                                                       & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                          << 1U)) 
                                                                      | (1U 
                                                                         & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                             >> 8U) 
                                                                            & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                               >> 6U)))))) 
                                                               + 
                                                               ((((IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                                  & (IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                                 << 5U) 
                                                                | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                                     ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                                    << 4U) 
                                                                   | ((8U 
                                                                       & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z2.z3__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                          << 3U)) 
                                                                      | (4U 
                                                                         & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                             >> 8U) 
                                                                            & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                               >> 4U)))))))) 
                                                             << 2U)) 
                                                         | (IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_7)) 
                                                        + 
                                                        ((0xfc0U 
                                                          & (((0xfU 
                                                               & (((((IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                     & (IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                    << 3U) 
                                                                   | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                        ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                       << 2U) 
                                                                      | ((2U 
                                                                          & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                             << 1U)) 
                                                                         | (1U 
                                                                            & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                                >> 0xeU) 
                                                                               & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                                >> 4U)))))) 
                                                                  + 
                                                                  VL_SHIFTR_III(4,4,32, 
                                                                                ((((IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                                & (IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                                << 3U) 
                                                                                | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                                << 2U) 
                                                                                | (IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_8))), 2U))) 
                                                              + 
                                                              (((((IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                                  & (IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                                 << 3U) 
                                                                | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                                     ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                                    << 2U) 
                                                                   | ((2U 
                                                                       & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                          << 1U)) 
                                                                      | (1U 
                                                                         & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                             >> 0xcU) 
                                                                            & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                               >> 6U)))))) 
                                                               + 
                                                               ((((IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                                  & (IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                                 << 5U) 
                                                                | ((((IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                                     ^ (IData)(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                                    << 4U) 
                                                                   | ((8U 
                                                                       & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z2.z4__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                          << 3U)) 
                                                                      | (4U 
                                                                         & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                             >> 0xcU) 
                                                                            & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                               >> 4U)))))))) 
                                                             << 6U)) 
                                                         | ((IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_8) 
                                                            << 4U)))) 
                                                      << 4U)) 
                                                  | ((0xcU 
                                                      & ((IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_0) 
                                                         << 2U)) 
                                                     | (IData)(vlSymsp->TOP__array16__DOT__z2.__VdfgRegularize_h5bb319d4_0_5))) 
                                                 + 
                                                 VL_SHIFTR_III(16,16,32, (IData)(vlSymsp->TOP__array16__DOT__z1.c), 8U))) 
                                     + (((0xfff0U & 
                                          (((0xffU 
                                             & (((0xfcU 
                                                  & (((0xfU 
                                                       & (((((IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                             & (IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                            << 3U) 
                                                           | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                               << 2U) 
                                                              | ((2U 
                                                                  & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                     << 1U)) 
                                                                 | (1U 
                                                                    & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                        >> 6U) 
                                                                       & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                          >> 8U)))))) 
                                                          + 
                                                          VL_SHIFTR_III(4,4,32, 
                                                                        ((((IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                           & (IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                          << 3U) 
                                                                         | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                              ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                             << 2U) 
                                                                            | (IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_6))), 2U))) 
                                                      + 
                                                      (((((IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                          & (IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                         << 3U) 
                                                        | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                             ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                            << 2U) 
                                                           | ((2U 
                                                               & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                  << 1U)) 
                                                              | (1U 
                                                                 & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                     >> 4U) 
                                                                    & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                       >> 0xaU)))))) 
                                                       + 
                                                       ((((IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                          & (IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                         << 5U) 
                                                        | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                             ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                            << 4U) 
                                                           | ((8U 
                                                               & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z3.z2__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                  << 3U)) 
                                                              | (4U 
                                                                 & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                     >> 4U) 
                                                                    & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                       >> 8U)))))))) 
                                                     << 2U)) 
                                                 | (IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_6)) 
                                                + VL_SHIFTR_III(8,8,32, 
                                                                (((IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_0) 
                                                                  << 2U) 
                                                                 | (IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_5)), 4U))) 
                                            + (((0xfcU 
                                                 & (((0xfU 
                                                      & (((((IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                            & (IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                           << 3U) 
                                                          | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                               ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                              << 2U) 
                                                             | ((2U 
                                                                 & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                    << 1U)) 
                                                                | (1U 
                                                                   & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                       >> 2U) 
                                                                      & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                         >> 0xcU)))))) 
                                                         + 
                                                         VL_SHIFTR_III(4,4,32, 
                                                                       ((((IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                          & (IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                         << 3U) 
                                                                        | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                             ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                            << 2U) 
                                                                           | (IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_7))), 2U))) 
                                                     + 
                                                     (((((IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                         & (IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                        << 3U) 
                                                       | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                            ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                           << 2U) 
                                                          | ((2U 
                                                              & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                 << 1U)) 
                                                             | (1U 
                                                                & ((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                   & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                      >> 0xeU)))))) 
                                                      + 
                                                      ((((IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                         & (IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                        << 5U) 
                                                       | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                            ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                           << 4U) 
                                                          | ((8U 
                                                              & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z3.z3__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                 << 3U)) 
                                                             | (4U 
                                                                & ((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                   & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                      >> 0xcU)))))))) 
                                                    << 2U)) 
                                                | (IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_7)) 
                                               + ((0xfc0U 
                                                   & (((0xfU 
                                                        & (((((IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                              & (IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                             << 3U) 
                                                            | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                 ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                << 2U) 
                                                               | ((2U 
                                                                   & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                      << 1U)) 
                                                                  | (1U 
                                                                     & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                         >> 6U) 
                                                                        & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                           >> 0xcU)))))) 
                                                           + 
                                                           VL_SHIFTR_III(4,4,32, 
                                                                         ((((IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                            & (IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                           << 3U) 
                                                                          | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                               ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                              << 2U) 
                                                                             | (IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_8))), 2U))) 
                                                       + 
                                                       (((((IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                           & (IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                          << 3U) 
                                                         | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                              ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                             << 2U) 
                                                            | ((2U 
                                                                & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                   << 1U)) 
                                                               | (1U 
                                                                  & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                      >> 4U) 
                                                                     & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                        >> 0xeU)))))) 
                                                        + 
                                                        ((((IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                           & (IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                          << 5U) 
                                                         | ((((IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                              ^ (IData)(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                             << 4U) 
                                                            | ((8U 
                                                                & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z3.z4__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                   << 3U)) 
                                                               | (4U 
                                                                  & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                      >> 4U) 
                                                                     & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                        >> 0xcU)))))))) 
                                                      << 6U)) 
                                                  | ((IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_8) 
                                                     << 4U)))) 
                                           << 4U)) 
                                         | ((0xcU & 
                                             ((IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_0) 
                                              << 2U)) 
                                            | (IData)(vlSymsp->TOP__array16__DOT__z3.__VdfgRegularize_h5bb319d4_0_5))) 
                                        + ((0xfff000U 
                                            & (((0xffU 
                                                 & (((0xfcU 
                                                      & (((0xfU 
                                                           & (((((IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                 & (IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                << 3U) 
                                                               | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                    ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                   << 2U) 
                                                                  | ((2U 
                                                                      & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                         << 1U)) 
                                                                     | (1U 
                                                                        & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                            >> 0xeU) 
                                                                           & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                              >> 8U)))))) 
                                                              + 
                                                              VL_SHIFTR_III(4,4,32, 
                                                                            ((((IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                               & (IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                              << 3U) 
                                                                             | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                                << 2U) 
                                                                                | (IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_6))), 2U))) 
                                                          + 
                                                          (((((IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                              & (IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                             << 3U) 
                                                            | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                                 ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                                << 2U) 
                                                               | ((2U 
                                                                   & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                      << 1U)) 
                                                                  | (1U 
                                                                     & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                         >> 0xcU) 
                                                                        & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                           >> 0xaU)))))) 
                                                           + 
                                                           ((((IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                              & (IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                             << 5U) 
                                                            | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                                 ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                                << 4U) 
                                                               | ((8U 
                                                                   & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z4.z2__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                      << 3U)) 
                                                                  | (4U 
                                                                     & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                         >> 0xcU) 
                                                                        & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                           >> 8U)))))))) 
                                                         << 2U)) 
                                                     | (IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_6)) 
                                                    + 
                                                    VL_SHIFTR_III(8,8,32, 
                                                                  (((IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_0) 
                                                                    << 2U) 
                                                                   | (IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_5)), 4U))) 
                                                + (
                                                   ((0xfcU 
                                                     & (((0xfU 
                                                          & (((((IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                & (IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                               << 3U) 
                                                              | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                   ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                  << 2U) 
                                                                 | ((2U 
                                                                     & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                        << 1U)) 
                                                                    | (1U 
                                                                       & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                           >> 0xaU) 
                                                                          & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                             >> 0xcU)))))) 
                                                             + 
                                                             VL_SHIFTR_III(4,4,32, 
                                                                           ((((IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                              & (IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                             << 3U) 
                                                                            | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                                << 2U) 
                                                                               | (IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_7))), 2U))) 
                                                         + 
                                                         (((((IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                             & (IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                            << 3U) 
                                                           | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                               << 2U) 
                                                              | ((2U 
                                                                  & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                     << 1U)) 
                                                                 | (1U 
                                                                    & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                        >> 8U) 
                                                                       & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                          >> 0xeU)))))) 
                                                          + 
                                                          ((((IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                             & (IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                            << 5U) 
                                                           | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                               << 4U) 
                                                              | ((8U 
                                                                  & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z4.z3__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                     << 3U)) 
                                                                 | (4U 
                                                                    & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                        >> 8U) 
                                                                       & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                          >> 0xcU)))))))) 
                                                        << 2U)) 
                                                    | (IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_7)) 
                                                   + 
                                                   ((0xfc0U 
                                                     & (((0xfU 
                                                          & (((((IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                & (IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                               << 3U) 
                                                              | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z2__DOT____Vcellinp__z2____pinNumber1) 
                                                                   ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z2__DOT____Vcellout__z1____pinNumber4)) 
                                                                  << 2U) 
                                                                 | ((2U 
                                                                     & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                        << 1U)) 
                                                                    | (1U 
                                                                       & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                           >> 0xeU) 
                                                                          & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                             >> 0xcU)))))) 
                                                             + 
                                                             VL_SHIFTR_III(4,4,32, 
                                                                           ((((IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                              & (IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                             << 3U) 
                                                                            | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z1__DOT____Vcellinp__z2____pinNumber1) 
                                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z1__DOT____Vcellout__z1____pinNumber4)) 
                                                                                << 2U) 
                                                                               | (IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_8))), 2U))) 
                                                         + 
                                                         (((((IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                             & (IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                            << 3U) 
                                                           | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z3__DOT____Vcellinp__z2____pinNumber1) 
                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z3__DOT____Vcellout__z1____pinNumber4)) 
                                                               << 2U) 
                                                              | ((2U 
                                                                  & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                     << 1U)) 
                                                                 | (1U 
                                                                    & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                        >> 0xcU) 
                                                                       & ((IData)(vlSelfRef.__Vcellinp__array16__b) 
                                                                          >> 0xeU)))))) 
                                                          + 
                                                          ((((IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                             & (IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                            << 5U) 
                                                           | ((((IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z4__DOT____Vcellinp__z2____pinNumber1) 
                                                                ^ (IData)(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z4__DOT____Vcellout__z1____pinNumber4)) 
                                                               << 4U) 
                                                              | ((8U 
                                                                  & (VL_REDXOR_2(vlSymsp->TOP__array16__DOT__z4.z4__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2) 
                                                                     << 3U)) 
                                                                 | (4U 
                                                                    & (((IData)(vlSelfRef.__Vcellinp__array16__a) 
                                                                        & (IData)(vlSelfRef.__Vcellinp__array16__b)) 
                                                                       >> 0xcU))))))) 
                                                        << 6U)) 
                                                    | ((IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_8) 
                                                       << 4U)))) 
                                               << 0xcU)) 
                                           | ((0xc00U 
                                               & ((IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_0) 
                                                  << 0xaU)) 
                                              | ((IData)(vlSymsp->TOP__array16__DOT__z4.__VdfgRegularize_h5bb319d4_0_5) 
                                                 << 8U))))) 
                                    << 8U) | (0xffU 
                                              & (IData)(vlSymsp->TOP__array16__DOT__z1.c))));
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Varray16___024root___dump_triggers__act(Varray16___024root* vlSelf);
#endif  // VL_DEBUG

void Varray16___024root___eval_triggers__act(Varray16___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Varray16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Varray16___024root___eval_triggers__act\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Varray16___024root___dump_triggers__act(vlSelf);
    }
#endif
}
