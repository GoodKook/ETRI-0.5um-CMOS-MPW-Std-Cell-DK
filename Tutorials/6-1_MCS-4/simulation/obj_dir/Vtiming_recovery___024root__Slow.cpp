// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtiming_recovery.h for the primary calling header

#include "Vtiming_recovery__pch.h"
#include "Vtiming_recovery__Syms.h"
#include "Vtiming_recovery___024root.h"

void Vtiming_recovery___024root___ctor_var_reset(Vtiming_recovery___024root* vlSelf);

Vtiming_recovery___024root::Vtiming_recovery___024root(Vtiming_recovery__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , sysclk("sysclk")
    , clk1("clk1")
    , clk2("clk2")
    , sync("sync")
    , a11("a11")
    , a12("a12")
    , a21("a21")
    , a22("a22")
    , a31("a31")
    , a32("a32")
    , m11("m11")
    , m12("m12")
    , m21("m21")
    , m22("m22")
    , x11("x11")
    , x12("x12")
    , x21("x21")
    , x22("x22")
    , x31("x31")
    , x32("x32")
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vtiming_recovery___024root___ctor_var_reset(this);
}

void Vtiming_recovery___024root::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vtiming_recovery___024root::~Vtiming_recovery___024root() {
}
