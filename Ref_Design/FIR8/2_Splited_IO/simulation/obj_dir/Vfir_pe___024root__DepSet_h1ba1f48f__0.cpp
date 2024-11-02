// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfir_pe.h for the primary calling header

#include "Vfir_pe__pch.h"
#include "Vfir_pe___024root.h"

void Vfir_pe___024root___ico_sequent__TOP__0(Vfir_pe___024root* vlSelf);

void Vfir_pe___024root___eval_ico(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        Vfir_pe___024root___ico_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vfir_pe___024root___ico_sequent__TOP__0(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___ico_sequent__TOP__0\n"); );
    // Body
    VL_ASSIGN_ISI(1,vlSelf->__Vcellinp__fir_pe__clk, vlSelf->clk);
    VL_ASSIGN_ISI(8,vlSelf->__Vcellinp__fir_pe__Cin, vlSelf->Cin);
    VL_ASSIGN_ISI(4,vlSelf->__Vcellinp__fir_pe__Xin, vlSelf->Xin);
    VL_ASSIGN_ISI(4,vlSelf->__Vcellinp__fir_pe__Yin, vlSelf->Yin);
    VL_ASSIGN_ISI(1,vlSelf->__Vcellinp__fir_pe__Rdy, vlSelf->Rdy);
}

void Vfir_pe___024root___eval_triggers__ico(Vfir_pe___024root* vlSelf);

bool Vfir_pe___024root___eval_phase__ico(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_phase__ico\n"); );
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vfir_pe___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelf->__VicoTriggered.any();
    if (__VicoExecute) {
        Vfir_pe___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vfir_pe___024root___eval_act(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_act\n"); );
}

void Vfir_pe___024root___nba_sequent__TOP__0(Vfir_pe___024root* vlSelf);

void Vfir_pe___024root___eval_nba(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vfir_pe___024root___nba_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vfir_pe___024root___nba_sequent__TOP__0(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*3:0*/ __Vcellout__fir_pe__Yout;
    __Vcellout__fir_pe__Yout = 0;
    CData/*3:0*/ __Vcellout__fir_pe__Xout;
    __Vcellout__fir_pe__Xout = 0;
    CData/*0:0*/ fir_pe__DOT____Vlvbound_h7eaeb5d8__0;
    fir_pe__DOT____Vlvbound_h7eaeb5d8__0 = 0;
    CData/*4:0*/ __Vdly__fir_pe__DOT__LoadCtl;
    __Vdly__fir_pe__DOT__LoadCtl = 0;
    // Body
    __Vdly__fir_pe__DOT__LoadCtl = vlSelf->fir_pe__DOT__LoadCtl;
    __Vdly__fir_pe__DOT__LoadCtl = ((0x1eU & (IData)(__Vdly__fir_pe__DOT__LoadCtl)) 
                                    | (IData)(vlSelf->__Vcellinp__fir_pe__Rdy));
    fir_pe__DOT____Vlvbound_h7eaeb5d8__0 = (1U & (IData)(vlSelf->fir_pe__DOT__LoadCtl));
    __Vdly__fir_pe__DOT__LoadCtl = ((0x1dU & (IData)(__Vdly__fir_pe__DOT__LoadCtl)) 
                                    | ((IData)(fir_pe__DOT____Vlvbound_h7eaeb5d8__0) 
                                       << 1U));
    fir_pe__DOT____Vlvbound_h7eaeb5d8__0 = (1U & ((IData)(vlSelf->fir_pe__DOT__LoadCtl) 
                                                  >> 1U));
    __Vdly__fir_pe__DOT__LoadCtl = ((0x1bU & (IData)(__Vdly__fir_pe__DOT__LoadCtl)) 
                                    | ((IData)(fir_pe__DOT____Vlvbound_h7eaeb5d8__0) 
                                       << 2U));
    fir_pe__DOT____Vlvbound_h7eaeb5d8__0 = (1U & ((IData)(vlSelf->fir_pe__DOT__LoadCtl) 
                                                  >> 2U));
    __Vdly__fir_pe__DOT__LoadCtl = ((0x17U & (IData)(__Vdly__fir_pe__DOT__LoadCtl)) 
                                    | ((IData)(fir_pe__DOT____Vlvbound_h7eaeb5d8__0) 
                                       << 3U));
    fir_pe__DOT____Vlvbound_h7eaeb5d8__0 = (1U & ((IData)(vlSelf->fir_pe__DOT__LoadCtl) 
                                                  >> 3U));
    __Vdly__fir_pe__DOT__LoadCtl = ((0xfU & (IData)(__Vdly__fir_pe__DOT__LoadCtl)) 
                                    | ((IData)(fir_pe__DOT____Vlvbound_h7eaeb5d8__0) 
                                       << 4U));
    if ((0x10U & (IData)(vlSelf->fir_pe__DOT__LoadCtl))) {
        vlSelf->fir_pe__DOT__y = vlSelf->fir_pe__DOT___y;
        vlSelf->fir_pe__DOT___y = (0xffffU & (((((IData)(vlSelf->fir_pe__DOT__XinH) 
                                                 << 4U) 
                                                | (IData)(vlSelf->fir_pe__DOT__XinL)) 
                                               * (IData)(vlSelf->__Vcellinp__fir_pe__Cin)) 
                                              + (((IData)(vlSelf->fir_pe__DOT__Yin3) 
                                                  << 0xcU) 
                                                 | (((IData)(vlSelf->fir_pe__DOT__Yin2) 
                                                     << 8U) 
                                                    | (((IData)(vlSelf->fir_pe__DOT__Yin1) 
                                                        << 4U) 
                                                       | (IData)(vlSelf->fir_pe__DOT__Yin0))))));
    }
    if ((1U & (~ (IData)(vlSelf->fir_pe__DOT__LoadCtl)))) {
        if ((1U & (~ ((IData)(vlSelf->fir_pe__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((1U & (~ ((IData)(vlSelf->fir_pe__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelf->fir_pe__DOT__LoadCtl))) {
                    vlSelf->fir_pe__DOT__Yin3 = vlSelf->__Vcellinp__fir_pe__Yin;
                }
            }
            if ((4U & (IData)(vlSelf->fir_pe__DOT__LoadCtl))) {
                vlSelf->fir_pe__DOT__Yin2 = vlSelf->__Vcellinp__fir_pe__Yin;
            }
        }
        if ((2U & (IData)(vlSelf->fir_pe__DOT__LoadCtl))) {
            vlSelf->fir_pe__DOT__Yin1 = vlSelf->__Vcellinp__fir_pe__Yin;
            vlSelf->fir_pe__DOT__XinH = vlSelf->__Vcellinp__fir_pe__Xin;
        }
    }
    if ((1U & (IData)(vlSelf->fir_pe__DOT__LoadCtl))) {
        vlSelf->fir_pe__DOT__Yin0 = vlSelf->__Vcellinp__fir_pe__Yin;
        vlSelf->fir_pe__DOT__XinL = vlSelf->__Vcellinp__fir_pe__Xin;
    }
    vlSelf->fir_pe__DOT__LoadCtl = __Vdly__fir_pe__DOT__LoadCtl;
    if ((1U & (IData)(vlSelf->fir_pe__DOT__LoadCtl))) {
        __Vcellout__fir_pe__Yout = (0xfU & (IData)(vlSelf->fir_pe__DOT__y));
        __Vcellout__fir_pe__Xout = vlSelf->fir_pe__DOT__XinL;
    } else if ((2U & (IData)(vlSelf->fir_pe__DOT__LoadCtl))) {
        __Vcellout__fir_pe__Yout = (0xfU & ((IData)(vlSelf->fir_pe__DOT__y) 
                                            >> 4U));
        __Vcellout__fir_pe__Xout = vlSelf->fir_pe__DOT__XinH;
    } else {
        __Vcellout__fir_pe__Yout = (0xfU & ((4U & (IData)(vlSelf->fir_pe__DOT__LoadCtl))
                                             ? ((IData)(vlSelf->fir_pe__DOT__y) 
                                                >> 8U)
                                             : ((8U 
                                                 & (IData)(vlSelf->fir_pe__DOT__LoadCtl))
                                                 ? 
                                                ((IData)(vlSelf->fir_pe__DOT__y) 
                                                 >> 0xcU)
                                                 : 0U)));
        __Vcellout__fir_pe__Xout = 0U;
    }
    VL_ASSIGN_SII(1,vlSelf->Vld, (1U & ((IData)(vlSelf->fir_pe__DOT__LoadCtl) 
                                        >> 4U)));
    VL_ASSIGN_SII(4,vlSelf->Yout, __Vcellout__fir_pe__Yout);
    VL_ASSIGN_SII(4,vlSelf->Xout, __Vcellout__fir_pe__Xout);
}

void Vfir_pe___024root___eval_triggers__act(Vfir_pe___024root* vlSelf);

bool Vfir_pe___024root___eval_phase__act(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vfir_pe___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vfir_pe___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vfir_pe___024root___eval_phase__nba(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vfir_pe___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__ico(Vfir_pe___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__nba(Vfir_pe___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__act(Vfir_pe___024root* vlSelf);
#endif  // VL_DEBUG

void Vfir_pe___024root___eval(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelf->__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY((0x64U < __VicoIterCount))) {
#ifdef VL_DEBUG
            Vfir_pe___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("../source/fir_pe.v", 9, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vfir_pe___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelf->__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vfir_pe___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("../source/fir_pe.v", 9, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vfir_pe___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("../source/fir_pe.v", 9, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vfir_pe___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vfir_pe___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vfir_pe___024root___eval_debug_assertions(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
