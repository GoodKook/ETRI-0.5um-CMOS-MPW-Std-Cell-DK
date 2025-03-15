// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfxp_sqrt_top.h for the primary calling header

#include "Vfxp_sqrt_top__pch.h"
#include "Vfxp_sqrt_top___024root.h"

VlCoroutine Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__0(Vfxp_sqrt_top___024root* vlSelf);
VlCoroutine Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__1(Vfxp_sqrt_top___024root* vlSelf);
VlCoroutine Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__2(Vfxp_sqrt_top___024root* vlSelf);

void Vfxp_sqrt_top___024root___eval_initial(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_initial\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vm_traceActivity[1U] = 1U;
    Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__2(vlSelf);
    vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__fxp_sqrt_top__ap_clk__0 
        = vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_clk;
}

VL_INLINE_OPT VlCoroutine Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__0(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top.v", 
                                         81);
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_2 = 1U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top.v", 
                                         82);
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_1 = 1U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top.v", 
                                         83);
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg = 1U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top.v", 
                                         84);
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg = 0U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top.v", 
                                         85);
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm = 1U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top.v", 
                                         86);
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg = 0U;
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
}

VL_INLINE_OPT VlCoroutine Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__1(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__1\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1.v", 
                                         98);
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm = 1U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1.v", 
                                         99);
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1 = 0U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1.v", 
                                         100);
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60 = 0U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1.v", 
                                         101);
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64 = 0U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1.v", 
                                         102);
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 = 0U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1.v", 
                                         103);
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 = 0U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1.v", 
                                         104);
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_reg = 0U;
    vlSelfRef.__Vm_traceActivity[3U] = 1U;
}

VL_INLINE_OPT VlCoroutine Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__2(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_initial__TOP__Vtiming__2\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top_flow_control_loop_pipe_sequential_init.v", 
                                         53);
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int = 1U;
    co_await vlSelfRef.__VdlySched.delay(0ULL, nullptr, 
                                         "../source/fxp_sqrt_top_flow_control_loop_pipe_sequential_init.v", 
                                         54);
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache = 0U;
}

void Vfxp_sqrt_top___024root___ico_sequent__TOP__0(Vfxp_sqrt_top___024root* vlSelf);

void Vfxp_sqrt_top___024root___eval_ico(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_ico\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        Vfxp_sqrt_top___024root___ico_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[4U] = 1U;
    }
}

extern const VlUnpacked<CData/*2:0*/, 128> Vfxp_sqrt_top__ConstPool__TABLE_h568d1503_0;

VL_INLINE_OPT void Vfxp_sqrt_top___024root___ico_sequent__TOP__0(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___ico_sequent__TOP__0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*6:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    // Body
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_clk, vlSelfRef.ap_clk);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_rst, vlSelfRef.ap_rst);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_continue, vlSelfRef.ap_continue);
    VL_ASSIGN_ISI(24,vlSelfRef.__Vcellinp__fxp_sqrt_top__in_val, vlSelfRef.in_val);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start, vlSelfRef.ap_start);
    VL_ASSIGN_SII(1,vlSelfRef.ap_idle, (1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
                                              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm))));
    vlSelfRef.fxp_sqrt_top__DOT__ap_block_state1 = 
        (1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
               | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg)));
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

void Vfxp_sqrt_top___024root___eval_triggers__ico(Vfxp_sqrt_top___024root* vlSelf);

bool Vfxp_sqrt_top___024root___eval_phase__ico(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_phase__ico\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vfxp_sqrt_top___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelfRef.__VicoTriggered.any();
    if (__VicoExecute) {
        Vfxp_sqrt_top___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vfxp_sqrt_top___024root___act_sequent__TOP__0(Vfxp_sqrt_top___024root* vlSelf);

void Vfxp_sqrt_top___024root___eval_act(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_act\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((2ULL & vlSelfRef.__VactTriggered.word(0U))) {
        Vfxp_sqrt_top___024root___act_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[5U] = 1U;
    }
}

VL_INLINE_OPT void Vfxp_sqrt_top___024root___act_sequent__TOP__0(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___act_sequent__TOP__0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*6:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    // Body
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_NS_fsm 
        = vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm;
    VL_ASSIGN_SII(1,vlSelfRef.ap_ready, (1U & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                               >> 2U)));
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i_fu_246_p2 
        = (0x1fU & ((IData)(1U) + (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)));
    VL_ASSIGN_SII(1,vlSelfRef.ap_done, (IData)((((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                                 >> 2U) 
                                                | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg))));
    VL_ASSIGN_SII(1,vlSelfRef.ap_idle, (1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
                                              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm))));
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_loop_init 
        = ((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int) 
           & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg));
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
    vlSelfRef.fxp_sqrt_top__DOT__ap_block_state1 = 
        (1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
               | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg)));
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready 
        = ((0x1dU == (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)) 
           & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm) 
              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1)));
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

void Vfxp_sqrt_top___024root___nba_sequent__TOP__0(Vfxp_sqrt_top___024root* vlSelf);
void Vfxp_sqrt_top___024root___nba_comb__TOP__0(Vfxp_sqrt_top___024root* vlSelf);

void Vfxp_sqrt_top___024root___eval_nba(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_nba\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vfxp_sqrt_top___024root___nba_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[6U] = 1U;
    }
    if ((3ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vfxp_sqrt_top___024root___nba_comb__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[7U] = 1U;
    }
}

