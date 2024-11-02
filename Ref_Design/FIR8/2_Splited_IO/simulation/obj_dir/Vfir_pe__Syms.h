// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VFIR_PE__SYMS_H_
#define VERILATED_VFIR_PE__SYMS_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vfir_pe.h"

// INCLUDE MODULE CLASSES
#include "Vfir_pe___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vfir_pe__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vfir_pe* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vfir_pe___024root              TOP;

    // CONSTRUCTORS
    Vfir_pe__Syms(VerilatedContext* contextp, const char* namep, Vfir_pe* modelp);
    ~Vfir_pe__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
