// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vfxp_sqrt_top.h for the primary calling header

#ifndef VERILATED_VFXP_SQRT_TOP___024ROOT_H_
#define VERILATED_VFXP_SQRT_TOP___024ROOT_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"
#include "verilated_timing.h"


class Vfxp_sqrt_top__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vfxp_sqrt_top___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ __Vcellinp__fxp_sqrt_top__ap_clk;
    CData/*0:0*/ __Vcellinp__fxp_sqrt_top__ap_continue;
    CData/*0:0*/ __Vcellinp__fxp_sqrt_top__ap_start;
    CData/*0:0*/ __Vcellinp__fxp_sqrt_top__ap_rst;
    CData/*0:0*/ fxp_sqrt_top__DOT__ap_rst_reg_2;
    CData/*0:0*/ fxp_sqrt_top__DOT__ap_rst_reg_1;
    CData/*0:0*/ fxp_sqrt_top__DOT__ap_rst_reg;
    CData/*0:0*/ fxp_sqrt_top__DOT__ap_done_reg;
    CData/*2:0*/ fxp_sqrt_top__DOT__ap_CS_fsm;
    CData/*0:0*/ fxp_sqrt_top__DOT__ap_block_state1;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg;
    CData/*2:0*/ fxp_sqrt_top__DOT__ap_NS_fsm;
    CData/*0:0*/ fxp_sqrt_top__DOT__ap_ce_reg;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_CS_fsm;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_enable_reg_pp0_iter1;
    CData/*4:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i1_fu_60;
    CData/*4:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__i_fu_246_p2;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_loop_init;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_reg;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_done_int;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_NS_fsm;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__ap_ce_reg;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int;
    CData/*0:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP____Vcellinp__fxp_sqrt_top__ap_clk__0;
    CData/*0:0*/ __VactContinue;
    IData/*23:0*/ __Vcellinp__fxp_sqrt_top__in_val;
    IData/*27:0*/ fxp_sqrt_top__DOT__s_reg_134;
    IData/*30:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out;
    IData/*27:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out;
    IData/*30:0*/ fxp_sqrt_top__DOT__s_4_loc_fu_50;
    IData/*27:0*/ fxp_sqrt_top__DOT__p_v_loc_fu_46;
    IData/*28:0*/ fxp_sqrt_top__DOT__q_1_loc_fu_42;
    IData/*30:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__s_12_fu_64;
    IData/*28:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q_star4_fu_68;
    IData/*28:0*/ fxp_sqrt_top__DOT__grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60__DOT__q6_fu_72;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*0:0*/, 8> __Vm_traceActivity;
    sc_core::sc_in<bool> ap_clk;
    sc_core::sc_in<bool> ap_rst;
    sc_core::sc_in<bool> ap_start;
    sc_core::sc_out<bool> ap_done;
    sc_core::sc_in<bool> ap_continue;
    sc_core::sc_out<bool> ap_idle;
    sc_core::sc_out<bool> ap_ready;
    sc_core::sc_in<uint32_t> in_val;
    sc_core::sc_out<uint32_t> ap_return;
    VlDelayScheduler __VdlySched;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<2> __VactTriggered;
    VlTriggerVec<2> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vfxp_sqrt_top__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vfxp_sqrt_top___024root(Vfxp_sqrt_top__Syms* symsp, const char* v__name);
    ~Vfxp_sqrt_top___024root();
    VL_UNCOPYABLE(Vfxp_sqrt_top___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
