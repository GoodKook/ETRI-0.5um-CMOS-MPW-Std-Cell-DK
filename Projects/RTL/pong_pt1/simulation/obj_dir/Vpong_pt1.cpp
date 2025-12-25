// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vpong_pt1__pch.h"
#include "verilated_vcd_sc.h"

//============================================================
// Constructors

Vpong_pt1::Vpong_pt1(sc_core::sc_module_name /* unused */)
    : VerilatedModel{*Verilated::threadContextp()}
    , vlSymsp{new Vpong_pt1__Syms(contextp(), name(), this)}
    , clk{vlSymsp->TOP.clk}
    , reset{vlSymsp->TOP.reset}
    , enable{vlSymsp->TOP.enable}
    , up{vlSymsp->TOP.up}
    , down{vlSymsp->TOP.down}
    , p_tick{vlSymsp->TOP.p_tick}
    , hsync{vlSymsp->TOP.hsync}
    , vsync{vlSymsp->TOP.vsync}
    , rgb{vlSymsp->TOP.rgb}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
    contextp()->traceBaseModelCbAdd(
        [this](VerilatedTraceBaseC* tfp, int levels, int options) { traceBaseModel(tfp, levels, options); });
    // Sensitivities on all clocks and combinational inputs
    SC_METHOD(eval);
    sensitive << clk;
    sensitive << reset;
    sensitive << enable;
    sensitive << up;
    sensitive << down;

}

//============================================================
// Destructor

Vpong_pt1::~Vpong_pt1() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vpong_pt1___024root___eval_debug_assertions(Vpong_pt1___024root* vlSelf);
#endif  // VL_DEBUG
void Vpong_pt1___024root___eval_static(Vpong_pt1___024root* vlSelf);
void Vpong_pt1___024root___eval_initial(Vpong_pt1___024root* vlSelf);
void Vpong_pt1___024root___eval_settle(Vpong_pt1___024root* vlSelf);
void Vpong_pt1___024root___eval(Vpong_pt1___024root* vlSelf);

void Vpong_pt1::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vpong_pt1::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vpong_pt1___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_activity = true;
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vpong_pt1___024root___eval_static(&(vlSymsp->TOP));
        Vpong_pt1___024root___eval_initial(&(vlSymsp->TOP));
        Vpong_pt1___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vpong_pt1___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vpong_pt1::eventsPending() { return false; }

uint64_t Vpong_pt1::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "No delays in the design");
    return 0;
}

//============================================================
// Utilities

//============================================================
// Invoke final blocks

void Vpong_pt1___024root___eval_final(Vpong_pt1___024root* vlSelf);

VL_ATTR_COLD void Vpong_pt1::final() {
    Vpong_pt1___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vpong_pt1::hierName() const { return vlSymsp->name(); }
const char* Vpong_pt1::modelName() const { return "Vpong_pt1"; }
unsigned Vpong_pt1::threads() const { return 1; }
void Vpong_pt1::prepareClone() const { contextp()->prepareClone(); }
void Vpong_pt1::atClone() const {
    contextp()->threadPoolpOnClone();
}
std::unique_ptr<VerilatedTraceConfig> Vpong_pt1::traceConfig() const {
    return std::unique_ptr<VerilatedTraceConfig>{new VerilatedTraceConfig{false, false, false}};
};

//============================================================
// Trace configuration

void Vpong_pt1___024root__trace_decl_types(VerilatedVcd* tracep);

void Vpong_pt1___024root__trace_init_top(Vpong_pt1___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vpong_pt1___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vpong_pt1___024root*>(voidSelf);
    Vpong_pt1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->pushPrefix(vlSymsp->name(), VerilatedTracePrefixType::SCOPE_MODULE);
    Vpong_pt1___024root__trace_decl_types(tracep);
    Vpong_pt1___024root__trace_init_top(vlSelf, tracep);
    tracep->popPrefix();
}

VL_ATTR_COLD void Vpong_pt1___024root__trace_register(Vpong_pt1___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vpong_pt1::traceBaseModel(VerilatedTraceBaseC* tfp, int levels, int options) {
    if (!sc_core::sc_get_curr_simcontext()->elaboration_done()) {
        vl_fatal(__FILE__, __LINE__, name(), "Vpong_pt1::trace() is called before sc_core::sc_start(). Run sc_core::sc_start(sc_core::SC_ZERO_TIME) before trace() to complete elaboration.");
    }(void)levels; (void)options;
    VerilatedVcdC* const stfp = dynamic_cast<VerilatedVcdC*>(tfp);
    if (VL_UNLIKELY(!stfp)) {
        vl_fatal(__FILE__, __LINE__, __FILE__,"'Vpong_pt1::trace()' called on non-VerilatedVcdC object;"
            " use --trace-fst with VerilatedFst object, and --trace-vcd with VerilatedVcd object");
    }
    stfp->spTrace()->addModel(this);
    stfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    Vpong_pt1___024root__trace_register(&(vlSymsp->TOP), stfp->spTrace());
}
