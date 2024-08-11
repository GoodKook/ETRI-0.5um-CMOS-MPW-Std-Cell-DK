// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vfir_pe__pch.h"
#include "Vfir_pe.h"
#include "Vfir_pe___024root.h"

// FUNCTIONS
Vfir_pe__Syms::~Vfir_pe__Syms()
{
}

Vfir_pe__Syms::Vfir_pe__Syms(VerilatedContext* contextp, const char* namep, Vfir_pe* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
{
        // Check resources
        Verilated::stackCheck(37);
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
}
