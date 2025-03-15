// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfxp_sqrt_top.h for the primary calling header

#include "Vfxp_sqrt_top__pch.h"
#include "Vfxp_sqrt_top__Syms.h"
#include "Vfxp_sqrt_top___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__ico(Vfxp_sqrt_top___024root* vlSelf);
#endif  // VL_DEBUG

void Vfxp_sqrt_top___024root___eval_triggers__ico(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_triggers__ico\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VicoTriggered.set(0U, (IData)(vlSelfRef.__VicoFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vfxp_sqrt_top___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__act(Vfxp_sqrt_top___024root* vlSelf);
#endif  // VL_DEBUG

void Vfxp_sqrt_top___024root___eval_triggers__act(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_triggers__act\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VactTriggered.set(0U, ((IData)(vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_clk) 
                                       & (~ (IData)(vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__fxp_sqrt_top__ap_clk__0))));
    vlSelfRef.__VactTriggered.set(1U, vlSelfRef.__VdlySched.awaitingCurrentTime());
    vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__fxp_sqrt_top__ap_clk__0 
        = vlSelfRef.__Vcellinp__fxp_sqrt_top__ap_clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vfxp_sqrt_top___024root___dump_triggers__act(vlSelf);
    }
#endif
}
