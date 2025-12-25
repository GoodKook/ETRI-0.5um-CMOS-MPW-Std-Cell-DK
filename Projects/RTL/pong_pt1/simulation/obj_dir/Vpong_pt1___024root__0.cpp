// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vpong_pt1.h for the primary calling header

#include "Vpong_pt1__pch.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vpong_pt1___024root___dump_triggers__ico(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag);
#endif  // VL_DEBUG

void Vpong_pt1___024root___eval_triggers__ico(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_triggers__ico\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VicoTriggered[0U] = ((0xfffffffffffffffeULL 
                                      & vlSelfRef.__VicoTriggered
                                      [0U]) | (IData)((IData)(vlSelfRef.__VicoFirstIteration)));
    vlSelfRef.__VicoFirstIteration = 0U;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vpong_pt1___024root___dump_triggers__ico(vlSelfRef.__VicoTriggered, "ico"s);
    }
#endif
}

bool Vpong_pt1___024root___trigger_anySet__ico(const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___trigger_anySet__ico\n"); );
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

void Vpong_pt1___024root___ico_sequent__TOP__0(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___ico_sequent__TOP__0\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__reset, vlSelfRef.reset);
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__clk, vlSelfRef.clk);
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__enable, vlSelfRef.enable);
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__down, vlSelfRef.down);
    VL_ASSIGN_ISI(1, vlSelfRef.__Vcellinp__pong_pt1__up, vlSelfRef.up);
    vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_next = vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg;
    if (vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick) {
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
    }
}

void Vpong_pt1___024root___eval_ico(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_ico\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered[0U])) {
        Vpong_pt1___024root___ico_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[1U] = 1U;
    }
}

bool Vpong_pt1___024root___eval_phase__ico(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_phase__ico\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*0:0*/ __VicoExecute;
    // Body
    Vpong_pt1___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = Vpong_pt1___024root___trigger_anySet__ico(vlSelfRef.__VicoTriggered);
    if (__VicoExecute) {
        Vpong_pt1___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vpong_pt1___024root___dump_triggers__act(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag);
#endif  // VL_DEBUG

void Vpong_pt1___024root___eval_triggers__act(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_triggers__act\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VactTriggered[0U] = (QData)((IData)(
                                                    ((((IData)(vlSelfRef.__Vcellinp__pong_pt1__reset) 
                                                       & (~ (IData)(vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__pong_pt1__reset__0))) 
                                                      << 1U) 
                                                     | ((IData)(vlSelfRef.__Vcellinp__pong_pt1__clk) 
                                                        & (~ (IData)(vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__pong_pt1__clk__0))))));
    vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__pong_pt1__clk__0 
        = vlSelfRef.__Vcellinp__pong_pt1__clk;
    vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__pong_pt1__reset__0 
        = vlSelfRef.__Vcellinp__pong_pt1__reset;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vpong_pt1___024root___dump_triggers__act(vlSelfRef.__VactTriggered, "act"s);
    }
#endif
}

bool Vpong_pt1___024root___trigger_anySet__act(const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___trigger_anySet__act\n"); );
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

void Vpong_pt1___024root___nba_sequent__TOP__0(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___nba_sequent__TOP__0\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*2:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    CData/*0:0*/ __Vdly__pong_pt1__DOT__pixel_tick;
    __Vdly__pong_pt1__DOT__pixel_tick = 0;
    SData/*8:0*/ __Vdly__pong_pt1__DOT__x;
    __Vdly__pong_pt1__DOT__x = 0;
    SData/*8:0*/ __Vdly__pong_pt1__DOT__y;
    __Vdly__pong_pt1__DOT__y = 0;
    // Body
    __Vdly__pong_pt1__DOT__pixel_tick = vlSelfRef.pong_pt1__DOT__pixel_tick;
    __Vdly__pong_pt1__DOT__x = vlSelfRef.pong_pt1__DOT__x;
    __Vdly__pong_pt1__DOT__y = vlSelfRef.pong_pt1__DOT__y;
    __Vdly__pong_pt1__DOT__pixel_tick = ((~ (IData)(vlSelfRef.__Vcellinp__pong_pt1__reset)) 
                                         & ((IData)(vlSelfRef.__Vcellinp__pong_pt1__enable) 
                                            & (~ (IData)(vlSelfRef.pong_pt1__DOT__pixel_tick))));
    if (vlSelfRef.__Vcellinp__pong_pt1__reset) {
        __Vdly__pong_pt1__DOT__x = 0x0080U;
        __Vdly__pong_pt1__DOT__y = 0x0040U;
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_reg = 2U;
        vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_reg = 2U;
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg = 0U;
        vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg = 0U;
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg = 0U;
    } else {
        if (vlSelfRef.pong_pt1__DOT__pixel_tick) {
            if ((0x0082U <= (IData)(vlSelfRef.pong_pt1__DOT__x))) {
                __Vdly__pong_pt1__DOT__y = ((0x0041U 
                                             <= (IData)(vlSelfRef.pong_pt1__DOT__y))
                                             ? 0U : 
                                            (0x000001ffU 
                                             & ((IData)(1U) 
                                                + (IData)(vlSelfRef.pong_pt1__DOT__y))));
                __Vdly__pong_pt1__DOT__x = 0U;
            } else {
                __Vdly__pong_pt1__DOT__x = (0x000001ffU 
                                            & ((IData)(1U) 
                                               + (IData)(vlSelfRef.pong_pt1__DOT__x)));
            }
        }
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_reg 
            = vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_next;
        vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_reg 
            = vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_next;
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg 
            = vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_next;
        vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg 
            = vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_next;
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg 
            = vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_next;
    }
    vlSelfRef.pong_pt1__DOT__pixel_tick = __Vdly__pong_pt1__DOT__pixel_tick;
    vlSelfRef.pong_pt1__DOT__x = __Vdly__pong_pt1__DOT__x;
    vlSelfRef.pong_pt1__DOT__y = __Vdly__pong_pt1__DOT__y;
    VL_ASSIGN_SII(1, vlSelfRef.vsync, (0x003fU < (IData)(vlSelfRef.pong_pt1__DOT__y)));
    VL_ASSIGN_SII(1, vlSelfRef.hsync, ((0x0080U < (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                       & ((0x0040U 
                                           > (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                          & (0x0082U 
                                             > (IData)(vlSelfRef.pong_pt1__DOT__x)))));
    vlSelfRef.pong_pt1__DOT__pg__DOT__video_on = ((0x0080U 
                                                   >= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                                  & (0x0040U 
                                                     >= (IData)(vlSelfRef.pong_pt1__DOT__y)));
    vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick 
        = ((0x0041U == (IData)(vlSelfRef.pong_pt1__DOT__y)) 
           & (0U == (IData)(vlSelfRef.pong_pt1__DOT__x)));
    vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0 
        = (0x000001ffU & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg) 
                          + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_reg)));
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
    __Vtableidx1 = (7U & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                          - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)));
    vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data = Vpong_pt1__ConstPool__TABLE_h01d43c36_0
        [__Vtableidx1];
    VL_ASSIGN_SII(1, vlSelfRef.p_tick, ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__video_on) 
                                        & ((0x003fU 
                                            >= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                           & (IData)(vlSelfRef.pong_pt1__DOT__pixel_tick))));
    vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_next = vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg;
    if (vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick) {
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_next 
            = (0x000001ffU & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                              + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_reg)));
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
        vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_next 
            = ((0x0080U < (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0))
                ? 0U : (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0));
    } else {
        vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_next 
            = (0x000001ffU & (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg));
        vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_next 
            = vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg;
    }
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
}

