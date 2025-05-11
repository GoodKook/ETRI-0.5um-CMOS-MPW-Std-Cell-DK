// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtiming_recovery.h for the primary calling header

#include "Vtiming_recovery__pch.h"
#include "Vtiming_recovery___024root.h"

void Vtiming_recovery___024root___ico_sequent__TOP__0(Vtiming_recovery___024root* vlSelf);

void Vtiming_recovery___024root___eval_ico(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_ico\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        Vtiming_recovery___024root___ico_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vtiming_recovery___024root___ico_sequent__TOP__0(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___ico_sequent__TOP__0\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__timing_recovery__sysclk, vlSelfRef.sysclk);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__timing_recovery__clk1, vlSelfRef.clk1);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__timing_recovery__clk2, vlSelfRef.clk2);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__timing_recovery__sync, vlSelfRef.sync);
}

void Vtiming_recovery___024root___eval_triggers__ico(Vtiming_recovery___024root* vlSelf);

bool Vtiming_recovery___024root___eval_phase__ico(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_phase__ico\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vtiming_recovery___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelfRef.__VicoTriggered.any();
    if (__VicoExecute) {
        Vtiming_recovery___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vtiming_recovery___024root___eval_act(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_act\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vtiming_recovery___024root___nba_sequent__TOP__0(Vtiming_recovery___024root* vlSelf);

void Vtiming_recovery___024root___eval_nba(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_nba\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vtiming_recovery___024root___nba_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vtiming_recovery___024root___nba_sequent__TOP__0(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___nba_sequent__TOP__0\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (vlSelfRef.__Vcellinp__timing_recovery__clk1) {
        vlSelfRef.__Vcellout__timing_recovery__x32 
            = vlSelfRef.__Vcellout__timing_recovery__x31;
    }
    VL_ASSIGN_SII(1,vlSelfRef.x32, vlSelfRef.__Vcellout__timing_recovery__x32);
    if (vlSelfRef.__Vcellinp__timing_recovery__clk2) {
        vlSelfRef.__Vcellout__timing_recovery__x31 
            = vlSelfRef.__Vcellout__timing_recovery__x22;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk1) {
        vlSelfRef.__Vcellout__timing_recovery__x22 
            = vlSelfRef.__Vcellout__timing_recovery__x21;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk2) {
        vlSelfRef.__Vcellout__timing_recovery__x21 
            = vlSelfRef.__Vcellout__timing_recovery__x12;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk1) {
        vlSelfRef.__Vcellout__timing_recovery__x12 
            = vlSelfRef.__Vcellout__timing_recovery__x11;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk2) {
        vlSelfRef.__Vcellout__timing_recovery__x11 
            = vlSelfRef.__Vcellout__timing_recovery__m22;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk1) {
        vlSelfRef.__Vcellout__timing_recovery__m22 
            = vlSelfRef.__Vcellout__timing_recovery__m21;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk2) {
        vlSelfRef.__Vcellout__timing_recovery__m21 
            = vlSelfRef.__Vcellout__timing_recovery__m12;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk1) {
        vlSelfRef.__Vcellout__timing_recovery__m12 
            = vlSelfRef.__Vcellout__timing_recovery__m11;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk2) {
        vlSelfRef.__Vcellout__timing_recovery__m11 
            = vlSelfRef.__Vcellout__timing_recovery__a32;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk1) {
        vlSelfRef.__Vcellout__timing_recovery__a32 
            = vlSelfRef.__Vcellout__timing_recovery__a31;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk2) {
        vlSelfRef.__Vcellout__timing_recovery__a31 
            = vlSelfRef.__Vcellout__timing_recovery__a22;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk1) {
        vlSelfRef.__Vcellout__timing_recovery__a22 
            = vlSelfRef.__Vcellout__timing_recovery__a21;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk2) {
        vlSelfRef.__Vcellout__timing_recovery__a21 
            = vlSelfRef.__Vcellout__timing_recovery__a12;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk1) {
        vlSelfRef.__Vcellout__timing_recovery__a12 
            = vlSelfRef.__Vcellout__timing_recovery__a11;
    }
    if (vlSelfRef.__Vcellinp__timing_recovery__clk2) {
        vlSelfRef.__Vcellout__timing_recovery__a11 
            = vlSelfRef.__Vcellinp__timing_recovery__sync;
    }
    VL_ASSIGN_SII(1,vlSelfRef.x31, vlSelfRef.__Vcellout__timing_recovery__x31);
    VL_ASSIGN_SII(1,vlSelfRef.x22, vlSelfRef.__Vcellout__timing_recovery__x22);
    VL_ASSIGN_SII(1,vlSelfRef.x21, vlSelfRef.__Vcellout__timing_recovery__x21);
    VL_ASSIGN_SII(1,vlSelfRef.x12, vlSelfRef.__Vcellout__timing_recovery__x12);
    VL_ASSIGN_SII(1,vlSelfRef.x11, vlSelfRef.__Vcellout__timing_recovery__x11);
    VL_ASSIGN_SII(1,vlSelfRef.m22, vlSelfRef.__Vcellout__timing_recovery__m22);
    VL_ASSIGN_SII(1,vlSelfRef.m21, vlSelfRef.__Vcellout__timing_recovery__m21);
    VL_ASSIGN_SII(1,vlSelfRef.m12, vlSelfRef.__Vcellout__timing_recovery__m12);
    VL_ASSIGN_SII(1,vlSelfRef.m11, vlSelfRef.__Vcellout__timing_recovery__m11);
    VL_ASSIGN_SII(1,vlSelfRef.a32, vlSelfRef.__Vcellout__timing_recovery__a32);
    VL_ASSIGN_SII(1,vlSelfRef.a31, vlSelfRef.__Vcellout__timing_recovery__a31);
    VL_ASSIGN_SII(1,vlSelfRef.a22, vlSelfRef.__Vcellout__timing_recovery__a22);
    VL_ASSIGN_SII(1,vlSelfRef.a21, vlSelfRef.__Vcellout__timing_recovery__a21);
    VL_ASSIGN_SII(1,vlSelfRef.a12, vlSelfRef.__Vcellout__timing_recovery__a12);
    VL_ASSIGN_SII(1,vlSelfRef.a11, vlSelfRef.__Vcellout__timing_recovery__a11);
}

void Vtiming_recovery___024root___eval_triggers__act(Vtiming_recovery___024root* vlSelf);

bool Vtiming_recovery___024root___eval_phase__act(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_phase__act\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtiming_recovery___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vtiming_recovery___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vtiming_recovery___024root___eval_phase__nba(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_phase__nba\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtiming_recovery___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtiming_recovery___024root___dump_triggers__ico(Vtiming_recovery___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtiming_recovery___024root___dump_triggers__nba(Vtiming_recovery___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtiming_recovery___024root___dump_triggers__act(Vtiming_recovery___024root* vlSelf);
#endif  // VL_DEBUG

void Vtiming_recovery___024root___eval(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelfRef.__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY(((0x64U < __VicoIterCount)))) {
#ifdef VL_DEBUG
            Vtiming_recovery___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("../source/timing_recovery.v", 28, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vtiming_recovery___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelfRef.__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vtiming_recovery___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("../source/timing_recovery.v", 28, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vtiming_recovery___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("../source/timing_recovery.v", 28, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vtiming_recovery___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vtiming_recovery___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtiming_recovery___024root___eval_debug_assertions(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_debug_assertions\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}
#endif  // VL_DEBUG
