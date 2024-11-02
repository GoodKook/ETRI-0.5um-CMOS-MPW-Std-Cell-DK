// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfir_pe.h for the primary calling header

#include "Vfir_pe__pch.h"
#include "Vfir_pe___024root.h"

VL_ATTR_COLD void Vfir_pe___024root___eval_static(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vfir_pe___024root___eval_initial(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP____Vcellinp__fir_pe__clk__0 
        = vlSelf->__Vcellinp__fir_pe__clk;
}

VL_ATTR_COLD void Vfir_pe___024root___eval_final(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__stl(Vfir_pe___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vfir_pe___024root___eval_phase__stl(Vfir_pe___024root* vlSelf);

VL_ATTR_COLD void Vfir_pe___024root___eval_settle(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_settle\n"); );
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelf->__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vfir_pe___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("../source/fir_pe.v", 9, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vfir_pe___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__stl(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ vlSelf->__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vfir_pe___024root___stl_sequent__TOP__0(Vfir_pe___024root* vlSelf);

VL_ATTR_COLD void Vfir_pe___024root___eval_stl(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vfir_pe___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vfir_pe___024root___stl_sequent__TOP__0(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___stl_sequent__TOP__0\n"); );
    // Init
    CData/*3:0*/ __Vcellout__fir_pe__Yout;
    __Vcellout__fir_pe__Yout = 0;
    CData/*3:0*/ __Vcellout__fir_pe__Xout;
    __Vcellout__fir_pe__Xout = 0;
    // Body
    VL_ASSIGN_ISI(1,vlSelf->__Vcellinp__fir_pe__clk, vlSelf->clk);
    VL_ASSIGN_ISI(8,vlSelf->__Vcellinp__fir_pe__Cin, vlSelf->Cin);
    VL_ASSIGN_ISI(4,vlSelf->__Vcellinp__fir_pe__Xin, vlSelf->Xin);
    VL_ASSIGN_ISI(4,vlSelf->__Vcellinp__fir_pe__Yin, vlSelf->Yin);
    VL_ASSIGN_ISI(1,vlSelf->__Vcellinp__fir_pe__Rdy, vlSelf->Rdy);
    VL_ASSIGN_SII(1,vlSelf->Vld, (1U & ((IData)(vlSelf->fir_pe__DOT__LoadCtl) 
                                        >> 4U)));
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
    VL_ASSIGN_SII(4,vlSelf->Yout, __Vcellout__fir_pe__Yout);
    VL_ASSIGN_SII(4,vlSelf->Xout, __Vcellout__fir_pe__Xout);
}

VL_ATTR_COLD void Vfir_pe___024root___eval_triggers__stl(Vfir_pe___024root* vlSelf);

VL_ATTR_COLD bool Vfir_pe___024root___eval_phase__stl(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vfir_pe___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vfir_pe___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__ico(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___dump_triggers__ico\n"); );
    // Body
    if ((1U & (~ vlSelf->__VicoTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__act(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ vlSelf->__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge __Vcellinp__fir_pe__clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__nba(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ vlSelf->__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge __Vcellinp__fir_pe__clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vfir_pe___024root___ctor_var_reset(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->__Vcellinp__fir_pe__Rdy = VL_RAND_RESET_I(1);
    vlSelf->__Vcellinp__fir_pe__Yin = VL_RAND_RESET_I(4);
    vlSelf->__Vcellinp__fir_pe__Xin = VL_RAND_RESET_I(4);
    vlSelf->__Vcellinp__fir_pe__Cin = VL_RAND_RESET_I(8);
    vlSelf->__Vcellinp__fir_pe__clk = VL_RAND_RESET_I(1);
    vlSelf->fir_pe__DOT__LoadCtl = VL_RAND_RESET_I(5);
    vlSelf->fir_pe__DOT__XinL = VL_RAND_RESET_I(4);
    vlSelf->fir_pe__DOT__XinH = VL_RAND_RESET_I(4);
    vlSelf->fir_pe__DOT__Yin3 = VL_RAND_RESET_I(4);
    vlSelf->fir_pe__DOT__Yin2 = VL_RAND_RESET_I(4);
    vlSelf->fir_pe__DOT__Yin1 = VL_RAND_RESET_I(4);
    vlSelf->fir_pe__DOT__Yin0 = VL_RAND_RESET_I(4);
    vlSelf->fir_pe__DOT__y = VL_RAND_RESET_I(16);
    vlSelf->fir_pe__DOT___y = VL_RAND_RESET_I(16);
    vlSelf->__Vtrigprevexpr___TOP____Vcellinp__fir_pe__clk__0 = VL_RAND_RESET_I(1);
}
