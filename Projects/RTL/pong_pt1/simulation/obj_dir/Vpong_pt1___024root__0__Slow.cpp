// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vpong_pt1.h for the primary calling header

#include "Vpong_pt1__pch.h"

VL_ATTR_COLD void Vpong_pt1___024root___eval_static(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_static\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__pong_pt1__clk__0 
        = vlSelfRef.__Vcellinp__pong_pt1__clk;
    vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__pong_pt1__reset__0 
        = vlSelfRef.__Vcellinp__pong_pt1__reset;
}

VL_ATTR_COLD void Vpong_pt1___024root___eval_initial(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_initial\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vpong_pt1___024root___eval_final(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_final\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vpong_pt1___024root___dump_triggers__stl(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vpong_pt1___024root___eval_phase__stl(Vpong_pt1___024root* vlSelf);

VL_ATTR_COLD void Vpong_pt1___024root___eval_settle(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_settle\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    IData/*31:0*/ __VstlIterCount;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    do {
        if (VL_UNLIKELY(((0x00000064U < __VstlIterCount)))) {
#ifdef VL_DEBUG
            Vpong_pt1___024root___dump_triggers__stl(vlSelfRef.__VstlTriggered, "stl"s);
#endif
            VL_FATAL_MT("../pong_pt1/pong_pt1.v", 8, "", "Settle region did not converge after 100 tries");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
    } while (Vpong_pt1___024root___eval_phase__stl(vlSelf));
}

VL_ATTR_COLD void Vpong_pt1___024root___eval_triggers__stl(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_triggers__stl\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VstlTriggered[0U] = ((0xfffffffffffffffeULL 
                                      & vlSelfRef.__VstlTriggered
                                      [0U]) | (IData)((IData)(vlSelfRef.__VstlFirstIteration)));
    vlSelfRef.__VstlFirstIteration = 0U;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vpong_pt1___024root___dump_triggers__stl(vlSelfRef.__VstlTriggered, "stl"s);
    }
#endif
}

VL_ATTR_COLD bool Vpong_pt1___024root___trigger_anySet__stl(const VlUnpacked<QData/*63:0*/, 1> &in);

#ifdef VL_DEBUG
VL_ATTR_COLD void Vpong_pt1___024root___dump_triggers__stl(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(Vpong_pt1___024root___trigger_anySet__stl(triggers))))) {
        VL_DBG_MSGS("         No '" + tag + "' region triggers active\n");
    }
    if ((1U & (IData)(triggers[0U]))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD bool Vpong_pt1___024root___trigger_anySet__stl(const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___trigger_anySet__stl\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        if (in[n]) {
            return (1U);
        }
        n = ((IData)(1U) + n);
    } while ((1U > n));
    return (0U);
}

extern const VlUnpacked<CData/*7:0*/, 8> Vpong_pt1__ConstPool__TABLE_h01d43c36_0;

VL_ATTR_COLD void Vpong_pt1___024root___stl_sequent__TOP__0(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___stl_sequent__TOP__0\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*2:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    // Body
    VL_ASSIGN_SII(1, vlSelfRef.vsync, (0x003fU < (IData)(vlSelfRef.pong_pt1__DOT__y)));
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__enable, vlSelfRef.enable);
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__reset, vlSelfRef.reset);
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__clk, vlSelfRef.clk);
    VL_ASSIGN_SII(1, vlSelfRef.hsync, ((0x0080U < (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                       & ((0x0040U 
                                           > (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                          & (0x0082U 
                                             > (IData)(vlSelfRef.pong_pt1__DOT__x)))));
    vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_next 
        = vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_reg;
    if ((1U > (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg))) {
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_next = 1U;
    } else if ((0x003fU < (0x000001ffU & ((IData)(7U) 
                                          + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg))))) {
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_next = 0x01ffU;
    }
    vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_next 
        = vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_reg;
    if ((1U <= (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg))) {
        if ((0x003fU >= (0x000001ffU & ((IData)(7U) 
                                        + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg))))) {
            if ((0x000eU >= (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg))) {
                vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_next = 1U;
            } else if (((0x007aU <= (0x000001ffU & 
                                     ((IData)(7U) + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))) 
                        & ((0x007eU >= (0x000001ffU 
                                        & ((IData)(7U) 
                                           + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))) 
                           & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg) 
                               <= (0x000001ffU & ((IData)(7U) 
                                                  + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)))) 
                              & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                                 <= (0x000001ffU & 
                                     ((IData)(0x000fU) 
                                      + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg)))))))) {
                vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_next = 0x01ffU;
            }
        }
    }
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__down, vlSelfRef.down);
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__up, vlSelfRef.up);
    vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0 
        = (0x000001ffU & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg) 
                          + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_reg)));
    __Vtableidx1 = (7U & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                          - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)));
    vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data = Vpong_pt1__ConstPool__TABLE_h01d43c36_0
        [__Vtableidx1];
    vlSelfRef.pong_pt1__DOT__pg__DOT__video_on = ((0x0080U 
                                                   >= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                                  & (0x0040U 
                                                     >= (IData)(vlSelfRef.pong_pt1__DOT__y)));
    vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick 
        = ((0x0041U == (IData)(vlSelfRef.pong_pt1__DOT__y)) 
           & (0U == (IData)(vlSelfRef.pong_pt1__DOT__x)));
    VL_ASSIGN_SII(1, vlSelfRef.p_tick, ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__video_on) 
                                        & ((0x003fU 
                                            >= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                           & (IData)(vlSelfRef.pong_pt1__DOT__pixel_tick))));
    VL_ASSIGN_SII(1, vlSelfRef.rgb, ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__video_on) 
                                     & (((6U <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                         & (0x000eU 
                                            >= (IData)(vlSelfRef.pong_pt1__DOT__x))) 
                                        | (((0x007aU 
                                             <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                            & ((0x007eU 
                                                >= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                               & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg) 
                                                   <= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                                  & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                                     <= 
                                                     (0x000001ffU 
                                                      & ((IData)(0x000fU) 
                                                         + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg))))))) 
                                           | ((((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg) 
                                                <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                               & (((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                                   <= 
                                                   (0x000001ffU 
                                                    & ((IData)(7U) 
                                                       + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))) 
                                                  & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                                                      <= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                                     & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                                        <= 
                                                        (0x000001ffU 
                                                         & ((IData)(7U) 
                                                            + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg))))))) 
                                              & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data) 
                                                 >> 
                                                 (7U 
                                                  & ((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                                     - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))))))));
    vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_next = vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg;
    if (vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick) {
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_next 
            = (0x000001ffU & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                              + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_reg)));
        vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_next 
            = ((0x0080U < (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0))
                ? 0U : (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0));
        if (((IData)(vlSelfRef.__Vcellinp__pong_pt1__up) 
             & (1U < (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg)))) {
            vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_next 
                = (0x000001ffU & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg) 
                                  - (IData)(1U)));
        } else if (((IData)(vlSelfRef.__Vcellinp__pong_pt1__down) 
                    & (0x003eU > (0x000001ffU & ((IData)(0x000fU) 
                                                 + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg)))))) {
            vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_next 
                = (0x000001ffU & ((IData)(1U) + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg)));
        }
    } else {
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_next 
            = (0x000001ffU & (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg));
        vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_next 
            = vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg;
    }
}

