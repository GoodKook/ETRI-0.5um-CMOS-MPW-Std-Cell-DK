/**********************************************************************
Filename: sc_pong_pt1_TB.h
Purpose : Core of 8-Tab Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_pong_pt1_TB_H_
#define  _SC_pong_pt1_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Epong_pt1.h"
#else
#include "Vpong_pt1.h"
#endif

#include <SDL2/SDL.h>

SC_MODULE(sc_pong_pt1_TB)
{
    sc_clock            clk;
    sc_signal<bool>     reset;
    sc_signal<bool>     enable;
    sc_signal<bool>     up;
    sc_signal<bool>     down;
    sc_signal<bool>     p_tick;
    sc_signal<bool>     hsync;
    sc_signal<bool>     vsync;
    sc_signal<bool>     rgb;

#ifdef EMULATED_CO_SIM
    Epong_pt1*    u_pong_pt1;
#else
    Vpong_pt1*    u_pong_pt1;
#endif

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    // Test utilities
    void Test_Gen();
#if defined(CA)
    void Test_Mon_CA();
#elif defined(SA)
    void Test_Mon_SA();
#endif
    // SDL2--------------------------
    SDL_Window* window;
    SDL_Renderer* renderer;

    SC_CTOR(sc_pong_pt1_TB):   // Constructor
    clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << hsync;

#if defined(CA)     // Co-Sim & Co-Emu
        SC_THREAD(Test_Mon_CA);
        sensitive << clk;
#elif defined(SA)   // Co-Emu only
        SC_THREAD(Test_Mon_SA);
        sensitive << clk;
#endif
        enable.write(true);

        // SDL2--------------------------
        window = NULL;
        renderer = NULL;
        if (SDL_Init(SDL_INIT_VIDEO) < 0)
        {
            printf("SDL Initialization Fail: %s\n", SDL_GetError());
            return;
        }

        window = SDL_CreateWindow("SDL2 Window",
                              SDL_WINDOWPOS_UNDEFINED,
                              SDL_WINDOWPOS_UNDEFINED,
                              128*2, 64*2,
                              SDL_WINDOW_SHOWN);
        if (!window) {
            printf("SDL Initialization Fail: %s\n", SDL_GetError());
            SDL_Quit();
            return;
        }
        SDL_SetWindowTitle(window, "Verilog Pong Game");
        renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);

        // Instaltiate DUT: "pong_pt1"
#ifdef EMULATED_CO_SIM
        u_pong_pt1 = new Epong_pt1("u_Epong_pt1");
#else
        u_pong_pt1 = new Vpong_pt1("u_Vpong_pt1");
#endif
        u_pong_pt1->clk(clk);
        u_pong_pt1->reset(reset);
        u_pong_pt1->enable(enable);
        u_pong_pt1->up(up);
        u_pong_pt1->down(down);
        u_pong_pt1->p_tick(p_tick);
        u_pong_pt1->hsync(hsync);
        u_pong_pt1->vsync(vsync);
        u_pong_pt1->rgb(rgb);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_pong_pt1_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, enable,"enable");
        sc_trace(fp, up,    "up");
        sc_trace(fp, down,  "down");
        sc_trace(fp, p_tick,"p_tick");
        sc_trace(fp, hsync, "hsync");
        sc_trace(fp, vsync, "vsync");
        sc_trace(fp, rgb,   "rgb");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_pong_pt1->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vpong_pt1.vcd");
#endif
    }
    
    ~sc_pong_pt1_TB(void)
    {
    }
};

#endif
