// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Varray16__pch.h"
#include "Varray16.h"
#include "Varray16___024root.h"
#include "Varray16_array8.h"

// FUNCTIONS
Varray16__Syms::~Varray16__Syms()
{
}

Varray16__Syms::Varray16__Syms(VerilatedContext* contextp, const char* namep, Varray16* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
    , TOP__array16__DOT__z1{this, Verilated::catName(namep, "array16.z1")}
    , TOP__array16__DOT__z2{this, Verilated::catName(namep, "array16.z2")}
    , TOP__array16__DOT__z3{this, Verilated::catName(namep, "array16.z3")}
    , TOP__array16__DOT__z4{this, Verilated::catName(namep, "array16.z4")}
{
        // Check resources
        Verilated::stackCheck(481);
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    TOP.__PVT__array16__DOT__z1 = &TOP__array16__DOT__z1;
    TOP.__PVT__array16__DOT__z2 = &TOP__array16__DOT__z2;
    TOP.__PVT__array16__DOT__z3 = &TOP__array16__DOT__z3;
    TOP.__PVT__array16__DOT__z4 = &TOP__array16__DOT__z4;
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
    TOP__array16__DOT__z1.__Vconfigure(true);
    TOP__array16__DOT__z2.__Vconfigure(false);
    TOP__array16__DOT__z3.__Vconfigure(false);
    TOP__array16__DOT__z4.__Vconfigure(false);
}
