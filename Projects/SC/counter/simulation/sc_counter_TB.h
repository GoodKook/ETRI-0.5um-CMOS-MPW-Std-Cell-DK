#ifndef _SC_COUNTER_TB_H_
#define _SC_COUNTER_TB_H_

#include <systemc.h>
#include <limits.h>

#include "Vcounter.h" // Verilated DUT

#include <verilated_vcd_sc.h>

#define CLOCK_PERIOD 100

SC_MODULE(sc_counter_TB)
{
    sc_clock        clk;
    sc_signal<bool> nreset;
    sc_signal<bool> y1;
    sc_signal<bool> y0;

    Vcounter*   u_Vcounter;
    VerilatedVcdSc*     tfp;    // Verilator VCD

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_counter_TB):    // constructor
        clk("clk", CLOCK_PERIOD, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        // instantiate DUT
        u_Vcounter = new Vcounter("u_Vcounter");
        // Binding
        u_Vcounter->clk(clk);
        u_Vcounter->nreset(nreset);
        u_Vcounter->y1(y1);
        u_Vcounter->y0(y0);

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_counter_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk, "clk");
        sc_trace(fp, nreset, "nreset");
        sc_trace(fp, y1, "y1");
        sc_trace(fp, y0, "y0");

        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_Vcounter->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vcounter.vcd");
    }

    ~sc_counter_TB()
    {
        tfp->close();
    }
};

#endif
