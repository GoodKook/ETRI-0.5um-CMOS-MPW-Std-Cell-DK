// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VTIMING_RECOVERY__SYMS_H_
#define VERILATED_VTIMING_RECOVERY__SYMS_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vtiming_recovery.h"

// INCLUDE MODULE CLASSES
#include "Vtiming_recovery___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vtiming_recovery__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vtiming_recovery* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vtiming_recovery___024root     TOP;

    // CONSTRUCTORS
    Vtiming_recovery__Syms(VerilatedContext* contextp, const char* namep, Vtiming_recovery* modelp);
    ~Vtiming_recovery__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
