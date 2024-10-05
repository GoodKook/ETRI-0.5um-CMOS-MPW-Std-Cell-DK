// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VARRAY16__SYMS_H_
#define VERILATED_VARRAY16__SYMS_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Varray16.h"

// INCLUDE MODULE CLASSES
#include "Varray16___024root.h"
#include "Varray16_array8.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Varray16__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Varray16* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Varray16___024root             TOP;
    Varray16_array8                TOP__array16__DOT__z1;
    Varray16_array8                TOP__array16__DOT__z2;
    Varray16_array8                TOP__array16__DOT__z3;
    Varray16_array8                TOP__array16__DOT__z4;

    // CONSTRUCTORS
    Varray16__Syms(VerilatedContext* contextp, const char* namep, Varray16* modelp);
    ~Varray16__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
