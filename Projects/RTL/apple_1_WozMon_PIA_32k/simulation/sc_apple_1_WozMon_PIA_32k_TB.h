/**********************************************************************
Filename: sc_apple_1_WozMon_PIA_32k_TB.h
Purpose : Apple-1(6502+PIA+WozMon+RAM32k)
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_apple_1_WozMon_PIA_32k_TB_H_
#define  _SC_apple_1_WozMon_PIA_32k_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Eapple_1_WozMon_PIA_32k.h"
#else
#include "Vapple_1_WozMon_PIA_32k.h"  // Verilated RTL
#endif

#include "sc_mem.h"     // Memory

SC_MODULE(sc_apple_1_WozMon_PIA_32k_TB)
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

    sc_signal<bool>         emu_en;
    sc_signal<bool>         emu_clk;
    sc_signal<bool>         emu_we;
    sc_signal<sc_uint<8> >  emu_di;
    sc_signal<sc_uint<8> >  emu_do;
    sc_signal<sc_uint<15> > emu_addr;

    // Verilated DUT or Foreign Verilog
#ifdef EMULATED_CO_SIM
    Eapple_1_WozMon_PIA_32k*  u_apple_1_WozMon_PIA_32k;
#else
    Vapple_1_WozMon_PIA_32k*  u_apple_1_WozMon_PIA_32k;
#endif

    sc_mem*     u_mem;  // Memory & Peripheral model
    kbhit*      kbd;    // this object is declared in "sc_mem" class

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    // Test utilities
    // Environment: Reset/RDY/IRQ/MNI
    void reset_generator(void);

    SC_CTOR(sc_apple_1_WozMon_PIA_32k_TB) :   // Constructor
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
        u_apple_1_WozMon_PIA_32k = new Eapple_1_WozMon_PIA_32k("u_apple_1_WozMon_PIA_32k");
#else
        u_apple_1_WozMon_PIA_32k = new Vapple_1_WozMon_PIA_32k("u_apple_1_WozMon_PIA_32k");
#endif
        // Binding
        u_apple_1_WozMon_PIA_32k->clk(clk);
        u_apple_1_WozMon_PIA_32k->reset(reset);
        u_apple_1_WozMon_PIA_32k->DI(DI);
        u_apple_1_WozMon_PIA_32k->DO(DO);
        u_apple_1_WozMon_PIA_32k->WE(WE);
        u_apple_1_WozMon_PIA_32k->IRQ(IRQ);
        u_apple_1_WozMon_PIA_32k->NMI(NMI);
        u_apple_1_WozMon_PIA_32k->RDY(RDY);
        u_apple_1_WozMon_PIA_32k->AB(AB);
        u_apple_1_WozMon_PIA_32k->kbd_rdy(kbd_rdy);
        u_apple_1_WozMon_PIA_32k->kbd_ack(kbd_ack);
        u_apple_1_WozMon_PIA_32k->kbd_data(kbd_data);
        u_apple_1_WozMon_PIA_32k->dsp_rdy(dsp_rdy);
        u_apple_1_WozMon_PIA_32k->dsp_ack(dsp_ack);
        u_apple_1_WozMon_PIA_32k->dsp_data(dsp_data);
        u_apple_1_WozMon_PIA_32k->emu_en(emu_en);
        u_apple_1_WozMon_PIA_32k->emu_clk(emu_clk);
        u_apple_1_WozMon_PIA_32k->emu_we(emu_we);
        u_apple_1_WozMon_PIA_32k->emu_di(emu_di);
        u_apple_1_WozMon_PIA_32k->emu_do(emu_do);
        u_apple_1_WozMon_PIA_32k->emu_addr(emu_addr);

        // Memory Instantiation
        u_mem = new sc_mem("u_mem");
        // Binding
        u_mem->clk(clk);
        u_mem->DI(DO);
        u_mem->DO(DI);
        u_mem->WE(WE);
        u_mem->AB(AB);
        u_mem->emu_en(emu_en);
        u_mem->emu_clk(emu_clk);
        u_mem->emu_we(emu_we);
        u_mem->emu_di(emu_di);
        u_mem->emu_do(emu_do);
        u_mem->emu_addr(emu_addr);

        kbd = &(u_mem->kbd);

        // Environments: Reset/RDY/IRQ/NMI
        SC_THREAD(reset_generator);
        sensitive << clk;

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_apple_1_WozMon_PIA_32k_TB");
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
        sc_trace(fp, emu_en, "emu_en");
        sc_trace(fp, emu_clk, "emu_clk");
        sc_trace(fp, emu_we, "emu_we");
        sc_trace(fp, emu_di, "emu_di");
        sc_trace(fp, emu_do, "emu_do");
        sc_trace(fp, emu_addr, "emu_addr");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_apple_1_WozMon_PIA_32k->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vapple_1_WozMon_PIA_32k.vcd");
#endif
    }
    
    ~sc_apple_1_WozMon_PIA_32k_TB(void)
    {
    }
};

#endif
