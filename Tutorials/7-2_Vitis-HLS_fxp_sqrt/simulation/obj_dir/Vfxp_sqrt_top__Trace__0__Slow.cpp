// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_sc.h"
#include "Vfxp_sqrt_top__Syms.h"


VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_init_sub__TOP__0(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_init_sub__TOP__0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("fxp_sqrt_top", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+67,0,"ap_ST_fsm_state1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+68,0,"ap_ST_fsm_state2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+69,0,"ap_ST_fsm_state3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+33,0,"ap_clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+34,0,"ap_rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+35,0,"ap_start",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"ap_done",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+36,0,"ap_continue",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+56,0,"ap_idle",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"ap_ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+37,0,"in_val",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 23,0);
    tracep->declBus(c+47,0,"ap_return",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBit(c+3,0,"ap_rst_reg_2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+4,0,"ap_rst_reg_1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+5,0,"ap_rst_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+6,0,"ap_done_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+7,0,"ap_CS_fsm",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+8,0,"ap_CS_fsm_state1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+38,0,"s_fu_68_p3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBus(c+48,0,"s_reg_134",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBit(c+57,0,"ap_block_state1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+58,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_done",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+59,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_idle",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+39,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+40,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBit(c+41,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+42,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBit(c+41,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out_ap_vld",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+43,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_q_1_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 28,0);
    tracep->declBit(c+41,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_q_1_out_ap_vld",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+57,0,"ap_block_state1_ignore_call10",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+10,0,"ap_CS_fsm_state2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+49,0,"s_4_loc_fu_50",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+50,0,"p_v_loc_fu_46",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBus(c+51,0,"q_1_loc_fu_42",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 28,0);
    tracep->declBit(c+2,0,"ap_CS_fsm_state3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+52,0,"add_ln103_fu_92_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 28,0);
    tracep->declBus(c+53,0,"icmp_ln102_fu_86_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBus(c+54,0,"tmp_fu_98_p4",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBus(c+60,0,"ap_NS_fsm",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+57,0,"ap_ST_fsm_state1_blk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+61,0,"ap_ST_fsm_state2_blk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+70,0,"ap_ST_fsm_state3_blk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+71,0,"ap_ce_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+72,0,"ap_ST_fsm_pp0_stage0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+33,0,"ap_clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+5,0,"ap_rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"ap_start",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+58,0,"ap_done",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+59,0,"ap_idle",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+39,0,"ap_ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+48,0,"zext_ln82",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBus(c+40,0,"s_4_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBit(c+41,0,"s_4_out_ap_vld",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+42,0,"p_v_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBit(c+41,0,"p_v_out_ap_vld",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+43,0,"q_1_out",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 28,0);
    tracep->declBit(c+41,0,"q_1_out_ap_vld",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+11,0,"ap_CS_fsm",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+11,0,"ap_CS_fsm_pp0_stage0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"ap_enable_reg_pp0_iter0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"ap_enable_reg_pp0_iter1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+62,0,"ap_idle_pp0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+70,0,"ap_block_pp0_stage0_subdone",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+13,0,"icmp_ln89_fu_252_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+39,0,"ap_condition_exit_pp0_iter1_stage0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+39,0,"ap_loop_exit_ready",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+63,0,"ap_ready_int",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+14,0,"i1_fu_60",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+15,0,"i_fu_246_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+70,0,"ap_block_pp0_stage0_11001",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+44,0,"ap_loop_init",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+70,0,"ap_block_pp0_stage0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+16,0,"s_12_fu_64",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+40,0,"s_fu_203_p3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+55,0,"zext_ln82_cast_fu_103_p1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+17,0,"q_star4_fu_68",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 28,0);
    tracep->declBus(c+45,0,"q_star_fu_229_p3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 28,0);
    tracep->declBus(c+18,0,"q6_fu_72",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 28,0);
    tracep->declBus(c+43,0,"q_fu_237_p3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 28,0);
    tracep->declBit(c+70,0,"ap_block_pp0_stage0_01001",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+42,0,"empty_9_fu_220_p3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBus(c+19,0,"sub_ln91_fu_153_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+20,0,"or_ln_fu_163_p3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+21,0,"zext_ln91_fu_159_p1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+22,0,"shl_ln91_1_fu_147_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+23,0,"shl_ln91_fu_171_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+24,0,"or_ln1_fu_183_p3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+25,0,"shl_ln95_fu_191_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+26,0,"tmp_fu_139_p3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBus(c+27,0,"s_2_fu_197_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+28,0,"s_1_fu_177_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 30,0);
    tracep->declBus(c+29,0,"empty_fu_212_p1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBus(c+30,0,"empty_8_fu_216_p1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 27,0);
    tracep->declBit(c+31,0,"ap_done_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+73,0,"ap_continue_int",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+46,0,"ap_done_int",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+32,0,"ap_NS_fsm",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 0,0);
    tracep->declBit(c+64,0,"ap_enable_pp0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"ap_start_int",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+39,0,"ap_ready_sig",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+58,0,"ap_done_sig",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+74,0,"ap_ce_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("flow_control_loop_pipe_sequential_init_U", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+33,0,"ap_clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+5,0,"ap_rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"ap_start",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+39,0,"ap_ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+58,0,"ap_done",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"ap_start_int",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+63,0,"ap_ready_int",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+46,0,"ap_done_int",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+73,0,"ap_continue_int",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+44,0,"ap_loop_init",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+65,0,"ap_loop_init_int",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+66,0,"ap_done_cache",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+39,0,"ap_loop_exit_ready",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+46,0,"ap_loop_exit_done",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_init_top(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_init_top\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vfxp_sqrt_top___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vfxp_sqrt_top___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vfxp_sqrt_top___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_register(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_register\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    tracep->addConstCb(&Vfxp_sqrt_top___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vfxp_sqrt_top___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vfxp_sqrt_top___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vfxp_sqrt_top___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_const_0_sub_0(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_const_0\n"); );
    // Init
    Vfxp_sqrt_top___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfxp_sqrt_top___024root*>(voidSelf);
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vfxp_sqrt_top___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_const_0_sub_0(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_const_0_sub_0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullCData(oldp+67,(1U),3);
    bufp->fullCData(oldp+68,(2U),3);
    bufp->fullCData(oldp+69,(4U),3);
    bufp->fullBit(oldp+70,(0U));
    bufp->fullBit(oldp+71,(vlSelfRef.fxp_sqrt_top__DOT__ap_ce_reg));
    bufp->fullBit(oldp+72,(1U));
    bufp->fullBit(oldp+73,(1U));
    bufp->fullBit(oldp+74,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_ce_reg));
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_full_0_sub_0(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_full_0\n"); );
    // Init
    Vfxp_sqrt_top___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfxp_sqrt_top___024root*>(voidSelf);
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vfxp_sqrt_top___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_full_0_sub_0(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root__trace_full_0_sub_0\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullBit(oldp+1,((IData)((((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                    >> 2U) | (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg)))));
    bufp->fullBit(oldp+2,((1U & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                 >> 2U))));
    bufp->fullBit(oldp+3,(vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_2));
    bufp->fullBit(oldp+4,(vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg_1));
    bufp->fullBit(oldp+5,(vlSelfRef.fxp_sqrt_top__DOT__ap_rst_reg));
    bufp->fullBit(oldp+6,(vlSelfRef.fxp_sqrt_top__DOT__ap_done_reg));
    bufp->fullCData(oldp+7,(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm),3);
    bufp->fullBit(oldp+8,((1U & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm))));
    bufp->fullBit(oldp+9,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg));
    bufp->fullBit(oldp+10,((1U & ((IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm) 
                                  >> 1U))));
    bufp->fullBit(oldp+11,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm));
    bufp->fullBit(oldp+12,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1));
    bufp->fullBit(oldp+13,((0x1dU == (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60))));
    bufp->fullCData(oldp+14,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60),5);
    bufp->fullCData(oldp+15,((0x1fU & ((IData)(1U) 
                                       + (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))),5);
    bufp->fullIData(oldp+16,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64),31);
    bufp->fullIData(oldp+17,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68),29);
    bufp->fullIData(oldp+18,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72),29);
    bufp->fullCData(oldp+19,((0x1fU & ((IData)(0x1dU) 
                                       - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))),5);
    bufp->fullIData(oldp+20,((1U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 
                                    << 2U))),31);
    bufp->fullIData(oldp+21,((0x1fU & ((IData)(0x1dU) 
                                       - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))),31);
    bufp->fullIData(oldp+22,((0x7fffffffU & VL_SHIFTL_III(31,31,31, vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64, 1U))),31);
    bufp->fullIData(oldp+23,((0x7fffffffU & ((1U | 
                                              (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 
                                               << 2U)) 
                                             << (0x1fU 
                                                 & ((IData)(0x1dU) 
                                                    - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))))),31);
    bufp->fullIData(oldp+24,((3U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
                                    << 2U))),31);
    bufp->fullIData(oldp+25,((0x7fffffffU & ((3U | 
                                              (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
                                               << 2U)) 
                                             << (0x1fU 
                                                 & ((IData)(0x1dU) 
                                                    - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))))),31);
    bufp->fullBit(oldp+26,((1U & (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64 
                                  >> 0x1eU))));
    bufp->fullIData(oldp+27,((0x7fffffffU & (((3U | 
                                               (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68 
                                                << 2U)) 
                                              << (0x1fU 
                                                  & ((IData)(0x1dU) 
                                                     - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60)))) 
                                             + VL_SHIFTL_III(31,31,31, vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64, 1U)))),31);
    bufp->fullIData(oldp+28,((0x7fffffffU & (VL_SHIFTL_III(31,31,31, vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64, 1U) 
                                             - ((1U 
                                                 | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72 
                                                    << 2U)) 
                                                << 
                                                (0x1fU 
                                                 & ((IData)(0x1dU) 
                                                    - (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60))))))),31);
    bufp->fullIData(oldp+29,((0xfffffffU & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68)),28);
    bufp->fullIData(oldp+30,((0xfffffffU & vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72)),28);
    bufp->fullBit(oldp+31,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_reg));
    bufp->fullBit(oldp+32,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm));
    bufp->fullBit(oldp+33,(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_clk));
    bufp->fullBit(oldp+34,(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_rst));
    bufp->fullBit(oldp+35,(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start));
    bufp->fullBit(oldp+36,(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_continue));
    bufp->fullIData(oldp+37,(vlSelfRef.__Vcellinp__fxp_sqrt_top__in_val),24);
    bufp->fullIData(oldp+38,((vlSelfRef.__Vcellinp__fxp_sqrt_top__in_val 
                              << 4U)),28);
    bufp->fullBit(oldp+39,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready));
    bufp->fullIData(oldp+40,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out),31);
    bufp->fullBit(oldp+41,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld));
    bufp->fullIData(oldp+42,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out),28);
    bufp->fullIData(oldp+43,((1U | (vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out 
                                    << 1U))),29);
    bufp->fullBit(oldp+44,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_loop_init));
    bufp->fullIData(oldp+45,((vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out 
                              << 1U)),29);
    bufp->fullBit(oldp+46,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int));
    bufp->fullIData(oldp+47,((0xfffffffU & (VL_LTS_III(31, 0U, vlSelfRef.fxp_sqrt_top__DOT__s_4_loc_fu_50)
                                             ? (0xfffffffU 
                                                & (((IData)(1U) 
                                                    + vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42) 
                                                   >> 1U))
                                             : vlSelfRef.fxp_sqrt_top__DOT__p_v_loc_fu_46))),28);
    bufp->fullIData(oldp+48,(vlSelfRef.fxp_sqrt_top__DOT__s_reg_134),28);
    bufp->fullIData(oldp+49,(vlSelfRef.fxp_sqrt_top__DOT__s_4_loc_fu_50),31);
    bufp->fullIData(oldp+50,(vlSelfRef.fxp_sqrt_top__DOT__p_v_loc_fu_46),28);
    bufp->fullIData(oldp+51,(vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42),29);
    bufp->fullIData(oldp+52,((0x1fffffffU & ((IData)(1U) 
                                             + vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42))),29);
    bufp->fullBit(oldp+53,(VL_LTS_III(31, 0U, vlSelfRef.fxp_sqrt_top__DOT__s_4_loc_fu_50)));
    bufp->fullIData(oldp+54,((0xfffffffU & (((IData)(1U) 
                                             + vlSelfRef.fxp_sqrt_top__DOT__q_1_loc_fu_42) 
                                            >> 1U))),28);
    bufp->fullIData(oldp+55,(vlSelfRef.fxp_sqrt_top__DOT__s_reg_134),31);
    bufp->fullBit(oldp+56,((1U & ((~ (IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_start)) 
                                  & (IData)(vlSelfRef.fxp_sqrt_top__DOT__ap_CS_fsm)))));
    bufp->fullBit(oldp+57,(vlSelfRef.fxp_sqrt_top__DOT__ap_block_state1));
    bufp->fullBit(oldp+58,(((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int) 
                            | ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg)) 
                               & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache)))));
    bufp->fullBit(oldp+59,((((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1)) 
                             & (~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg))) 
                            & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm))));
    bufp->fullCData(oldp+60,(vlSelfRef.fxp_sqrt_top__DOT__ap_NS_fsm),3);
    bufp->fullBit(oldp+61,((1U & (~ ((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int) 
                                     | ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg)) 
                                        & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache)))))));
    bufp->fullBit(oldp+62,((1U & ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1)) 
                                  & (~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg))))));
    bufp->fullBit(oldp+63,(((IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm) 
                            & (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg))));
    bufp->fullBit(oldp+64,((1U & (~ ((~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1)) 
                                     & (~ (IData)(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg)))))));
    bufp->fullBit(oldp+65,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int));
    bufp->fullBit(oldp+66,(vlSelfRef.fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache));
}
