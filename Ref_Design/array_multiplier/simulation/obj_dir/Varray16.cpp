// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Varray16__pch.h"

//============================================================
// Constructors

Varray16::Varray16(sc_core::sc_module_name /* unused */)
    : VerilatedModel{*Verilated::threadContextp()}
    , vlSymsp{new Varray16__Syms(contextp(), name(), this)}
    , a{vlSymsp->TOP.a}
    , b{vlSymsp->TOP.b}
    , c{vlSymsp->TOP.c}
    , __PVT__array16__DOT__z1{vlSymsp->TOP.__PVT__array16__DOT__z1}
    , __PVT__array16__DOT__z2{vlSymsp->TOP.__PVT__array16__DOT__z2}
    , __PVT__array16__DOT__z3{vlSymsp->TOP.__PVT__array16__DOT__z3}
    , __PVT__array16__DOT__z4{vlSymsp->TOP.__PVT__array16__DOT__z4}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
    // Sensitivities on all clocks and combinational inputs
    SC_METHOD(eval);
    sensitive << a;
    sensitive << b;

}

//============================================================
// Destructor

Varray16::~Varray16() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Varray16___024root___eval_debug_assertions(Varray16___024root* vlSelf);
#endif  // VL_DEBUG
void Varray16___024root___eval_static(Varray16___024root* vlSelf);
void Varray16___024root___eval_initial(Varray16___024root* vlSelf);
void Varray16___024root___eval_settle(Varray16___024root* vlSelf);
void Varray16___024root___eval(Varray16___024root* vlSelf);

void Varray16::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Varray16::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Varray16___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Varray16___024root___eval_static(&(vlSymsp->TOP));
        Varray16___024root___eval_initial(&(vlSymsp->TOP));
        Varray16___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Varray16___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Varray16::eventsPending() { return false; }

uint64_t Varray16::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

//============================================================
// Invoke final blocks

void Varray16___024root___eval_final(Varray16___024root* vlSelf);

VL_ATTR_COLD void Varray16::final() {
    Varray16___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Varray16::hierName() const { return vlSymsp->name(); }
const char* Varray16::modelName() const { return "Varray16"; }
unsigned Varray16::threads() const { return 1; }
void Varray16::prepareClone() const { contextp()->prepareClone(); }
void Varray16::atClone() const {
    contextp()->threadPoolpOnClone();
}
