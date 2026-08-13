//
// Filename: sc_pong_pt2_TB.h
//

#ifndef _SC_PONG_PT2_TB_H_
#define _SC_PONG_PT2_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#include "Vpong_pt2.h"
#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_pong_pt2_TB)
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

    Vpong_pt2*              u_pong_pt2;
    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    void Test_Gen(void);

    SC_CTOR(sc_pong_pt2_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
        u_pong_pt2 = new Vpong_pt2("u_pong_pt2");
        u_pong_pt2->clk(clk);
        u_pong_pt2->reset(reset);
        u_pong_pt2->v_sync(v_sync);
        u_pong_pt2->pixel(pixel);
        u_pong_pt2->p_tick(p_tick);
        u_pong_pt2->option(option);
        u_pong_pt2->up(up);
        u_pong_pt2->down(dn);
        u_pong_pt2->left(lt);
        u_pong_pt2->right(rt);
        u_pong_pt2->game_over(game_over);
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

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_pong_pt2_TB");
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
        u_pong_pt2->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vpong_pt2.vcd");
#endif
    }
};
#endif
