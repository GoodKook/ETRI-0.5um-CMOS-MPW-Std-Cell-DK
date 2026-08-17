//
// Filename: sc_bricks_out_TB.h
//

#ifndef _SC_bricks_out_TB_H_
#define _SC_bricks_out_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#include "Vbricks_out.h"
#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_bricks_out_TB)
{
    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<bool>         pixel;
    sc_signal<bool>         v_sync;
    sc_signal<bool>         p_tick;

    sc_signal<bool>         btn_left;
    sc_signal<bool>         btn_right;

    sc_signal<bool>         game_over;
    sc_signal<bool>         game_complete;
    sc_signal<bool>         game_new;

    Vbricks_out*              u_bricks_out;
    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    void Test_Gen(void);

    SC_CTOR(sc_bricks_out_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
        u_bricks_out = new Vbricks_out("u_bricks_out");
        u_bricks_out->clk(clk);
        u_bricks_out->reset(reset);
        u_bricks_out->v_sync(v_sync);
        u_bricks_out->pixel(pixel);
        u_bricks_out->p_tick(p_tick);
        u_bricks_out->btn_left(btn_left);
        u_bricks_out->btn_right(btn_right);
        u_bricks_out->game_over(game_over);
        u_bricks_out->game_complete(game_complete);
        u_bricks_out->game_new(game_new);
        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->reset(reset);
        u_sc_glcd128x64_TLM->v_sync(v_sync);
        u_sc_glcd128x64_TLM->pixel(pixel);
        u_sc_glcd128x64_TLM->p_tick(p_tick);
        u_sc_glcd128x64_TLM->btn_left(btn_left);
        u_sc_glcd128x64_TLM->btn_right(btn_right);
        u_sc_glcd128x64_TLM->game_over(game_over);
        u_sc_glcd128x64_TLM->game_complete(game_complete);
        u_sc_glcd128x64_TLM->game_new(game_new);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_bricks_out_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, v_sync,"v_sync");
        sc_trace(fp, pixel, "pixel");
        sc_trace(fp, p_tick,"p_tick");
        sc_trace(fp, btn_left, "btn_left");
        sc_trace(fp, btn_right, "btn_right");
        sc_trace(fp, game_over, "game_over");
        sc_trace(fp, game_new, "game_new");
        sc_trace(fp, game_complete, "game_complete");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_bricks_out->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vbricks_out.vcd");
#endif
    }
};
#endif
