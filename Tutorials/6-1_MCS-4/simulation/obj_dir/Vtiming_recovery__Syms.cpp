// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtiming_recovery__pch.h"
#include "Vtiming_recovery.h"
#include "Vtiming_recovery___024root.h"

// FUNCTIONS
Vtiming_recovery__Syms::~Vtiming_recovery__Syms()
{
}

Vtiming_recovery__Syms::Vtiming_recovery__Syms(VerilatedContext* contextp, const char* namep, Vtiming_recovery* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
{
        // Check resources
        Verilated::stackCheck(25);
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-9);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
}
