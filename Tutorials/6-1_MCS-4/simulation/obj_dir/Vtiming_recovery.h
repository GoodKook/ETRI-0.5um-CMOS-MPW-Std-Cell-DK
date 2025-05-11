// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VTIMING_RECOVERY_H_
#define VERILATED_VTIMING_RECOVERY_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"

class Vtiming_recovery__Syms;
class Vtiming_recovery___024root;

// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) Vtiming_recovery VL_NOT_FINAL : public ::sc_core::sc_module, public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    Vtiming_recovery__Syms* const vlSymsp;

  public:

    // CONSTEXPR CAPABILITIES
    // Verilated with --trace?
    static constexpr bool traceCapable = false;

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    sc_core::sc_in<bool> &sysclk;
    sc_core::sc_in<bool> &clk1;
    sc_core::sc_in<bool> &clk2;
    sc_core::sc_in<bool> &sync;
    sc_core::sc_out<bool> &a11;
    sc_core::sc_out<bool> &a12;
    sc_core::sc_out<bool> &a21;
    sc_core::sc_out<bool> &a22;
    sc_core::sc_out<bool> &a31;
    sc_core::sc_out<bool> &a32;
    sc_core::sc_out<bool> &m11;
    sc_core::sc_out<bool> &m12;
    sc_core::sc_out<bool> &m21;
    sc_core::sc_out<bool> &m22;
    sc_core::sc_out<bool> &x11;
    sc_core::sc_out<bool> &x12;
    sc_core::sc_out<bool> &x21;
    sc_core::sc_out<bool> &x22;
    sc_core::sc_out<bool> &x31;
    sc_core::sc_out<bool> &x32;

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    Vtiming_recovery___024root* const rootp;

    // CONSTRUCTORS
    SC_CTOR(Vtiming_recovery);
    virtual ~Vtiming_recovery();
  private:
    VL_UNCOPYABLE(Vtiming_recovery);  ///< Copying not allowed

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
