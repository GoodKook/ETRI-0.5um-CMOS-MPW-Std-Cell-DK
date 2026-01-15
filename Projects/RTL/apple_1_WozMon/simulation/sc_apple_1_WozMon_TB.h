/**********************************************************************
Filename: sc_apple_1_WozMon_TB.h
Purpose : Apple-1/WozMon
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_apple_1_WozMon_TB_H_
#define  _SC_apple_1_WozMon_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Eapple_1_WozMon.h"
#else
#include "Vapple_1_WozMon.h"  // Verilated RTL
#endif
#include "sc_mem.h"     // Memory & Peripherals(Keyboard & Screen)

SC_MODULE(sc_apple_1_WozMon_TB)
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
    Eapple_1_WozMon*  u_apple_1_WozMon;
#else
    Vapple_1_WozMon*  u_apple_1_WozMon;
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

    SC_CTOR(sc_apple_1_WozMon_TB) :   // Constructor
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
        u_apple_1_WozMon = new Eapple_1_WozMon("u_apple_1_WozMon");
#else
        u_apple_1_WozMon = new Vapple_1_WozMon("u_apple_1_WozMon");
#endif
        // Binding
        u_apple_1_WozMon->clk(clk);
        u_apple_1_WozMon->reset(reset);
        u_apple_1_WozMon->DI(DI);
        u_apple_1_WozMon->DO(DO);
        u_apple_1_WozMon->WE(WE);
        u_apple_1_WozMon->IRQ(IRQ);
        u_apple_1_WozMon->NMI(NMI);
        u_apple_1_WozMon->RDY(RDY);
        u_apple_1_WozMon->AB(AB);
        u_apple_1_WozMon->en_woz(en_woz);

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
        fp = sc_create_vcd_trace_file("sc_apple_1_WozMon_TB");
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
        u_apple_1_WozMon->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vapple_1_WozMon.vcd");
#endif
    }
    
    ~sc_apple_1_WozMon_TB(void)
    {
    }
};

#endif
