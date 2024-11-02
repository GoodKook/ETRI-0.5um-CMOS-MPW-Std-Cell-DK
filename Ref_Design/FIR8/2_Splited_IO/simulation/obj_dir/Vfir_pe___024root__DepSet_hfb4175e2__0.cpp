// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfir_pe.h for the primary calling header

#include "Vfir_pe__pch.h"
#include "Vfir_pe__Syms.h"
#include "Vfir_pe___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__ico(Vfir_pe___024root* vlSelf);
#endif  // VL_DEBUG

void Vfir_pe___024root___eval_triggers__ico(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (IData)(vlSelf->__VicoFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vfir_pe___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfir_pe___024root___dump_triggers__act(Vfir_pe___024root* vlSelf);
#endif  // VL_DEBUG

void Vfir_pe___024root___eval_triggers__act(Vfir_pe___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vfir_pe__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfir_pe___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->__Vcellinp__fir_pe__clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP____Vcellinp__fir_pe__clk__0))));
    vlSelf->__Vtrigprevexpr___TOP____Vcellinp__fir_pe__clk__0 
        = vlSelf->__Vcellinp__fir_pe__clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vfir_pe___024root___dump_triggers__act(vlSelf);
    }
#endif
}
