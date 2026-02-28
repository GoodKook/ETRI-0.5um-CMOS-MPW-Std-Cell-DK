//
// Filename: sc_pong_SbS_TB.h
//

#ifndef _SC_PONG_SBS_TB_H_
#define _SC_PONG_SBS_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#include "Vpong_SbS.h"

SC_MODULE(sc_pong_SbS_TB)
{
    sc_clock        clk;
    sc_signal<bool> reset;
    sc_signal<bool> pixel;
    sc_signal<sc_uint<7> > x_pos;
    sc_signal<sc_uint<6> > y_pos;

    Vpong_SbS*  u_pong_SbS;

    #ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    void Test_Gen(void);

    SC_CTOR(sc_pong_SbS_TB):
            clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT ----------
        u_pong_SbS = new Vpong_SbS("u_pong_SbS");
        u_pong_SbS->clk(clk);
        u_pong_SbS->reset(reset);
        u_pong_SbS->x_pos(x_pos);
        u_pong_SbS->y_pos(y_pos);
        u_pong_SbS->pixel(pixel);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_pong_SbS_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, x_pos, "x_pos");
        sc_trace(fp, y_pos, "y_pos");
        sc_trace(fp, pixel, "pixel");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_pong_SbS->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vpong_SbS.vcd");
#endif
    }
};
#endif
