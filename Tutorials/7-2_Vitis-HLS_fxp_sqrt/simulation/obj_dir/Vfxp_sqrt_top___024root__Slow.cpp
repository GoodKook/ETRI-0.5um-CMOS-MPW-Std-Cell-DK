// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfxp_sqrt_top.h for the primary calling header

#include "Vfxp_sqrt_top__pch.h"
#include "Vfxp_sqrt_top__Syms.h"
#include "Vfxp_sqrt_top___024root.h"

void Vfxp_sqrt_top___024root___ctor_var_reset(Vfxp_sqrt_top___024root* vlSelf);

Vfxp_sqrt_top___024root::Vfxp_sqrt_top___024root(Vfxp_sqrt_top__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , ap_clk("ap_clk")
    , ap_rst("ap_rst")
    , ap_start("ap_start")
    , ap_done("ap_done")
    , ap_continue("ap_continue")
    , ap_idle("ap_idle")
    , ap_ready("ap_ready")
    , in_val("in_val")
    , ap_return("ap_return")
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vfxp_sqrt_top___024root___ctor_var_reset(this);
}

void Vfxp_sqrt_top___024root::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vfxp_sqrt_top___024root::~Vfxp_sqrt_top___024root() {
}
