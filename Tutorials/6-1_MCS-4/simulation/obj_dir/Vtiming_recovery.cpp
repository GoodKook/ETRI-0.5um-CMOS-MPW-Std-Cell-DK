// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vtiming_recovery__pch.h"

//============================================================
// Constructors

Vtiming_recovery::Vtiming_recovery(sc_core::sc_module_name /* unused */)
    : VerilatedModel{*Verilated::threadContextp()}
    , vlSymsp{new Vtiming_recovery__Syms(contextp(), name(), this)}
    , sysclk{vlSymsp->TOP.sysclk}
    , clk1{vlSymsp->TOP.clk1}
    , clk2{vlSymsp->TOP.clk2}
    , sync{vlSymsp->TOP.sync}
    , a11{vlSymsp->TOP.a11}
    , a12{vlSymsp->TOP.a12}
    , a21{vlSymsp->TOP.a21}
    , a22{vlSymsp->TOP.a22}
    , a31{vlSymsp->TOP.a31}
    , a32{vlSymsp->TOP.a32}
    , m11{vlSymsp->TOP.m11}
    , m12{vlSymsp->TOP.m12}
    , m21{vlSymsp->TOP.m21}
    , m22{vlSymsp->TOP.m22}
    , x11{vlSymsp->TOP.x11}
    , x12{vlSymsp->TOP.x12}
    , x21{vlSymsp->TOP.x21}
    , x22{vlSymsp->TOP.x22}
    , x31{vlSymsp->TOP.x31}
    , x32{vlSymsp->TOP.x32}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
    // Sensitivities on all clocks and combinational inputs
    SC_METHOD(eval);
    sensitive << sysclk;
    sensitive << clk1;
    sensitive << clk2;
    sensitive << sync;

}

//============================================================
// Destructor

Vtiming_recovery::~Vtiming_recovery() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vtiming_recovery___024root___eval_debug_assertions(Vtiming_recovery___024root* vlSelf);
#endif  // VL_DEBUG
void Vtiming_recovery___024root___eval_static(Vtiming_recovery___024root* vlSelf);
void Vtiming_recovery___024root___eval_initial(Vtiming_recovery___024root* vlSelf);
void Vtiming_recovery___024root___eval_settle(Vtiming_recovery___024root* vlSelf);
void Vtiming_recovery___024root___eval(Vtiming_recovery___024root* vlSelf);

void Vtiming_recovery::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vtiming_recovery::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vtiming_recovery___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vtiming_recovery___024root___eval_static(&(vlSymsp->TOP));
        Vtiming_recovery___024root___eval_initial(&(vlSymsp->TOP));
        Vtiming_recovery___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vtiming_recovery___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vtiming_recovery::eventsPending() { return false; }

uint64_t Vtiming_recovery::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "No delays in the design");
    return 0;
}

//============================================================
// Utilities

//============================================================
// Invoke final blocks

void Vtiming_recovery___024root___eval_final(Vtiming_recovery___024root* vlSelf);

VL_ATTR_COLD void Vtiming_recovery::final() {
    Vtiming_recovery___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vtiming_recovery::hierName() const { return vlSymsp->name(); }
const char* Vtiming_recovery::modelName() const { return "Vtiming_recovery"; }
unsigned Vtiming_recovery::threads() const { return 1; }
void Vtiming_recovery::prepareClone() const { contextp()->prepareClone(); }
void Vtiming_recovery::atClone() const {
    contextp()->threadPoolpOnClone();
}
