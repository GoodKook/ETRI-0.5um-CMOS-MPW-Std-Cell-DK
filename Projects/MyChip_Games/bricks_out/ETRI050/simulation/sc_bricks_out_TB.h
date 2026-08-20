/**********************************************************************
Filename: sc_bricks_out_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Jul. 2026, First release
***********************************************************************/

#ifndef _SC_bricks_out_TB_H_
#define _SC_bricks_out_TB_H_

#include <systemc.h>
#include <stdio.h>

#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_bricks_out_TB)
{
    // from SystemC TB to DUT's input ports
    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<bool>         game_new;
    sc_signal<bool>         btn_left;
    sc_signal<bool>         btn_right;
    // from DUT's output ports to SystemC TB
    sc_signal<bool>         v_sync;
    sc_signal<bool>         pixel;
    sc_signal<bool>         p_tick;
    sc_signal<bool>         game_over;
    sc_signal<bool>         game_complete;

    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

    sc_signal<bool>         sc_Stopped;

    // Test utilities
    void Test_Gen();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_bricks_out_TB):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->reset(reset);
        u_sc_glcd128x64_TLM->v_sync(v_sync);
        u_sc_glcd128x64_TLM->pixel(pixel);
        u_sc_glcd128x64_TLM->p_tick(p_tick);
        u_sc_glcd128x64_TLM->btn_left(btn_left);
        u_sc_glcd128x64_TLM->btn_right(btn_right);
        u_sc_glcd128x64_TLM->game_new(game_new);
        u_sc_glcd128x64_TLM->game_over(game_over);
        u_sc_glcd128x64_TLM->game_complete(game_complete);

        sc_Stopped.write(false);

        // WAVE
        fp = sc_create_vcd_trace_file("sc_bricks_out_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, reset,     "reset");
        sc_trace(fp, btn_left,  "btn_left");
        sc_trace(fp, btn_right, "btn_right");
        sc_trace(fp, v_sync,    "v_sync");
        sc_trace(fp, pixel,     "pixel");
        sc_trace(fp, p_tick,    "p_tick");
        sc_trace(fp, game_new,  "game_new");
        sc_trace(fp, game_over, "game_over");
        sc_trace(fp, game_complete, "game_complete");
    }
    
    ~sc_bricks_out_TB(void)
    {
    }
};

#endif
