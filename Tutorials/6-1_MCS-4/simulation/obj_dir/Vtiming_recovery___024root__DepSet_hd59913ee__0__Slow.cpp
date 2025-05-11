// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtiming_recovery.h for the primary calling header

#include "Vtiming_recovery__pch.h"
#include "Vtiming_recovery__Syms.h"
#include "Vtiming_recovery___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtiming_recovery___024root___dump_triggers__stl(Vtiming_recovery___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtiming_recovery___024root___eval_triggers__stl(Vtiming_recovery___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtiming_recovery___024root___eval_triggers__stl\n"); );
    Vtiming_recovery__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VstlTriggered.set(0U, (IData)(vlSelfRef.__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtiming_recovery___024root___dump_triggers__stl(vlSelf);
    }
#endif
}