VL_ATTR_COLD void Vpong_pt1___024root____Vm_traceActivitySetAll(Vpong_pt1___024root* vlSelf);

VL_ATTR_COLD void Vpong_pt1___024root___eval_stl(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_stl\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered[0U])) {
        Vpong_pt1___024root___stl_sequent__TOP__0(vlSelf);
        Vpong_pt1___024root____Vm_traceActivitySetAll(vlSelf);
    }
}

VL_ATTR_COLD bool Vpong_pt1___024root___eval_phase__stl(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_phase__stl\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*0:0*/ __VstlExecute;
    // Body
    Vpong_pt1___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = Vpong_pt1___024root___trigger_anySet__stl(vlSelfRef.__VstlTriggered);
    if (__VstlExecute) {
        Vpong_pt1___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

bool Vpong_pt1___024root___trigger_anySet__ico(const VlUnpacked<QData/*63:0*/, 1> &in);

#ifdef VL_DEBUG
VL_ATTR_COLD void Vpong_pt1___024root___dump_triggers__ico(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___dump_triggers__ico\n"); );
    // Body
    if ((1U & (~ (IData)(Vpong_pt1___024root___trigger_anySet__ico(triggers))))) {
        VL_DBG_MSGS("         No '" + tag + "' region triggers active\n");
    }
    if ((1U & (IData)(triggers[0U]))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

bool Vpong_pt1___024root___trigger_anySet__act(const VlUnpacked<QData/*63:0*/, 1> &in);

#ifdef VL_DEBUG
VL_ATTR_COLD void Vpong_pt1___024root___dump_triggers__act(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(Vpong_pt1___024root___trigger_anySet__act(triggers))))) {
        VL_DBG_MSGS("         No '" + tag + "' region triggers active\n");
    }
    if ((1U & (IData)(triggers[0U]))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 0 is active: @(posedge __Vcellinp__pong_pt1__clk)\n");
    }
    if ((1U & (IData)((triggers[0U] >> 1U)))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 1 is active: @(posedge __Vcellinp__pong_pt1__reset)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vpong_pt1___024root____Vm_traceActivitySetAll(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root____Vm_traceActivitySetAll\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vm_traceActivity[0U] = 1U;
    vlSelfRef.__Vm_traceActivity[1U] = 1U;
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
}

VL_ATTR_COLD void Vpong_pt1___024root___ctor_var_reset(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___ctor_var_reset\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelf->__Vcellinp__pong_pt1__down = 0;
    vlSelf->__Vcellinp__pong_pt1__up = 0;
    vlSelf->__Vcellinp__pong_pt1__enable = 0;
    vlSelf->__Vcellinp__pong_pt1__reset = 0;
    vlSelf->__Vcellinp__pong_pt1__clk = 0;
    const uint64_t __VscopeHash = VL_MURMUR64_HASH(vlSelf->vlNamep);
    vlSelf->pong_pt1__DOT__pixel_tick = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 2729955455293620796ull);
    vlSelf->pong_pt1__DOT__x = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 7342697536510208204ull);
    vlSelf->pong_pt1__DOT__y = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 12553890425653755478ull);
    vlSelf->pong_pt1__DOT__pg__DOT__video_on = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 9797156401063956028ull);
    vlSelf->pong_pt1__DOT__pg__DOT__refresh_tick = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 10840995232764598097ull);
    vlSelf->pong_pt1__DOT__pg__DOT__y_pad_reg = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 8217770780577461748ull);
    vlSelf->pong_pt1__DOT__pg__DOT__y_pad_next = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 4873453296684820813ull);
    vlSelf->pong_pt1__DOT__pg__DOT__y_ball_reg = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 11407767918297898760ull);
    vlSelf->pong_pt1__DOT__pg__DOT__x_ball_reg = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 6008439985990560527ull);
    vlSelf->pong_pt1__DOT__pg__DOT__y_ball_next = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 1752131570576451094ull);
    vlSelf->pong_pt1__DOT__pg__DOT__x_ball_next = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 5786401253642407209ull);
    vlSelf->pong_pt1__DOT__pg__DOT__x_delta_reg = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 12759049130277568101ull);
    vlSelf->pong_pt1__DOT__pg__DOT__x_delta_next = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 17731656614522125766ull);
    vlSelf->pong_pt1__DOT__pg__DOT__y_delta_reg = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 2494997832194653531ull);
    vlSelf->pong_pt1__DOT__pg__DOT__y_delta_next = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 16409356556298902066ull);
    vlSelf->pong_pt1__DOT__pg__DOT__rom_data = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 4444332211199123171ull);
    vlSelf->pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0 = 0;
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__VstlTriggered[__Vi0] = 0;
    }
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__VicoTriggered[__Vi0] = 0;
    }
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__VactTriggered[__Vi0] = 0;
    }
    vlSelf->__Vtrigprevexpr___TOP____Vcellinp__pong_pt1__clk__0 = 0;
    vlSelf->__Vtrigprevexpr___TOP____Vcellinp__pong_pt1__reset__0 = 0;
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__VnbaTriggered[__Vi0] = 0;
    }
    for (int __Vi0 = 0; __Vi0 < 3; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
