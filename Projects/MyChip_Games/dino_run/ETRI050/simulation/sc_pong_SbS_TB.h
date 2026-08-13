/**********************************************************************
Filename: sc_pong_SbS_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_pong_SbS_TB_H_
#define _SC_pong_SbS_TB_H_

#include <systemc.h>
#include <stdio.h>

#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_pong_SbS_TB)
{
    // from SystemC TB to DUT's input ports
    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<bool>         busy;
    sc_signal<bool>         up;
    sc_signal<bool>         down;
    // from DUT's output ports to SystemC TB
    sc_signal<sc_uint<7> >  x_pos;
    sc_signal<sc_uint<6> >  y_pos;
    sc_signal<bool>         pixel;
    sc_signal<bool>         p_tick;

    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

    sc_signal<bool>         sc_Stopped;

    // Test utilities
    void Test_Gen();

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_pong_SbS_TB):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->reset(reset);
        u_sc_glcd128x64_TLM->x_pos(x_pos);
        u_sc_glcd128x64_TLM->y_pos(y_pos);
        u_sc_glcd128x64_TLM->pixel(pixel);
        u_sc_glcd128x64_TLM->p_tick(p_tick);
        u_sc_glcd128x64_TLM->busy(busy);
        u_sc_glcd128x64_TLM->up(up);
        u_sc_glcd128x64_TLM->down(down);

        sc_Stopped.write(false);
        
        // WAVE
        fp = sc_create_vcd_trace_file("sc_pong_SbS_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, busy,  "busy");
        sc_trace(fp, up,    "up");
        sc_trace(fp, down,  "down");
        sc_trace(fp, x_pos, "x_pos");
        sc_trace(fp, y_pos, "y_pos");
        sc_trace(fp, pixel, "pixel");
        sc_trace(fp, p_tick,"p_tick");
    }
    
    ~sc_pong_SbS_TB(void)
    {
    }
};

#endif
