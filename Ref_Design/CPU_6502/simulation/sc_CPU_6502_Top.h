/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_CPU_6502_top.h
Purpose: Test Top for 8-bit CPU 6502
Revision History: Jan. 1, 2024
*******************************************************************************/
#ifndef _SC_CPU_6502_H_
#define _SC_CPU_6502_H_

#include "Vcpu.h"
#include "sc_mem.h"

SC_MODULE(sc_CPU_6502_Top)
{
    sc_clock            clk;
    sc_signal<bool>     reset;
    sc_signal<uint32_t> DI;     // Data-in
    sc_signal<uint32_t> DO;     // Data-out
    sc_signal<bool>     WE;     // Write Enable
    sc_signal<bool>     IRQ;    // Interrupt Request
    sc_signal<bool>     NMI;    // Non-Maskable Interrupt
    sc_signal<bool>     RDY;    // Ready
    sc_signal<uint32_t> AB;     // Address Bus

    // Verilated DUT or Foreign Verilog
    Vcpu*   u_CPU_6502;

    // for Testbench
    sc_mem* u_mem;

    // Environment: Reset/RDY/IRQ/MNI
    void reset_generator()
    {
        IRQ.write(0);
        NMI.write(0);
        RDY.write(0);
        reset.write(1);
        wait(clk.posedge_event());
        wait(clk.posedge_event());

        RDY.write(1);
        wait(clk.posedge_event());
        wait(clk.posedge_event());
        wait(clk.posedge_event());
        wait(clk.posedge_event());
        wait(clk.posedge_event());

        wait(clk.negedge_event());  // avoid setup violation when timing sim.
        reset.write(0);
    }

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_CPU_6502_Top) :   // Constructor
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
        u_CPU_6502 = new Vcpu("u_CPU_6502");
        // Binding
        u_CPU_6502->clk(clk);
        u_CPU_6502->reset(reset);
        u_CPU_6502->DI(DI);
        u_CPU_6502->DO(DO);
        u_CPU_6502->WE(WE);
        u_CPU_6502->IRQ(IRQ);
        u_CPU_6502->NMI(NMI);
        u_CPU_6502->RDY(RDY);
        u_CPU_6502->AB(AB);

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

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_CPU_6502");
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

        sc_trace(fp, u_mem->clk, "mem_clk");
        sc_trace(fp, u_mem->DI, "mem_DI");
        sc_trace(fp, u_mem->DO, "mem_DO");
        sc_trace(fp, u_mem->WE, "mem_WE");
        sc_trace(fp, u_mem->AB, "mem_AB");
    }

    // Destructor
    ~sc_CPU_6502_Top()
    {}

};

#endif // _SC_CPU_6502_TOP_H_
