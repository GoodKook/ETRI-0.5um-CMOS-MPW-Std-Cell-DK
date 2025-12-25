// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vpong_pt1.h for the primary calling header

#include "Vpong_pt1__pch.h"

void Vpong_pt1___024root___ctor_var_reset(Vpong_pt1___024root* vlSelf);

Vpong_pt1___024root::Vpong_pt1___024root(Vpong_pt1__Syms* symsp, const char* namep)
    : clk("clk")
    , reset("reset")
    , enable("enable")
    , up("up")
    , down("down")
    , p_tick("p_tick")
    , hsync("hsync")
    , vsync("vsync")
    , rgb("rgb")
 {
    vlSymsp = symsp;
    vlNamep = strdup(namep);
    // Reset structure values
    Vpong_pt1___024root___ctor_var_reset(this);
}

void Vpong_pt1___024root::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vpong_pt1___024root::~Vpong_pt1___024root() {
    VL_DO_DANGLING(std::free(const_cast<char*>(vlNamep)), vlNamep);
}
