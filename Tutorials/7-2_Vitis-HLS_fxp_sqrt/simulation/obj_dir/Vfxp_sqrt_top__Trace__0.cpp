// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_sc.h"
#include "Vfxp_sqrt_top__Syms.h"


void Vfxp_sqrt_top___024root__trace_chg_0_sub_0(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vfxp_sqrt_top___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_chg_0\n"); );
    // Init
    Vfxp_sqrt_top___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfxp_sqrt_top___024root*>(voidSelf);
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vfxp_sqrt_top___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vfxp_sqrt_top___024root__trace_chg_0_sub_0(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_chg_0_sub_0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY((((vlSelfRef.__Vm_traceActivity
                       [1U] | vlSelfRef.__Vm_traceActivity
                       [2U]) | vlSelfRef.__Vm_traceActivity
                      [6U])))) {
        bufp->chgBit(oldp+0,((IData)((((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                       >> 2U) | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg)))));
        bufp->chgBit(oldp+1,((1U & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                    >> 2U))));
        bufp->chgBit(oldp+2,(vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_2));
        bufp->chgBit(oldp+3,(vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_1));
        bufp->chgBit(oldp+4,(vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg));
        bufp->chgBit(oldp+5,(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg));
        bufp->chgCData(oldp+6,(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm),3);
        bufp->chgBit(oldp+7,((1U & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm))));
        bufp->chgBit(oldp+8,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg));
        bufp->chgBit(oldp+9,((1U & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                    >> 1U))));
    }
    if (VL_UNLIKELY((((vlSelfRef.__Vm_traceActivity
                       [1U] | vlSelfRef.__Vm_traceActivity
                       [3U]) | vlSelfRef.__Vm_traceActivity
                      [6U])))) {
        bufp->chgBit(oldp+10,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm));
        bufp->chgBit(oldp+11,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1));
        bufp->chgBit(oldp+12,((0x1dU == (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60))));
        bufp->chgCData(oldp+13,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60),5);
        bufp->chgCData(oldp+14,((0x1fU & ((IData)(1U) 
                                          + (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))),5);
        bufp->chgIData(oldp+15,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64),31);
        bufp->chgIData(oldp+16,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68),29);
        bufp->chgIData(oldp+17,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72),29);
        bufp->chgCData(oldp+18,((0x1fU & ((IData)(0x1dU) 
                                          - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))),5);
        bufp->chgIData(oldp+19,((1U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 
                                       << 2U))),31);
        bufp->chgIData(oldp+20,((0x1fU & ((IData)(0x1dU) 
                                          - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))),31);
        bufp->chgIData(oldp+21,((0x7fffffffU & VL_SHIFTL_III(31,31,31, vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64, 1U))),31);
        bufp->chgIData(oldp+22,((0x7fffffffU & ((1U 
                                                 | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 
                                                    << 2U)) 
                                                << 
                                                (0x1fU 
                                                 & ((IData)(0x1dU) 
                                                    - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))))),31);
        bufp->chgIData(oldp+23,((3U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
                                       << 2U))),31);
        bufp->chgIData(oldp+24,((0x7fffffffU & ((3U 
                                                 | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
                                                    << 2U)) 
                                                << 
                                                (0x1fU 
                                                 & ((IData)(0x1dU) 
                                                    - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))))),31);
        bufp->chgBit(oldp+25,((1U & (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64 
                                     >> 0x1eU))));
        bufp->chgIData(oldp+26,((0x7fffffffU & (((3U 
                                                  | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
                                                     << 2U)) 
                                                 << 
                                                 (0x1fU 
                                                  & ((IData)(0x1dU) 
                                                     - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))) 
                                                + VL_SHIFTL_III(31,31,31, vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64, 1U)))),31);
        bufp->chgIData(oldp+27,((0x7fffffffU & (VL_SHIFTL_III(31,31,31, vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64, 1U) 
                                                - (
                                                   (1U 
                                                    | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 
                                                       << 2U)) 
                                                   << 
                                                   (0x1fU 
                                                    & ((IData)(0x1dU) 
                                                       - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60))))))),31);
        bufp->chgIData(oldp+28,((0xfffffffU & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68)),28);
        bufp->chgIData(oldp+29,((0xfffffffU & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72)),28);
        bufp->chgBit(oldp+30,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_reg));
        bufp->chgBit(oldp+31,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm));
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[4U]))) {
        bufp->chgBit(oldp+32,(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_clk));
        bufp->chgBit(oldp+33,(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_rst));
        bufp->chgBit(oldp+34,(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start));
        bufp->chgBit(oldp+35,(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_continue));
        bufp->chgIData(oldp+36,(vlSelfRef.__Vcellinp__fxp_sqrt_top__in_val),24);
        bufp->chgIData(oldp+37,((vlSelfRef.__Vcellinp__fxp_sqrt_top__in_val 
                                 << 4U)),28);
    }
    if (VL_UNLIKELY(((vlSelfRef.__Vm_traceActivity[5U] 
                      | vlSelfRef.__Vm_traceActivity
                      [7U])))) {
        bufp->chgBit(oldp+38,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready));
        bufp->chgIData(oldp+39,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out),31);
        bufp->chgBit(oldp+40,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld));
        bufp->chgIData(oldp+41,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out),28);
        bufp->chgIData(oldp+42,((1U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out 
                                       << 1U))),29);
        bufp->chgBit(oldp+43,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_loop_init));
        bufp->chgIData(oldp+44,((vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out 
                                 << 1U)),29);
        bufp->chgBit(oldp+45,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int));
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[6U]))) {
        bufp->chgIData(oldp+46,((0xfffffffU & (VL_LTS_III(31, 0U, vlSelfRef.fxp_sqrt_top__DOT__s_4_loc_fu_50)
                                                ? (0xfffffffU 
                                                   & (((IData)(1U) 
                                                       + vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42) 
                                                      >> 1U))
                                                : vlSelfRef.fxp_sqrt_top__DOT__p_v_loc_fu_46))),28);
        bufp->chgIData(oldp+47,(vlSelfRef.fxp_sqrt_top__DOT__s_reg_134),28);
        bufp->chgIData(oldp+48,(vlSelfRef.fxp_sqrt_top__DOT__s_4_loc_fu_50),31);
        bufp->chgIData(oldp+49,(vlSelfRef.fxp_sqrt_top__DOT__p_v_loc_fu_46),28);
        bufp->chgIData(oldp+50,(vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42),29);
        bufp->chgIData(oldp+51,((0x1fffffffU & ((IData)(1U) 
                                                + vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42))),29);
        bufp->chgBit(oldp+52,(VL_LTS_III(31, 0U, vlSelfRef.fxp_sqrt_top__DOT__s_4_loc_fu_50)));
        bufp->chgIData(oldp+53,((0xfffffffU & (((IData)(1U) 
                                                + vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42) 
                                               >> 1U))),28);
        bufp->chgIData(oldp+54,(vlSelfRef.fxp_sqrt_top__DOT__s_reg_134),31);
    }
    bufp->chgBit(oldp+55,((1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
                                 & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm)))));
    bufp->chgBit(oldp+56,(vlSelfRef.fxp_sqrt_top__DOT__ap_block_state1));
    bufp->chgBit(oldp+57,(((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int) 
                           | ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg)) 
                              & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache)))));
    bufp->chgBit(oldp+58,((((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1)) 
                            & (~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg))) 
                           & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm))));
    bufp->chgCData(oldp+59,(vlSelfRef.fxp_sqrt_top__DOT__ap_NS_fsm),3);
    bufp->chgBit(oldp+60,((1U & (~ ((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int) 
                                    | ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg)) 
                                       & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache)))))));
    bufp->chgBit(oldp+61,((1U & ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1)) 
                                 & (~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg))))));
    bufp->chgBit(oldp+62,(((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm) 
                           & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg))));
    bufp->chgBit(oldp+63,((1U & (~ ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1)) 
                                    & (~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg)))))));
    bufp->chgBit(oldp+64,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int));
    bufp->chgBit(oldp+65,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache));
}

void Vfxp_sqrt_top___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_cleanup\n"); );
    // Init
    Vfxp_sqrt_top___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfxp_sqrt_top___024root*>(voidSelf);
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[4U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[5U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[6U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[7U] = 0U;
}
