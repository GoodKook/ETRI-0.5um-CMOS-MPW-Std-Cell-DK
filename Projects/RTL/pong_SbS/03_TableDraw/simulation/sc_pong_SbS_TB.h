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
#include "sc_glcd128x64_TB.h"

SC_MODULE(sc_pong_SbS_TB)
{
    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<bool>         pixel;
    sc_signal<sc_uint<7> >  x_pos;
    sc_signal<sc_uint<6> >  y_pos;

    sc_signal<bool>         p_tick;
    sc_signal<bool>         busy;

    Vpong_SbS*              u_pong_SbS;
    sc_glcd128x64_TB*       u_sc_glcd128x64_TB;

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    void Test_Gen(void);

    SC_CTOR(sc_pong_SbS_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
        u_pong_SbS = new Vpong_SbS("u_pong_SbS");
        u_pong_SbS->clk(clk);
        u_pong_SbS->reset(reset);
        u_pong_SbS->x_pos(x_pos);
        u_pong_SbS->y_pos(y_pos);
        u_pong_SbS->pixel(pixel);
        u_pong_SbS->p_tick(p_tick);
        u_pong_SbS->busy(busy);
        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TB = new sc_glcd128x64_TB("u_sc_glcd128x64_TB");
        //u_sc_glcd128x64_TB->clk(clk);
        u_sc_glcd128x64_TB->reset(reset);
        u_sc_glcd128x64_TB->x_pos(x_pos);
        u_sc_glcd128x64_TB->y_pos(y_pos);
        u_sc_glcd128x64_TB->pixel(pixel);
        u_sc_glcd128x64_TB->p_tick(p_tick);
        u_sc_glcd128x64_TB->busy(busy);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_pong_SbS_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, x_pos, "x_pos");
        sc_trace(fp, y_pos, "y_pos");
        sc_trace(fp, pixel, "pixel");
        sc_trace(fp, p_tick,"p_tick");
        sc_trace(fp, busy,  "busy");

        sc_trace(fp, u_sc_glcd128x64_TB->clk, "GLCD.clk");
        sc_trace(fp, u_sc_glcd128x64_TB->RS,  "GLCD.RS");
        sc_trace(fp, u_sc_glcd128x64_TB->RW,  "GLCD.RW");
        sc_trace(fp, u_sc_glcd128x64_TB->E,   "GLCD.E");
        sc_trace(fp, u_sc_glcd128x64_TB->DBi, "GLCD.DBi");
        sc_trace(fp, u_sc_glcd128x64_TB->DBo, "GLCD.DBo");
        sc_trace(fp, u_sc_glcd128x64_TB->CS1, "GLCD.CS1");
        sc_trace(fp, u_sc_glcd128x64_TB->CS2, "GLCD.CS2");
        sc_trace(fp, u_sc_glcd128x64_TB->RST, "GLCD.RST");
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