void Vpong_pt1___024root___eval_nba(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_nba\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((3ULL & vlSelfRef.__VnbaTriggered[0U])) {
        Vpong_pt1___024root___nba_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[2U] = 1U;
    }
}

void Vpong_pt1___024root___trigger_orInto__act(VlUnpacked<QData/*63:0*/, 1> &out, const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___trigger_orInto__act\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        out[n] = (out[n] | in[n]);
        n = ((IData)(1U) + n);
    } while ((1U > n));
}

bool Vpong_pt1___024root___eval_phase__act(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_phase__act\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vpong_pt1___024root___eval_triggers__act(vlSelf);
    Vpong_pt1___024root___trigger_orInto__act(vlSelfRef.__VnbaTriggered, vlSelfRef.__VactTriggered);
    return (0U);
}

void Vpong_pt1___024root___trigger_clear__act(VlUnpacked<QData/*63:0*/, 1> &out) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___trigger_clear__act\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        out[n] = 0ULL;
        n = ((IData)(1U) + n);
    } while ((1U > n));
}

bool Vpong_pt1___024root___eval_phase__nba(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_phase__nba\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = Vpong_pt1___024root___trigger_anySet__act(vlSelfRef.__VnbaTriggered);
    if (__VnbaExecute) {
        Vpong_pt1___024root___eval_nba(vlSelf);
        Vpong_pt1___024root___trigger_clear__act(vlSelfRef.__VnbaTriggered);
    }
    return (__VnbaExecute);
}

void Vpong_pt1___024root___eval(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    IData/*31:0*/ __VicoIterCount;
    IData/*31:0*/ __VnbaIterCount;
    // Body
    __VicoIterCount = 0U;
    vlSelfRef.__VicoFirstIteration = 1U;
    do {
        if (VL_UNLIKELY(((0x00000064U < __VicoIterCount)))) {
#ifdef VL_DEBUG
            Vpong_pt1___024root___dump_triggers__ico(vlSelfRef.__VicoTriggered, "ico"s);
#endif
            VL_FATAL_MT("../pong_pt1/pong_pt1.v", 8, "", "Input combinational region did not converge after 100 tries");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
    } while (Vpong_pt1___024root___eval_phase__ico(vlSelf));
    __VnbaIterCount = 0U;
    do {
        if (VL_UNLIKELY(((0x00000064U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vpong_pt1___024root___dump_triggers__act(vlSelfRef.__VnbaTriggered, "nba"s);
#endif
            VL_FATAL_MT("../pong_pt1/pong_pt1.v", 8, "", "NBA region did not converge after 100 tries");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        vlSelfRef.__VactIterCount = 0U;
        do {
            if (VL_UNLIKELY(((0x00000064U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vpong_pt1___024root___dump_triggers__act(vlSelfRef.__VactTriggered, "act"s);
#endif
                VL_FATAL_MT("../pong_pt1/pong_pt1.v", 8, "", "Active region did not converge after 100 tries");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
        } while (Vpong_pt1___024root___eval_phase__act(vlSelf));
    } while (Vpong_pt1___024root___eval_phase__nba(vlSelf));
}

#ifdef VL_DEBUG
void Vpong_pt1___024root___eval_debug_assertions(Vpong_pt1___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root___eval_debug_assertions\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}
#endif  // VL_DEBUG
