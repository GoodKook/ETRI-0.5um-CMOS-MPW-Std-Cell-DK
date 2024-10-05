// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VARRAY16_H_
#define VERILATED_VARRAY16_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"

class Varray16__Syms;
class Varray16___024root;
class Varray16_array8;


// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) Varray16 VL_NOT_FINAL : public ::sc_core::sc_module, public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    Varray16__Syms* const vlSymsp;

  public:

    // CONSTEXPR CAPABILITIES
    // Verilated with --trace?
    static constexpr bool traceCapable = false;

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    sc_core::sc_in<uint32_t> &a;
    sc_core::sc_in<uint32_t> &b;
    sc_core::sc_out<uint32_t> &c;

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.
    Varray16_array8* const __PVT__array16__DOT__z1;
    Varray16_array8* const __PVT__array16__DOT__z2;
    Varray16_array8* const __PVT__array16__DOT__z3;
    Varray16_array8* const __PVT__array16__DOT__z4;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    Varray16___024root* const rootp;

    // CONSTRUCTORS
    SC_CTOR(Varray16);
    virtual ~Varray16();
  private:
    VL_UNCOPYABLE(Varray16);  ///< Copying not allowed

  public:
    // API METHODS
  private:
    void eval() { eval_step(); }
    void eval_step();
  public:
    void final();
    /// Are there scheduled events to handle?
    bool eventsPending();
    /// Returns time at next time slot. Aborts if !eventsPending()
    uint64_t nextTimeSlot();

    // Abstract methods from VerilatedModel
    const char* hierName() const override final;
    const char* modelName() const override final;
    unsigned threads() const override final;
    /// Prepare for cloning the model at the process level (e.g. fork in Linux)
    /// Release necessary resources. Called before cloning.
    void prepareClone() const;
    /// Re-init after cloning the model at the process level (e.g. fork in Linux)
    /// Re-allocate necessary resources. Called after cloning.
    void atClone() const;
  private:
    // Internal functions - trace registration
    void traceBaseModel(VerilatedTraceBaseC* tfp, int levels, int options);
};

#endif  // guard
