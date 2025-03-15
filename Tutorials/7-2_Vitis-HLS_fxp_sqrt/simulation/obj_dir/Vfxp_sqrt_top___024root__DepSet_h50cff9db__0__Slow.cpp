// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfxp_sqrt_top.h for the primary calling header

#include "Vfxp_sqrt_top__pch.h"
#include "Vfxp_sqrt_top___024root.h"

VL_ATTR_COLD void Vfxp_sqrt_top___024root___eval_static(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_static\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root___eval_final(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_final\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__stl(Vfxp_sqrt_top___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vfxp_sqrt_top___024root___eval_phase__stl(Vfxp_sqrt_top___024root* vlSelf);

VL_ATTR_COLD void Vfxp_sqrt_top___024root___eval_settle(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_settle\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
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
            Vfxp_sqrt_top___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("../source/fxp_sqrt_top.v", 14, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vfxp_sqrt_top___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__stl(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___dump_triggers__stl\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
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

VL_ATTR_COLD void Vfxp_sqrt_top___024root___stl_sequent__TOP__0(Vfxp_sqrt_top___024root* vlSelf);
VL_ATTR_COLD void Vfxp_sqrt_top___024root____Vm_traceActivitySetAll(Vfxp_sqrt_top___024root* vlSelf);

VL_ATTR_COLD void Vfxp_sqrt_top___024root___eval_stl(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_stl\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Vfxp_sqrt_top___024root___stl_sequent__TOP__0(vlSelf);
        Vfxp_sqrt_top___024root____Vm_traceActivitySetAll(vlSelf);
    }
}

extern const VlUnpacked<CData/*2:0*/, 128> Vfxp_sqrt_top__ConstPool__TABLE_h568d1503_0;

VL_ATTR_COLD void Vfxp_sqrt_top___024root___stl_sequent__TOP__0(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___stl_sequent__TOP__0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*6:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    // Body
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_NS_fsm 
        = vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm;
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_clk, vlSelfRef.ap_clk);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_rst, vlSelfRef.ap_rst);
    VL_ASSIGN_SII(1,vlSelfRef.ap_ready, (1U & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                               >> 2U)));
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_continue, vlSelfRef.ap_continue);
    VL_ASSIGN_ISI(24,vlSelfRef.__Vcellinp__fxp_sqrt_top__in_val, vlSelfRef.in_val);
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i_fu_246_p2 
        = (0x1fU & ((IData)(1U) + (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)));
    VL_ASSIGN_SII(1,vlSelfRef.ap_done, (IData)((((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                                 >> 2U) 
                                                | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg))));
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_loop_init 
        = ((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int) 
           & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg));
    VL_ASSIGN_SII(28,vlSelfRef.ap_return, (0xfffffffU 
                                           & (VL_LTS_III(31, 0U, vlSelfRef.fxp_sqrt_top__DOT__s_4_loc_fu_50)
                                               ? (0xfffffffU 
                                                  & (((IData)(1U) 
                                                      + vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42) 
                                                     >> 1U))
                                               : vlSelfRef.fxp_sqrt_top__DOT__p_v_loc_fu_46)));
    if ((0x40000000U & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64)) {
        vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out 
            = (0xfffffffU & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68);
        vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out 
            = (0x7fffffffU & (((3U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
                                      << 2U)) << (0x1fU 
                                                  & ((IData)(0x1dU) 
                                                     - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))) 
                              + VL_SHIFTL_III(31,31,31, vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64, 1U)));
    } else {
        vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out 
            = (0xfffffffU & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72);
        vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out 
            = (0x7fffffffU & (VL_SHIFTL_III(31,31,31, vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64, 1U) 
                              - ((1U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 
                                        << 2U)) << 
                                 (0x1fU & ((IData)(0x1dU) 
                                           - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60))))));
    }
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start, vlSelfRef.ap_start);
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready 
        = ((0x1dU == (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)) 
           & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm) 
              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1)));
    VL_ASSIGN_SII(1,vlSelfRef.ap_idle, (1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
                                              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm))));
    vlSelfRef.fxp_sqrt_top__DOT__ap_block_state1 = 
        (1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
               | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg)));
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld 
        = ((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready) 
           & ((0x1dU == (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)) 
              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm)));
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int 
        = (((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready) 
            & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm)) 
           | (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_reg));
    __Vtableidx1 = (((0x40U & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                               << 5U)) | (((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int) 
                                           | ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg)) 
                                              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache))) 
                                          << 5U)) | 
                    ((0x10U & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                               << 4U)) | (((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_block_state1) 
                                           << 3U) | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm))));
    vlSelfRef.fxp_sqrt_top__DOT__ap_NS_fsm = Vfxp_sqrt_top__ConstPool__TABLE_h568d1503_0
        [__Vtableidx1];
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root___eval_triggers__stl(Vfxp_sqrt_top___024root* vlSelf);

