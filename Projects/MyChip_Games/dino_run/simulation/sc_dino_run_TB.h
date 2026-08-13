//
// Filename: sc_dino_run_TB.h
//

#ifndef _SC_DINO_RUN_TB_H_
#define _SC_DINO_RUN_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#include "Vdino_run.h"
#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_dino_run_TB)
{
    sc_clock                clk;
    sc_signal<bool>         reset;
    sc_signal<bool>         pixel;
    sc_signal<bool>         v_sync;

    sc_signal<bool>         p_tick;

    sc_signal<sc_uint<8> >  option;
    sc_signal<bool>         jump;

    sc_signal<bool>         game_over;

    Vdino_run*              u_dino_run;
    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    void Test_Gen(void);

    SC_CTOR(sc_dino_run_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
        u_dino_run = new Vdino_run("u_dino_run");
        u_dino_run->clk(clk);
        u_dino_run->reset(reset);
        u_dino_run->v_sync(v_sync);
        u_dino_run->pixel(pixel);
        u_dino_run->p_tick(p_tick);
        u_dino_run->option(option);
        u_dino_run->jump(jump);
        u_dino_run->game_over(game_over);
        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->reset(reset);
        u_sc_glcd128x64_TLM->v_sync(v_sync);
        u_sc_glcd128x64_TLM->pixel(pixel);
        u_sc_glcd128x64_TLM->p_tick(p_tick);
        u_sc_glcd128x64_TLM->jump(jump);
        u_sc_glcd128x64_TLM->option(option);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_dino_run_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, v_sync,"v_sync");
        sc_trace(fp, pixel, "pixel");
        sc_trace(fp, p_tick,"p_tick");
        sc_trace(fp, jump,  "jump");
        sc_trace(fp, option,  "option");
        sc_trace(fp, game_over, "game_over");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_dino_run->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vdino_run.vcd");
#endif
    }
};
#endif
