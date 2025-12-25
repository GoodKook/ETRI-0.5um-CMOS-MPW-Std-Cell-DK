// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals

#include "verilated_vcd_sc.h"
#include "Vpong_pt1__Syms.h"


void Vpong_pt1___024root__trace_chg_0_sub_0(Vpong_pt1___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vpong_pt1___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_chg_0\n"); );
    // Body
    Vpong_pt1___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vpong_pt1___024root*>(voidSelf);
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    Vpong_pt1___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vpong_pt1___024root__trace_chg_0_sub_0(Vpong_pt1___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_chg_0_sub_0\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[1U]))) {
        bufp->chgBit(oldp+0,(vlSelfRef.__Vcellinp__pong_pt1__clk));
        bufp->chgBit(oldp+1,(vlSelfRef.__Vcellinp__pong_pt1__reset));
        bufp->chgBit(oldp+2,(vlSelfRef.__Vcellinp__pong_pt1__enable));
        bufp->chgBit(oldp+3,(vlSelfRef.__Vcellinp__pong_pt1__up));
        bufp->chgBit(oldp+4,(vlSelfRef.__Vcellinp__pong_pt1__down));
    }
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[2U]))) {
        bufp->chgBit(oldp+5,(((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__video_on) 
                              & ((0x003fU >= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                 & (IData)(vlSelfRef.pong_pt1__DOT__pixel_tick)))));
        bufp->chgBit(oldp+6,(((0x0080U < (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                              & ((0x0040U > (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                 & (0x0082U > (IData)(vlSelfRef.pong_pt1__DOT__x))))));
        bufp->chgBit(oldp+7,((0x003fU < (IData)(vlSelfRef.pong_pt1__DOT__y))));
        bufp->chgBit(oldp+8,(((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__video_on) 
                              & (((6U <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                  & (0x000eU >= (IData)(vlSelfRef.pong_pt1__DOT__x))) 
                                 | (((0x007aU <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                     & ((0x007eU >= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                        & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg) 
                                            <= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                           & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                              <= (0x000001ffU 
                                                  & ((IData)(0x000fU) 
                                                     + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg))))))) 
                                    | ((((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg) 
                                         <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                        & (((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                            <= (0x000001ffU 
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
                                          >> (7U & 
                                              ((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                               - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg))))))))));
        bufp->chgBit(oldp+9,(vlSelfRef.pong_pt1__DOT__pg__DOT__video_on));
        bufp->chgBit(oldp+10,(vlSelfRef.pong_pt1__DOT__pixel_tick));
        bufp->chgSData(oldp+11,(vlSelfRef.pong_pt1__DOT__x),9);
        bufp->chgSData(oldp+12,(vlSelfRef.pong_pt1__DOT__y),9);
        bufp->chgBit(oldp+13,(vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick));
        bufp->chgSData(oldp+14,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg),9);
        bufp->chgSData(oldp+15,((0x000001ffU & ((IData)(0x000fU) 
                                                + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg)))),9);
        bufp->chgSData(oldp+16,(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg),9);
        bufp->chgSData(oldp+17,((0x000001ffU & ((IData)(7U) 
                                                + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))),9);
        bufp->chgSData(oldp+18,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg),9);
        bufp->chgSData(oldp+19,((0x000001ffU & ((IData)(7U) 
                                                + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)))),9);
        bufp->chgSData(oldp+20,((0x000001ffU & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick)
                                                 ? 
                                                ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                                                 + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_reg))
                                                 : (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)))),9);
        bufp->chgSData(oldp+21,(((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick)
                                  ? ((0x0080U < (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0))
                                      ? 0U : (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0))
                                  : (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg))),9);
        bufp->chgSData(oldp+22,(vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_reg),9);
        bufp->chgSData(oldp+23,(vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_next),9);
        bufp->chgSData(oldp+24,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_reg),9);
        bufp->chgSData(oldp+25,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_next),9);
        bufp->chgCData(oldp+26,((7U & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                       - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)))),3);
        bufp->chgCData(oldp+27,((7U & ((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                       - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))),3);
        bufp->chgCData(oldp+28,(vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data),8);
        bufp->chgBit(oldp+29,((1U & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data) 
                                     >> (7U & ((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                               - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))))));
        bufp->chgBit(oldp+30,(((6U <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                               & (0x000eU >= (IData)(vlSelfRef.pong_pt1__DOT__x)))));
        bufp->chgBit(oldp+31,(((0x007aU <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                               & ((0x007eU >= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                  & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg) 
                                      <= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                     & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                        <= (0x000001ffU 
                                            & ((IData)(0x000fU) 
                                               + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg)))))))));
        bufp->chgBit(oldp+32,((((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg) 
                                <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                               & (((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                   <= (0x000001ffU 
                                       & ((IData)(7U) 
                                          + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))) 
                                  & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                                      <= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                     & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                        <= (0x000001ffU 
                                            & ((IData)(7U) 
                                               + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)))))))));
        bufp->chgBit(oldp+33,(((((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg) 
                                 <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                                & (((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                    <= (0x000001ffU 
                                        & ((IData)(7U) 
                                           + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))) 
                                   & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                                       <= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                      & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                         <= (0x000001ffU 
                                             & ((IData)(7U) 
                                                + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg))))))) 
                               & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data) 
                                  >> (7U & ((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                            - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))))));
    }
    bufp->chgSData(oldp+34,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_next),9);
}

void Vpong_pt1___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_cleanup\n"); );
    // Body
    Vpong_pt1___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vpong_pt1___024root*>(voidSelf);
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
}
