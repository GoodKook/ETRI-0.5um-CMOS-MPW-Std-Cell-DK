// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals

#include "verilated_vcd_sc.h"
#include "Vpong_pt1__Syms.h"


VL_ATTR_COLD void Vpong_pt1___024root__trace_init_sub__TOP__0(Vpong_pt1___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_init_sub__TOP__0\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const int c = vlSymsp->__Vm_baseCode;
    tracep->pushPrefix("pong_pt1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+1,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+3,0,"enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+4,0,"up",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+5,0,"down",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+6,0,"p_tick",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"hsync",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"vsync",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"rgb",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+36,0,"TABLE_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+37,0,"TABLE_HEIGHT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+38,0,"SCREEN_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+39,0,"SCREEN_HEIGHT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+40,0,"TX_BIT_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+40,0,"TY_BIT_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+40,0,"SX_BIT_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+40,0,"SY_BIT_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+10,0,"vid_on",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+11,0,"p_tick_en",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+11,0,"pixel_tick",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+12,0,"x",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+13,0,"y",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->pushPrefix("pg", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+36,0,"TABLE_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+37,0,"TABLE_HEIGHT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+41,0,"WALL_THICKNESS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+42,0,"PADDLE_HEIGHT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+43,0,"PADDLE_VELOCITY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+43,0,"BALL_VELOCITY_POS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+44,0,"BALL_VELOCITY_NEG",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+40,0,"X_BIT_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+40,0,"Y_BIT_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+1,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+4,0,"up",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+5,0,"down",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+10,0,"video_on",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+12,0,"x",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+13,0,"y",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBit(c+9,0,"rgb",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+45,0,"X_MAX",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+46,0,"Y_MAX",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+14,0,"refresh_tick",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+47,0,"X_WALL_L",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+48,0,"X_WALL_R",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+49,0,"X_PAD_L",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+50,0,"X_PAD_R",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+15,0,"y_pad_t",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+16,0,"y_pad_b",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+42,0,"PAD_HEIGHT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+15,0,"y_pad_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+35,0,"y_pad_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+43,0,"PAD_VELOCITY",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+41,0,"BALL_SIZE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+17,0,"x_ball_l",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+18,0,"x_ball_r",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+19,0,"y_ball_t",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+20,0,"y_ball_b",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+19,0,"y_ball_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+17,0,"x_ball_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+21,0,"y_ball_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+22,0,"x_ball_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+23,0,"x_delta_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+24,0,"x_delta_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+25,0,"y_delta_reg",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+26,0,"y_delta_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+27,0,"rom_addr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+28,0,"rom_col",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+29,0,"rom_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+30,0,"rom_bit",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+31,0,"wall_on",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+32,0,"pad_on",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+33,0,"sq_ball_on",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+34,0,"ball_on",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+51,0,"wall_rgb",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+51,0,"pad_rgb",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+52,0,"ball_rgb",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+53,0,"bg_rgb",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vpong_pt1___024root__trace_init_top(Vpong_pt1___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_init_top\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vpong_pt1___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vpong_pt1___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vpong_pt1___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vpong_pt1___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vpong_pt1___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vpong_pt1___024root__trace_register(Vpong_pt1___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_register\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    tracep->addConstCb(&Vpong_pt1___024root__trace_const_0, 0, vlSelf);
    tracep->addFullCb(&Vpong_pt1___024root__trace_full_0, 0, vlSelf);
    tracep->addChgCb(&Vpong_pt1___024root__trace_chg_0, 0, vlSelf);
    tracep->addCleanupCb(&Vpong_pt1___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vpong_pt1___024root__trace_const_0_sub_0(Vpong_pt1___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vpong_pt1___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_const_0\n"); );
    // Body
    Vpong_pt1___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vpong_pt1___024root*>(voidSelf);
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    Vpong_pt1___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vpong_pt1___024root__trace_const_0_sub_0(Vpong_pt1___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_const_0_sub_0\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    bufp->fullIData(oldp+36,(0x00000080U),32);
    bufp->fullIData(oldp+37,(0x00000040U),32);
    bufp->fullIData(oldp+38,(0x00000082U),32);
    bufp->fullIData(oldp+39,(0x00000041U),32);
    bufp->fullIData(oldp+40,(9U),32);
    bufp->fullIData(oldp+41,(8U),32);
    bufp->fullIData(oldp+42,(0x00000010U),32);
    bufp->fullIData(oldp+43,(1U),32);
    bufp->fullIData(oldp+44,(0xffffffffU),32);
    bufp->fullIData(oldp+45,(0x0000007fU),32);
    bufp->fullIData(oldp+46,(0x0000003fU),32);
    bufp->fullIData(oldp+47,(6U),32);
    bufp->fullIData(oldp+48,(0x0000000eU),32);
    bufp->fullIData(oldp+49,(0x0000007aU),32);
    bufp->fullIData(oldp+50,(0x0000007eU),32);
    bufp->fullSData(oldp+51,(0x0aaaU),12);
    bufp->fullSData(oldp+52,(0x0fffU),12);
    bufp->fullSData(oldp+53,(0x0111U),12);
}

VL_ATTR_COLD void Vpong_pt1___024root__trace_full_0_sub_0(Vpong_pt1___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vpong_pt1___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_full_0\n"); );
    // Body
    Vpong_pt1___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vpong_pt1___024root*>(voidSelf);
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    Vpong_pt1___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vpong_pt1___024root__trace_full_0_sub_0(Vpong_pt1___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vpong_pt1___024root__trace_full_0_sub_0\n"); );
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    bufp->fullBit(oldp+1,(vlSelfRef.__Vcellinp__pong_pt1__clk));
    bufp->fullBit(oldp+2,(vlSelfRef.__Vcellinp__pong_pt1__reset));
    bufp->fullBit(oldp+3,(vlSelfRef.__Vcellinp__pong_pt1__enable));
    bufp->fullBit(oldp+4,(vlSelfRef.__Vcellinp__pong_pt1__up));
    bufp->fullBit(oldp+5,(vlSelfRef.__Vcellinp__pong_pt1__down));
    bufp->fullBit(oldp+6,(((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__video_on) 
                           & ((0x003fU >= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                              & (IData)(vlSelfRef.pong_pt1__DOT__pixel_tick)))));
    bufp->fullBit(oldp+7,(((0x0080U < (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                           & ((0x0040U > (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                              & (0x0082U > (IData)(vlSelfRef.pong_pt1__DOT__x))))));
    bufp->fullBit(oldp+8,((0x003fU < (IData)(vlSelfRef.pong_pt1__DOT__y))));
    bufp->fullBit(oldp+9,(((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__video_on) 
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
                                              <= (0x000001ffU 
                                                  & ((IData)(7U) 
                                                     + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg))))))) 
                                    & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data) 
                                       >> (7U & ((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                                 - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg))))))))));
    bufp->fullBit(oldp+10,(vlSelfRef.pong_pt1__DOT__pg__DOT__video_on));
    bufp->fullBit(oldp+11,(vlSelfRef.pong_pt1__DOT__pixel_tick));
    bufp->fullSData(oldp+12,(vlSelfRef.pong_pt1__DOT__x),9);
    bufp->fullSData(oldp+13,(vlSelfRef.pong_pt1__DOT__y),9);
    bufp->fullBit(oldp+14,(vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick));
    bufp->fullSData(oldp+15,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg),9);
    bufp->fullSData(oldp+16,((0x000001ffU & ((IData)(0x000fU) 
                                             + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg)))),9);
    bufp->fullSData(oldp+17,(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg),9);
    bufp->fullSData(oldp+18,((0x000001ffU & ((IData)(7U) 
                                             + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))),9);
    bufp->fullSData(oldp+19,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg),9);
    bufp->fullSData(oldp+20,((0x000001ffU & ((IData)(7U) 
                                             + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)))),9);
    bufp->fullSData(oldp+21,((0x000001ffU & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick)
                                              ? ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                                                 + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_reg))
                                              : (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)))),9);
    bufp->fullSData(oldp+22,(((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__refresh_tick)
                               ? ((0x0080U < (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0))
                                   ? 0U : (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0))
                               : (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg))),9);
    bufp->fullSData(oldp+23,(vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_reg),9);
    bufp->fullSData(oldp+24,(vlSelfRef.pong_pt1__DOT__pg__DOT__x_delta_next),9);
    bufp->fullSData(oldp+25,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_reg),9);
    bufp->fullSData(oldp+26,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_delta_next),9);
    bufp->fullCData(oldp+27,((7U & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                    - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)))),3);
    bufp->fullCData(oldp+28,((7U & ((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                    - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))),3);
    bufp->fullCData(oldp+29,(vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data),8);
    bufp->fullBit(oldp+30,((1U & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data) 
                                  >> (7U & ((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                            - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))))));
    bufp->fullBit(oldp+31,(((6U <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                            & (0x000eU >= (IData)(vlSelfRef.pong_pt1__DOT__x)))));
    bufp->fullBit(oldp+32,(((0x007aU <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                            & ((0x007eU >= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                               & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg) 
                                   <= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                  & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                     <= (0x000001ffU 
                                         & ((IData)(0x000fU) 
                                            + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_reg)))))))));
    bufp->fullBit(oldp+33,((((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg) 
                             <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                            & (((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                <= (0x000001ffU & ((IData)(7U) 
                                                   + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))) 
                               & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                                   <= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                  & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                     <= (0x000001ffU 
                                         & ((IData)(7U) 
                                            + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg)))))))));
    bufp->fullBit(oldp+34,(((((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg) 
                              <= (IData)(vlSelfRef.pong_pt1__DOT__x)) 
                             & (((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                 <= (0x000001ffU & 
                                     ((IData)(7U) + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))) 
                                & (((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg) 
                                    <= (IData)(vlSelfRef.pong_pt1__DOT__y)) 
                                   & ((IData)(vlSelfRef.pong_pt1__DOT__y) 
                                      <= (0x000001ffU 
                                          & ((IData)(7U) 
                                             + (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__y_ball_reg))))))) 
                            & ((IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__rom_data) 
                               >> (7U & ((IData)(vlSelfRef.pong_pt1__DOT__x) 
                                         - (IData)(vlSelfRef.pong_pt1__DOT__pg__DOT__x_ball_reg)))))));
    bufp->fullSData(oldp+35,(vlSelfRef.pong_pt1__DOT__pg__DOT__y_pad_next),9);
}
