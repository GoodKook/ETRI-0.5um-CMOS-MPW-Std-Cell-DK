// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VFXP_SQRT_TOP__SYMS_H_
#define VERILATED_VFXP_SQRT_TOP__SYMS_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vfxp_sqrt_top.h"

// INCLUDE MODULE CLASSES
#include "Vfxp_sqrt_top___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vfxp_sqrt_top__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vfxp_sqrt_top* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vfxp_sqrt_top___024root        TOP;

    // CONSTRUCTORS
    Vfxp_sqrt_top__Syms(VerilatedContext* contextp, const char* namep, Vfxp_sqrt_top* modelp);
    ~Vfxp_sqrt_top__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
