// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Varray16.h for the primary calling header

#include "Varray16__pch.h"
#include "Varray16__Syms.h"
#include "Varray16_array8.h"

void Varray16_array8___ctor_var_reset(Varray16_array8* vlSelf);

Varray16_array8::Varray16_array8(Varray16__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Varray16_array8___ctor_var_reset(this);
}

void Varray16_array8::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Varray16_array8::~Varray16_array8() {
}
