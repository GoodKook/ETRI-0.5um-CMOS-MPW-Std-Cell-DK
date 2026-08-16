//
// Filename: sc_pong_vh_TB.h
//

#ifndef _SC_PONG_vh_TB_H_
#define _SC_PONG_vh_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#include "Vpong_vh.h"
#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_pong_vh_TB)
{
    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<bool>         pixel;
    sc_signal<bool>         v_sync;

    sc_signal<bool>         p_tick;

    sc_signal<sc_uint<8> >  option;
    sc_signal<bool>         up;
    sc_signal<bool>         dn;
    sc_signal<bool>         lt;
    sc_signal<bool>         rt;

    sc_signal<bool>         game_over;
    sc_signal<bool>         game_new;

    Vpong_vh*              u_pong_vh;
    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    void Test_Gen(void);

    SC_CTOR(sc_pong_vh_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
        u_pong_vh = new Vpong_vh("u_pong_vh");
        u_pong_vh->clk(clk);
        u_pong_vh->reset(reset);
        u_pong_vh->v_sync(v_sync);
        u_pong_vh->pixel(pixel);
        u_pong_vh->p_tick(p_tick);
        u_pong_vh->option(option);
        u_pong_vh->btn_up(up);
        u_pong_vh->btn_down(dn);
        u_pong_vh->btn_left(lt);
        u_pong_vh->btn_right(rt);
        u_pong_vh->game_over(game_over);
        u_pong_vh->game_new(game_new);
        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->reset(reset);
        u_sc_glcd128x64_TLM->v_sync(v_sync);
        u_sc_glcd128x64_TLM->pixel(pixel);
        u_sc_glcd128x64_TLM->p_tick(p_tick);
        u_sc_glcd128x64_TLM->up(up);
        u_sc_glcd128x64_TLM->dn(dn);
        u_sc_glcd128x64_TLM->lt(lt);
        u_sc_glcd128x64_TLM->rt(rt);
        u_sc_glcd128x64_TLM->game_over(game_over);
        u_sc_glcd128x64_TLM->option(option);
        u_sc_glcd128x64_TLM->game_new(game_new);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_pong_vh_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, v_sync,"v_sync");
        sc_trace(fp, pixel, "pixel");
        sc_trace(fp, p_tick,"p_tick");
        sc_trace(fp, option,"option");
        sc_trace(fp, up,    "up");
        sc_trace(fp, dn,    "dn");
        sc_trace(fp, lt,    "lt");
        sc_trace(fp, rt,    "rt");
        sc_trace(fp, game_over, "game_over");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_pong_vh->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vpong_vh.vcd");
#endif
    }
};
#endif
