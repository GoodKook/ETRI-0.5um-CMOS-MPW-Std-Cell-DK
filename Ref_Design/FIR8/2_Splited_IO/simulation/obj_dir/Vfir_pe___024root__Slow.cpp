// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfir_pe.h for the primary calling header

#include "Vfir_pe__pch.h"
#include "Vfir_pe__Syms.h"
#include "Vfir_pe___024root.h"

void Vfir_pe___024root___ctor_var_reset(Vfir_pe___024root* vlSelf);

Vfir_pe___024root::Vfir_pe___024root(Vfir_pe__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , clk("clk")
    , Cin("Cin")
    , Xin("Xin")
    , Xout("Xout")
    , Yin("Yin")
    , Yout("Yout")
    , Rdy("Rdy")
    , Vld("Vld")
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vfir_pe___024root___ctor_var_reset(this);
}

void Vfir_pe___024root::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vfir_pe___024root::~Vfir_pe___024root() {
}
