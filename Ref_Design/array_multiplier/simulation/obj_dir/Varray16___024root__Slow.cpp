// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Varray16.h for the primary calling header

#include "Varray16__pch.h"
#include "Varray16__Syms.h"
#include "Varray16___024root.h"

void Varray16___024root___ctor_var_reset(Varray16___024root* vlSelf);

Varray16___024root::Varray16___024root(Varray16__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , a("a")
    , b("b")
    , c("c")
    , vlSymsp{symsp}
 {
    // Reset structure values
    Varray16___024root___ctor_var_reset(this);
}

void Varray16___024root::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Varray16___024root::~Varray16___024root() {
}
