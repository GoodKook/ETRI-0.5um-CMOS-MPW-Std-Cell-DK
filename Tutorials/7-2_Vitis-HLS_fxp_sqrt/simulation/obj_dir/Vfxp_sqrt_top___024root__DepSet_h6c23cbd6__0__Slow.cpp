// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfxp_sqrt_top.h for the primary calling header

#include "Vfxp_sqrt_top__pch.h"
#include "Vfxp_sqrt_top__Syms.h"
#include "Vfxp_sqrt_top___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vfxp_sqrt_top___024root___dump_triggers__stl(Vfxp_sqrt_top___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vfxp_sqrt_top___024root___eval_triggers__stl(Vfxp_sqrt_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfxp_sqrt_top___024root___eval_triggers__stl\n"); );
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VstlTriggered.set(0U, (IData)(vlSelfRef.__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vfxp_sqrt_top___024root___dump_triggers__stl(vlSelf);
    }
#endif
}
