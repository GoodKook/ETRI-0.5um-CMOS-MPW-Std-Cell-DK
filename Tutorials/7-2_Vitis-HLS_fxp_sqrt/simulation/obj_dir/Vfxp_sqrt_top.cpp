// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vfxp_sqrt_top__pch.h"
#include "verilated_vcd_sc.h"

//============================================================
// Constructors

Vfxp_sqrt_top::Vfxp_sqrt_top(sc_core::sc_module_name /* unused */)
    : VerilatedModel{*Verilated::threadContextp()}
    , vlSymsp{new Vfxp_sqrt_top__Syms(contextp(), name(), this)}
    , ap_clk{vlSymsp->TOP.ap_clk}
    , ap_rst{vlSymsp->TOP.ap_rst}
    , ap_start{vlSymsp->TOP.ap_start}
    , ap_done{vlSymsp->TOP.ap_done}
    , ap_continue{vlSymsp->TOP.ap_continue}
    , ap_idle{vlSymsp->TOP.ap_idle}
    , ap_ready{vlSymsp->TOP.ap_ready}
    , in_val{vlSymsp->TOP.in_val}
    , ap_return{vlSymsp->TOP.ap_return}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
    contextp()->traceBaseModelCbAdd(
        [this](VerilatedTraceBaseC* tfp, int levels, int options) { traceBaseModel(tfp, levels, options); });
    // Sensitivities on all clocks and combinational inputs
    SC_METHOD(eval);
    SC_METHOD(eval_sens);
    sensitive << ap_clk;
    sensitive << ap_rst;
    sensitive << ap_start;
    sensitive << ap_continue;
    sensitive << in_val;

}

//============================================================
// Destructor

Vfxp_sqrt_top::~Vfxp_sqrt_top() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vfxp_sqrt_top___024root___eval_debug_assertions(Vfxp_sqrt_top___024root* vlSelf);
#endif  // VL_DEBUG
void Vfxp_sqrt_top___024root___eval_static(Vfxp_sqrt_top___024root* vlSelf);
void Vfxp_sqrt_top___024root___eval_initial(Vfxp_sqrt_top___024root* vlSelf);
void Vfxp_sqrt_top___024root___eval_settle(Vfxp_sqrt_top___024root* vlSelf);
void Vfxp_sqrt_top___024root___eval(Vfxp_sqrt_top___024root* vlSelf);

void Vfxp_sqrt_top::eval() {
    eval_step();
    if (eventsPending()) {
        sc_core::sc_time dt = sc_core::sc_time::from_value(nextTimeSlot() - contextp()->time());
        next_trigger(dt, trigger_eval);
    } else {
        next_trigger(trigger_eval);
    }
}

void Vfxp_sqrt_top::eval_sens() {
    trigger_eval.notify();
}

void Vfxp_sqrt_top::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vfxp_sqrt_top::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vfxp_sqrt_top___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_activity = true;
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vfxp_sqrt_top___024root___eval_static(&(vlSymsp->TOP));
        Vfxp_sqrt_top___024root___eval_initial(&(vlSymsp->TOP));
        Vfxp_sqrt_top___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vfxp_sqrt_top___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vfxp_sqrt_top::eventsPending() { return !vlSymsp->TOP.__VdlySched.empty(); }

uint64_t Vfxp_sqrt_top::nextTimeSlot() { return vlSymsp->TOP.__VdlySched.nextTimeSlot(); }

//============================================================
// Utilities

//============================================================
// Invoke final blocks

void Vfxp_sqrt_top___024root___eval_final(Vfxp_sqrt_top___024root* vlSelf);

VL_ATTR_COLD void Vfxp_sqrt_top::final() {
    Vfxp_sqrt_top___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vfxp_sqrt_top::hierName() const { return vlSymsp->name(); }
const char* Vfxp_sqrt_top::modelName() const { return "Vfxp_sqrt_top"; }
unsigned Vfxp_sqrt_top::threads() const { return 1; }
void Vfxp_sqrt_top::prepareClone() const { contextp()->prepareClone(); }
void Vfxp_sqrt_top::atClone() const {
    contextp()->threadPoolpOnClone();
}
std::unique_ptr<VerilatedTraceConfig> Vfxp_sqrt_top::traceConfig() const {
    return std::unique_ptr<VerilatedTraceConfig>{new VerilatedTraceConfig{false, false, false}};
};

//============================================================
// Trace configuration

void Vfxp_sqrt_top___024root__trace_decl_types(VerilatedVcd* tracep);

void Vfxp_sqrt_top___024root__trace_init_top(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vfxp_sqrt_top___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfxp_sqrt_top___024root*>(voidSelf);
    Vfxp_sqrt_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->pushPrefix(std::string{vlSymsp->name()}, VerilatedTracePrefixType::SCOPE_MODULE);
    Vfxp_sqrt_top___024root__trace_decl_types(tracep);
    Vfxp_sqrt_top___024root__trace_init_top(vlSelf, tracep);
    tracep->popPrefix();
}

VL_ATTR_COLD void Vfxp_sqrt_top___024root__trace_register(Vfxp_sqrt_top___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vfxp_sqrt_top::traceBaseModel(VerilatedTraceBaseC* tfp, int levels, int options) {
    if (!sc_core::sc_get_curr_simcontext()->elaboration_done()) {
        vl_fatal(__FILE__, __LINE__, name(), "Vfxp_sqrt_top::trace() is called before sc_core::sc_start(). Run sc_core::sc_start(sc_core::SC_ZERO_TIME) before trace() to complete elaboration.");
    }(void)levels; (void)options;
    VerilatedVcdC* const stfp = dynamic_cast<VerilatedVcdC*>(tfp);
    if (VL_UNLIKELY(!stfp)) {
        vl_fatal(__FILE__, __LINE__, __FILE__,"'Vfxp_sqrt_top::trace()' called on non-VerilatedVcdC object;"
            " use --trace-fst with VerilatedFst object, and --trace with VerilatedVcd object");
    }
    stfp->spTrace()->addModel(this);
    stfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    Vfxp_sqrt_top___024root__trace_register(&(vlSymsp->TOP), stfp->spTrace());
}
