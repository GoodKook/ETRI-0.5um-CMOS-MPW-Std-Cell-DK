// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VPONG_PT1__SYMS_H_
#define VERILATED_VPONG_PT1__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vpong_pt1.h"

// INCLUDE MODULE CLASSES
#include "Vpong_pt1___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES) Vpong_pt1__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vpong_pt1* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vpong_pt1___024root            TOP;

    // CONSTRUCTORS
    Vpong_pt1__Syms(VerilatedContext* contextp, const char* namep, Vpong_pt1* modelp);
    ~Vpong_pt1__Syms();

    // METHODS
    const char* name() const { return TOP.vlNamep; }
};

#endif  // guard
