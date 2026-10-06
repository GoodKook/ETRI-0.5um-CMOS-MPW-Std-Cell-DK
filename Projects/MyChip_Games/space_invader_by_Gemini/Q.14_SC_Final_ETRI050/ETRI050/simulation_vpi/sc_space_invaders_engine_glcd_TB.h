/**********************************************************************
Filename: sc_space_invaders_engine_glcd_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Jul. 2026, First release
***********************************************************************/

#ifndef _SC_space_invaders_engine_glcd_TB_H_
#define _SC_space_invaders_engine_glcd_TB_H_

#include <systemc.h>
#include <stdio.h>

#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_space_invaders_engine_glcd_TB)
{
    // from SystemC TB to DUT's input ports
    sc_clock                clk;
    sc_signal<bool>         rst_n;
    sc_signal<bool>         btn_left;
    sc_signal<bool>         btn_right;
    sc_signal<bool>         btn_fire;
    // from DUT's output ports to SystemC TB
    sc_signal<bool>         v_sync;
    sc_signal<bool>         lcd_data;
    sc_signal<bool>         clk_o;

    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

    sc_signal<bool>         sc_Stopped;

    // Test utilities
    void Test_Gen();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_space_invaders_engine_glcd_TB):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->clk_o(clk_o);
        u_sc_glcd128x64_TLM->v_sync(v_sync);
        u_sc_glcd128x64_TLM->lcd_data(lcd_data);
        u_sc_glcd128x64_TLM->btn_left(btn_left);
        u_sc_glcd128x64_TLM->btn_right(btn_right);
        u_sc_glcd128x64_TLM->btn_fire(btn_fire);

        sc_Stopped.write(false);

        // WAVE
        fp = sc_create_vcd_trace_file("sc_space_invaders_engine_glcd_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, rst_n,     "rst_n");
        sc_trace(fp, btn_left,  "btn_left");
        sc_trace(fp, btn_right, "btn_right");
        sc_trace(fp, btn_fire,  "btn_fire");
        sc_trace(fp, v_sync,    "v_sync");
        sc_trace(fp, lcd_data,  "lcd_data");
        sc_trace(fp, clk_o,     "clk_o");
    }

    ~sc_space_invaders_engine_glcd_TB(void)
    {
    }
};

#endif
