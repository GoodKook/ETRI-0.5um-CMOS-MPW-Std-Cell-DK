// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vpong_pt1.h for the primary calling header

#ifndef VERILATED_VPONG_PT1___024ROOT_H_
#define VERILATED_VPONG_PT1___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_sc.h"


class Vpong_pt1__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vpong_pt1___024root final {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ __Vcellinp__pong_pt1__down;
    CData/*0:0*/ __Vcellinp__pong_pt1__up;
    CData/*0:0*/ __Vcellinp__pong_pt1__enable;
    CData/*0:0*/ __Vcellinp__pong_pt1__reset;
    CData/*0:0*/ __Vcellinp__pong_pt1__clk;
    CData/*0:0*/ pong_pt1__DOT__pixel_tick;
    CData/*0:0*/ pong_pt1__DOT__pg__DOT__video_on;
    CData/*0:0*/ pong_pt1__DOT__pg__DOT__refresh_tick;
    CData/*7:0*/ pong_pt1__DOT__pg__DOT__rom_data;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP____Vcellinp__pong_pt1__clk__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP____Vcellinp__pong_pt1__reset__0;
    SData/*8:0*/ pong_pt1__DOT__x;
    SData/*8:0*/ pong_pt1__DOT__y;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__y_pad_reg;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__y_pad_next;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__y_ball_reg;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__x_ball_reg;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__y_ball_next;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__x_ball_next;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__x_delta_reg;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__x_delta_next;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__y_delta_reg;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT__y_delta_next;
    SData/*8:0*/ pong_pt1__DOT__pg__DOT____VdfgRegularize_hb2465ba7_0_0;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<QData/*63:0*/, 1> __VstlTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VicoTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VactTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VnbaTriggered;
    VlUnpacked<CData/*0:0*/, 3> __Vm_traceActivity;
    sc_core::sc_in<bool> clk;
    sc_core::sc_in<bool> reset;
    sc_core::sc_in<bool> enable;
    sc_core::sc_in<bool> up;
    sc_core::sc_in<bool> down;
    sc_core::sc_out<bool> p_tick;
    sc_core::sc_out<bool> hsync;
    sc_core::sc_out<bool> vsync;
    sc_core::sc_out<bool> rgb;

    // INTERNAL VARIABLES
    Vpong_pt1__Syms* vlSymsp;
    const char* vlNamep;

    // CONSTRUCTORS
    Vpong_pt1___024root(Vpong_pt1__Syms* symsp, const char* namep);
    ~Vpong_pt1___024root();
    VL_UNCOPYABLE(Vpong_pt1___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
