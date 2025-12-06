/**********************************************************************
Filename: sc_apple_1_TB.h
Purpose : Core of 8-Tab Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_apple_1_TB_H_
#define  _SC_apple_1_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Eapple_1.h"
#else
#include "Vapple_1.h"  // Verilated RTL
#endif
#include "sc_mem.h"     // Memory & Peripherals(Keyboard & Screen)

SC_MODULE(sc_apple_1_TB)
{

    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<sc_uint<8> >  DI;     // Data-in
    sc_signal<sc_uint<8> >  DO;     // Data-out
    sc_signal<bool>         WE;     // Write Enable
    sc_signal<bool>         IRQ;    // Interrupt Request
    sc_signal<bool>         NMI;    // Non-Maskable Interrupt
    sc_signal<bool>         RDY;    // Ready
    sc_signal<sc_uint<16> > AB;     // Address Bus
    sc_signal<bool>         en_woz; // Enable WozMon(Embedded ROM)

    // Verilated DUT or Foreign Verilog
#ifdef EMULATED_CO_SIM
    Eapple_1*  u_apple_1;
#else
    Vapple_1*  u_apple_1;
#endif

    sc_mem*     u_mem;  // Memory & Peripheral model

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    // Test utilities
    // Environment: Reset/RDY/IRQ/MNI
    void reset_generator(void);

    SC_CTOR(sc_apple_1_TB) :   // Constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false),
        reset("reset"),
        DI("DI"),
        DO("DO"),
        WE("WE"),
        IRQ("IRQ"),
        NMI("NMI"),
        RDY("RDY"),
        AB("AB"),
        en_woz("en_woz")
    {
        // DUT Instantiation
#ifdef EMULATED_CO_SIM
        u_apple_1 = new Eapple_1("u_apple_1");
#else
        u_apple_1 = new Vapple_1("u_apple_1");
#endif
        // Binding
        u_apple_1->clk(clk);
        u_apple_1->reset(reset);
        u_apple_1->DI(DI);
        u_apple_1->DO(DO);
        u_apple_1->WE(WE);
        u_apple_1->IRQ(IRQ);
        u_apple_1->NMI(NMI);
        u_apple_1->RDY(RDY);
        u_apple_1->AB(AB);
        u_apple_1->en_woz(en_woz);

        // Memory Instantiation
        u_mem = new sc_mem("u_mem");
        // Binding
        u_mem->clk(clk);
        u_mem->DI(DO);
        u_mem->DO(DI);
        u_mem->WE(WE);
        u_mem->AB(AB);

        // Environments: Reset/RDY/IRQ/NMI
        SC_THREAD(reset_generator);
        sensitive << clk;

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_apple_1_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk, "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, DI, "DI");
        sc_trace(fp, DO, "DO");
        sc_trace(fp, WE, "WE");
        sc_trace(fp, IRQ, "IRQ");
        sc_trace(fp, NMI, "NMI");
        sc_trace(fp, RDY, "RDY");
        sc_trace(fp, AB, "AB");
        sc_trace(fp, en_woz, "en_woz");

        sc_trace(fp, u_mem->clk, "mem_clk");
        sc_trace(fp, u_mem->DI, "mem_DI");
        sc_trace(fp, u_mem->DO, "mem_DO");
        sc_trace(fp, u_mem->WE, "mem_WE");
        sc_trace(fp, u_mem->AB, "mem_AB");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_apple_1->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vapple_1.vcd");
#endif
    }
    
    ~sc_apple_1_TB(void)
    {
    }
};

#endif