VL_ATTR_COLD bool Vfxp_sqrt_top___024root___eval_phase__stl(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_phase__stl\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vfxp_sqrt_top___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        Vfxp_sqrt_top___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__ico(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___dump_triggers__ico\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
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
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__act(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___dump_triggers__act\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge __Vcellinp__fxp_sqrt_top__ap_clk)\n");
    }
    if ((2ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__nba(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___dump_triggers__nba\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge __Vcellinp__fxp_sqrt_top__ap_clk)\n");
    }
    if ((2ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vfxp_sqrt_top___024root____Vm_traceActivitySetAll(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root____Vm_traceActivitySetAll\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vm_traceActivity[0U] = 1U;
    vlSelfRef.__Vm_traceActivity[1U] = 1U;
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
    vlSelfRef.__Vm_traceActivity[4U] = 1U;
    vlSelfRef.__Vm_traceActivity[5U] = 1U;
    vlSelfRef.__Vm_traceActivity[6U] = 1U;
    vlSelfRef.__Vm_traceActivity[7U] = 1U;
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root___ctor_var_reset(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___ctor_var_reset\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelf->__Vcellinp__fxp_sqrt_top__in_val = VL_RAND_RESET_I(24);
    vlSelf->__Vcellinp__fxp_sqrt_top__ap_continue = VL_RAND_RESET_I(1);
    vlSelf->__Vcellinp__fxp_sqrt_top__ap_start = VL_RAND_RESET_I(1);
    vlSelf->__Vcellinp__fxp_sqrt_top__ap_rst = VL_RAND_RESET_I(1);
    vlSelf->__Vcellinp__fxp_sqrt_top__ap_clk = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__ap_rst_reg_2 = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__ap_rst_reg_1 = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__ap_rst_reg = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__ap_done_reg = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__ap_CS_fsm = VL_RAND_RESET_I(3);
    vlSelf->fxp_sqrt_top__DOT__s_reg_134 = VL_RAND_RESET_I(28);
    vlSelf->fxp_sqrt_top__DOT__ap_block_state1 = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out = VL_RAND_RESET_I(31);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out = VL_RAND_RESET_I(28);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__s_4_loc_fu_50 = VL_RAND_RESET_I(31);
    vlSelf->fxp_sqrt_top__DOT__p_v_loc_fu_46 = VL_RAND_RESET_I(28);
    vlSelf->fxp_sqrt_top__DOT__q_1_loc_fu_42 = VL_RAND_RESET_I(29);
    vlSelf->fxp_sqrt_top__DOT__ap_NS_fsm = VL_RAND_RESET_I(3);
    vlSelf->fxp_sqrt_top__DOT__ap_ce_reg = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1 = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60 = VL_RAND_RESET_I(5);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i_fu_246_p2 = VL_RAND_RESET_I(5);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_loop_init = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64 = VL_RAND_RESET_I(31);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 = VL_RAND_RESET_I(29);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 = VL_RAND_RESET_I(29);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_reg = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_NS_fsm = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_ce_reg = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int = VL_RAND_RESET_I(1);
    vlSelf->fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP____Vcellinp__fxp_sqrt_top__ap_clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 8; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
