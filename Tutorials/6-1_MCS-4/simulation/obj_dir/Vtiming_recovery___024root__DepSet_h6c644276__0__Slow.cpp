// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtiming_recovery.h for the primary calling header

#include "Vtiming_recovery__pch.h"
#include "Vtiming_recovery___024root.h"

VL_ATTR_COLD void Vtiming_recovery___024root___eval_static(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_static\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vtiming_recovery___024root___eval_initial(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_initial\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__timing_recovery__sysclk__0 
        = vlSelfRef.__Vcellinp__timing_recovery__sysclk;
}

VL_ATTR_COLD void Vtiming_recovery___024root___eval_final(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_final\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtiming_recovery___024root___dump_triggers__stl(Vtiming_recovery___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vtiming_recovery___024root___eval_phase__stl(Vtiming_recovery___024root* vlSelf);

VL_ATTR_COLD void Vtiming_recovery___024root___eval_settle(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_settle\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY(((0x64U < __VstlIterCount)))) {
#ifdef VL_DEBUG
            Vtiming_recovery___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("../source/timing_recovery.v", 28, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vtiming_recovery___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtiming_recovery___024root___dump_triggers__stl(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___dump_triggers__stl\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtiming_recovery___024root___stl_sequent__TOP__0(Vtiming_recovery___024root* vlSelf);

VL_ATTR_COLD void Vtiming_recovery___024root___eval_stl(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_stl\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Vtiming_recovery___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vtiming_recovery___024root___stl_sequent__TOP__0(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___stl_sequent__TOP__0\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__timing_recovery__sysclk, vlSelfRef.sysclk);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__timing_recovery__clk1, vlSelfRef.clk1);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__timing_recovery__clk2, vlSelfRef.clk2);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__timing_recovery__sync, vlSelfRef.sync);
    VL_ASSIGN_SII(1,vlSelfRef.a11, vlSelfRef.__Vcellout__timing_recovery__a11);
    VL_ASSIGN_SII(1,vlSelfRef.a12, vlSelfRef.__Vcellout__timing_recovery__a12);
    VL_ASSIGN_SII(1,vlSelfRef.a21, vlSelfRef.__Vcellout__timing_recovery__a21);
    VL_ASSIGN_SII(1,vlSelfRef.a22, vlSelfRef.__Vcellout__timing_recovery__a22);
    VL_ASSIGN_SII(1,vlSelfRef.a31, vlSelfRef.__Vcellout__timing_recovery__a31);
    VL_ASSIGN_SII(1,vlSelfRef.a32, vlSelfRef.__Vcellout__timing_recovery__a32);
    VL_ASSIGN_SII(1,vlSelfRef.m11, vlSelfRef.__Vcellout__timing_recovery__m11);
    VL_ASSIGN_SII(1,vlSelfRef.m12, vlSelfRef.__Vcellout__timing_recovery__m12);
    VL_ASSIGN_SII(1,vlSelfRef.m21, vlSelfRef.__Vcellout__timing_recovery__m21);
    VL_ASSIGN_SII(1,vlSelfRef.m22, vlSelfRef.__Vcellout__timing_recovery__m22);
    VL_ASSIGN_SII(1,vlSelfRef.x11, vlSelfRef.__Vcellout__timing_recovery__x11);
    VL_ASSIGN_SII(1,vlSelfRef.x12, vlSelfRef.__Vcellout__timing_recovery__x12);
    VL_ASSIGN_SII(1,vlSelfRef.x21, vlSelfRef.__Vcellout__timing_recovery__x21);
    VL_ASSIGN_SII(1,vlSelfRef.x22, vlSelfRef.__Vcellout__timing_recovery__x22);
    VL_ASSIGN_SII(1,vlSelfRef.x31, vlSelfRef.__Vcellout__timing_recovery__x31);
    VL_ASSIGN_SII(1,vlSelfRef.x32, vlSelfRef.__Vcellout__timing_recovery__x32);
}

VL_ATTR_COLD void Vtiming_recovery___024root___eval_triggers__stl(Vtiming_recovery___024root* vlSelf);

VL_ATTR_COLD bool Vtiming_recovery___024root___eval_phase__stl(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_phase__stl\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vtiming_recovery___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        Vtiming_recovery___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtiming_recovery___024root___dump_triggers__ico(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___dump_triggers__ico\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VicoTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtiming_recovery___024root___dump_triggers__act(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___dump_triggers__act\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge __Vcellinp__timing_recovery__sysclk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtiming_recovery___024root___dump_triggers__nba(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___dump_triggers__nba\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge __Vcellinp__timing_recovery__sysclk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtiming_recovery___024root___ctor_var_reset(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___ctor_var_reset\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelf->__Vcellout__timing_recovery__x32 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__x31 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__x22 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__x21 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__x12 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__x11 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__m22 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__m21 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__m12 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__m11 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__a32 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__a31 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__a22 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__a21 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__a12 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellout__timing_recovery__a11 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellinp__timing_recovery__sync = VL_RAND_RESET_I(1);
    vlSelf->__Vcellinp__timing_recovery__clk2 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellinp__timing_recovery__clk1 = VL_RAND_RESET_I(1);
    vlSelf->__Vcellinp__timing_recovery__sysclk = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP____Vcellinp__timing_recovery__sysclk__0 = VL_RAND_RESET_I(1);
}
