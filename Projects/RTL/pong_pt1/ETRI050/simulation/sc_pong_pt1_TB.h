/**********************************************************************
Filename: sc_pong_pt1_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_pong_pt1_TB_H_
#define _SC_pong_pt1_TB_H_

#include <systemc.h>
#include <stdio.h>

#include <SDL2/SDL.h>

SC_MODULE(sc_pong_pt1_TB)
{
    // Signal for DUT's inputs
    sc_clock            clk;
    sc_signal<bool>     reset;
    sc_signal<bool>     enable;
    sc_signal<bool>     up;
    sc_signal<bool>     down;
    // Signal for DUT's outputs
    sc_signal<bool>     p_tick;
    sc_signal<bool>     hsync;
    sc_signal<bool>     vsync;
    sc_signal<bool>     rgb;

    sc_signal<bool>         sc_Stopped;

    // Test utilities
    void Test_Gen();
    void Test_Mon();

    sc_trace_file* fp;  // VCD file

    // SDL2--------------------------
    SDL_Window* window;
    SDL_Renderer* renderer;

    SC_CTOR(sc_pong_pt1_TB):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << hsync;

        SC_THREAD(Test_Mon);
        sensitive << clk;

        enable.write(true);

        sc_Stopped.write(false);
        
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
                              800, 600,
                              SDL_WINDOW_SHOWN);
        if (!window) {
            printf("SDL Initialization Fail: %s\n", SDL_GetError());
            SDL_Quit();
            return;
        }
        SDL_SetWindowTitle(window, "Verilog Pong Game");
        renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);

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
    }
    
    ~sc_pong_pt1_TB(void)
    {
    }
};

#endif