VL_INLINE_OPT void Vfxp_sqrt_top___024root___nba_sequent__TOP__0(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___nba_sequent__TOP__0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_reg = 0U;
    if (((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld) 
         & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
            >> 1U))) {
        vlSelfRef.fxp_sqrt_top__DOT__s_4_loc_fu_50 
            = vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out;
        vlSelfRef.fxp_sqrt_top__DOT__p_v_loc_fu_46 
            = vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out;
        vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42 
            = (1U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out 
                     << 1U));
    }
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
        = (0x1ffffffeU & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68);
    if (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm) {
        if (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_loop_init) {
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 = 0U;
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
                = (1U & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68);
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60 = 0U;
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64 
                = vlSelfRef.fxp_sqrt_top__DOT__s_reg_134;
        } else if (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1) {
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 
                = (1U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out 
                         << 1U));
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
                = ((1U & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68) 
                   | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out 
                      << 1U));
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60 
                = vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i_fu_246_p2;
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64 
                = vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out;
        }
    }
    VL_ASSIGN_SII(28,vlSelfRef.ap_return, (0xfffffffU 
                                           & (VL_LTS_III(31, 0U, vlSelfRef.fxp_sqrt_top__DOT__s_4_loc_fu_50)
                                               ? (0xfffffffU 
                                                  & (((IData)(1U) 
                                                      + vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42) 
                                                     >> 1U))
                                               : vlSelfRef.fxp_sqrt_top__DOT__p_v_loc_fu_46)));
    vlSelfRef.fxp_sqrt_top__DOT__s_reg_134 = (0xffffff0U 
                                              & vlSelfRef.fxp_sqrt_top__DOT__s_reg_134);
    if ((1U & ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_block_state1)) 
               & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm)))) {
        vlSelfRef.fxp_sqrt_top__DOT__s_reg_134 = ((0xfU 
                                                   & vlSelfRef.fxp_sqrt_top__DOT__s_reg_134) 
                                                  | (vlSelfRef.__Vcellinp__fxp_sqrt_top__in_val 
                                                     << 4U));
    }
    if (vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg) {
        vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg = 0U;
        vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache = 0U;
        vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int = 1U;
        vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1 = 0U;
        vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg = 0U;
        vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm = 1U;
    } else {
        if (vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_continue) {
            vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg = 0U;
        } else if ((4U & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm))) {
            vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg = 1U;
        }
        if (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int) {
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache = 1U;
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int = 1U;
        } else {
            if (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg) {
                vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache = 0U;
            }
            if (((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm) 
                 & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg))) {
                vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int = 0U;
            }
        }
        if (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready) {
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1 = 0U;
        } else if (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm) {
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1 
                = vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg;
        }
        if ((1U & ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_block_state1)) 
                   & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm)))) {
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg = 1U;
        } else if (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready) {
            vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg = 0U;
        }
        vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm = vlSelfRef.fxp_sqrt_top__DOT__ap_NS_fsm;
    }
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm 
        = ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg) 
           || (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_NS_fsm));
    vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg = vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_1;
    vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_1 = vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_2;
    vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_2 = vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_rst;
}

VL_INLINE_OPT void Vfxp_sqrt_top___024root___nba_comb__TOP__0(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___nba_comb__TOP__0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*6:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    // Body
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i_fu_246_p2 
        = (0x1fU & ((IData)(1U) + (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)));
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
    vlSelfRef.fxp_sqrt_top__DOT__ap_block_state1 = 
        (1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
               | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg)));
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_NS_fsm 
        = vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm;
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready 
        = ((0x1dU == (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)) 
           & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm) 
              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1)));
    vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_loop_init 
        = ((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int) 
           & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg));
    VL_ASSIGN_SII(1,vlSelfRef.ap_ready, (1U & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                               >> 2U)));
    VL_ASSIGN_SII(1,vlSelfRef.ap_done, (IData)((((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                                 >> 2U) 
                                                | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg))));
    VL_ASSIGN_SII(1,vlSelfRef.ap_idle, (1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
                                              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm))));
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

void Vfxp_sqrt_top___024root___timing_resume(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___timing_resume\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((2ULL & vlSelfRef.__VactTriggered.word(0U))) {
        vlSelfRef.__VdlySched.resume();
    }
}

void Vfxp_sqrt_top___024root___eval_triggers__act(Vfxp_sqrt_top___024root* vlSelf);

bool Vfxp_sqrt_top___024root___eval_phase__act(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_phase__act\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<2> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vfxp_sqrt_top___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vfxp_sqrt_top___024root___timing_resume(vlSelf);
        Vfxp_sqrt_top___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vfxp_sqrt_top___024root___eval_phase__nba(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_phase__nba\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vfxp_sqrt_top___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__ico(Vfxp_sqrt_top___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__nba(Vfxp_sqrt_top___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__act(Vfxp_sqrt_top___024root* vlSelf);
#endif  // VL_DEBUG

void Vfxp_sqrt_top___024root___eval(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
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
            Vfxp_sqrt_top___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("../source/fxp_sqrt_top.v", 14, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vfxp_sqrt_top___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelfRef.__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vfxp_sqrt_top___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("../source/fxp_sqrt_top.v", 14, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vfxp_sqrt_top___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("../source/fxp_sqrt_top.v", 14, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vfxp_sqrt_top___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vfxp_sqrt_top___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vfxp_sqrt_top___024root___eval_debug_assertions(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_debug_assertions\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}
#endif  // VL_DEBUG
