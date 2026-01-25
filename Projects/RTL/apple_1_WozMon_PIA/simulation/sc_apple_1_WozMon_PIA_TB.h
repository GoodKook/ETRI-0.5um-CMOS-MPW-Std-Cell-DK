/**********************************************************************
Filename: sc_apple_1_WozMon_PIA_TB.h
Purpose : Apple-1(6502+PIA+WozMon)
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_apple_1_WozMon_PIA_TB_H_
#define  _SC_apple_1_WozMon_PIA_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Eapple_1_WozMon_PIA.h"
#else
#include "Vapple_1_WozMon_PIA.h"  // Verilated RTL
#endif

#include "sc_mem.h"     // Memory

SC_MODULE(sc_apple_1_WozMon_PIA_TB)
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
    sc_signal<bool>         kbd_rdy;
    sc_signal<bool>         kbd_ack;
    sc_signal<sc_uint<7> >  kbd_data;
    sc_signal<bool>         dsp_rdy;
    sc_signal<bool>         dsp_ack;
    sc_signal<sc_uint<7> >  dsp_data;

    // Verilated DUT or Foreign Verilog
#ifdef EMULATED_CO_SIM
    Eapple_1_WozMon_PIA*  u_apple_1_WozMon_PIA;
#else
    Vapple_1_WozMon_PIA*  u_apple_1_WozMon_PIA;
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

    SC_CTOR(sc_apple_1_WozMon_PIA_TB) :   // Constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false),
        reset("reset"),
        DI("DI"),
        DO("DO"),
        WE("WE"),
        IRQ("IRQ"),
        NMI("NMI"),
        RDY("RDY"),
        AB("AB")
    {
        // DUT Instantiation
#ifdef EMULATED_CO_SIM
        u_apple_1_WozMon_PIA = new Eapple_1_WozMon_PIA("u_apple_1_WozMon_PIA");
#else
        u_apple_1_WozMon_PIA = new Vapple_1_WozMon_PIA("u_apple_1_WozMon_PIA");
#endif
        // Binding
        u_apple_1_WozMon_PIA->clk(clk);
        u_apple_1_WozMon_PIA->reset(reset);
        u_apple_1_WozMon_PIA->DI(DI);
        u_apple_1_WozMon_PIA->DO(DO);
        u_apple_1_WozMon_PIA->WE(WE);
        u_apple_1_WozMon_PIA->IRQ(IRQ);
        u_apple_1_WozMon_PIA->NMI(NMI);
        u_apple_1_WozMon_PIA->RDY(RDY);
        u_apple_1_WozMon_PIA->AB(AB);
        u_apple_1_WozMon_PIA->kbd_rdy(kbd_rdy);
        u_apple_1_WozMon_PIA->kbd_ack(kbd_ack);
        u_apple_1_WozMon_PIA->kbd_data(kbd_data);
        u_apple_1_WozMon_PIA->dsp_rdy(dsp_rdy);
        u_apple_1_WozMon_PIA->dsp_ack(dsp_ack);
        u_apple_1_WozMon_PIA->dsp_data(dsp_data);

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
        fp = sc_create_vcd_trace_file("sc_apple_1_WozMon_PIA_TB");
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
        sc_trace(fp, kbd_rdy, "kbd_rdy");
        sc_trace(fp, kbd_ack, "kbd_ack");
        sc_trace(fp, kbd_data, "kbd_data");
        sc_trace(fp, dsp_rdy, "dsp_rdy");
        sc_trace(fp, dsp_ack, "dsp_ack");
        sc_trace(fp, dsp_data, "dsp_data");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_apple_1_WozMon_PIA->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vapple_1_WozMon_PIA.vcd");
#endif
    }
    
    ~sc_apple_1_WozMon_PIA_TB(void)
    {
    }
};

#endif
