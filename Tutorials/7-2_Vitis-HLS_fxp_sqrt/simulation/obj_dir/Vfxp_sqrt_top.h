// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VFXP_SQRT_TOP_H_
#define VERILATED_VFXP_SQRT_TOP_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"

class Vfxp_sqrt_top__Syms;
class Vfxp_sqrt_top___024root;
class VerilatedVcdSc;

// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) Vfxp_sqrt_top VL_NOT_FINAL : public ::sc_core::sc_module, public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    Vfxp_sqrt_top__Syms* const vlSymsp;

  public:

    // CONSTEXPR CAPABILITIES
    // Verilated with --trace?
    static constexpr bool traceCapable = true;

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    sc_core::sc_in<bool> &ap_clk;
    sc_core::sc_in<bool> &ap_rst;
    sc_core::sc_in<bool> &ap_start;
    sc_core::sc_out<bool> &ap_done;
    sc_core::sc_in<bool> &ap_continue;
    sc_core::sc_out<bool> &ap_idle;
    sc_core::sc_out<bool> &ap_ready;
    sc_core::sc_in<uint32_t> &in_val;
    sc_core::sc_out<uint32_t> &ap_return;
    sc_core::sc_event trigger_eval;

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    Vfxp_sqrt_top___024root* const rootp;

    // CONSTRUCTORS
    SC_CTOR(Vfxp_sqrt_top);
    virtual ~Vfxp_sqrt_top();
  private:
    VL_UNCOPYABLE(Vfxp_sqrt_top);  ///< Copying not allowed

  public:
    // API METHODS
  private:
    void eval();
    void eval_sens();
    void eval_step();
  public:
    void final();
    /// Are there scheduled events to handle?
    bool eventsPending();
    /// Returns time at next time slot. Aborts if !eventsPending()
    uint64_t nextTimeSlot();
    /// Trace signals in the model; called by application code
    void trace(VerilatedTraceBaseC* tfp, int levels, int options = 0) { contextp()->trace(tfp, levels, options); }
    /// SC tracing; avoid overloaded virtual function lint warning
    void trace(sc_core::sc_trace_file* tfp) const override { ::sc_core::sc_module::trace(tfp); }

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
    std::unique_ptr<VerilatedTraceConfig> traceConfig() const override final;
  private:
    // Internal functions - trace registration
    void traceBaseModel(VerilatedTraceBaseC* tfp, int levels, int options);
};

#endif  // guard
