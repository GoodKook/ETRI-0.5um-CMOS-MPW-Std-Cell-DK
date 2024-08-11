// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vfir_pe__pch.h"

//============================================================
// Constructors

Vfir_pe::Vfir_pe(sc_core::sc_module_name /* unused */)
    : VerilatedModel{*Verilated::threadContextp()}
    , vlSymsp{new Vfir_pe__Syms(contextp(), name(), this)}
    , clk{vlSymsp->TOP.clk}
    , Cin{vlSymsp->TOP.Cin}
    , Xin{vlSymsp->TOP.Xin}
    , Xout{vlSymsp->TOP.Xout}
    , Yin{vlSymsp->TOP.Yin}
    , Yout{vlSymsp->TOP.Yout}
    , Rdy{vlSymsp->TOP.Rdy}
    , Vld{vlSymsp->TOP.Vld}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
    // Sensitivities on all clocks and combinational inputs
    SC_METHOD(eval);
    sensitive << clk;
    sensitive << Cin;
    sensitive << Xin;
    sensitive << Yin;
    sensitive << Rdy;

}

//============================================================
// Destructor

Vfir_pe::~Vfir_pe() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vfir_pe___024root___eval_debug_assertions(Vfir_pe___024root* vlSelf);
#endif  // VL_DEBUG
void Vfir_pe___024root___eval_static(Vfir_pe___024root* vlSelf);
void Vfir_pe___024root___eval_initial(Vfir_pe___024root* vlSelf);
void Vfir_pe___024root___eval_settle(Vfir_pe___024root* vlSelf);
void Vfir_pe___024root___eval(Vfir_pe___024root* vlSelf);

void Vfir_pe::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vfir_pe::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vfir_pe___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vfir_pe___024root___eval_static(&(vlSymsp->TOP));
        Vfir_pe___024root___eval_initial(&(vlSymsp->TOP));
        Vfir_pe___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vfir_pe___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vfir_pe::eventsPending() { return false; }

uint64_t Vfir_pe::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

//============================================================
// Invoke final blocks

void Vfir_pe___024root___eval_final(Vfir_pe___024root* vlSelf);

VL_ATTR_COLD void Vfir_pe::final() {
    Vfir_pe___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vfir_pe::hierName() const { return vlSymsp->name(); }
const char* Vfir_pe::modelName() const { return "Vfir_pe"; }
unsigned Vfir_pe::threads() const { return 1; }
void Vfir_pe::prepareClone() const { contextp()->prepareClone(); }
void Vfir_pe::atClone() const {
    contextp()->threadPoolpOnClone();
}
