/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_Your_Design_TB.h
Purpose: Testbench for Your_Design
Revision History:
*******************************************************************************/
#ifndef _SC_YOUR_DESIGN_TB_H_
#define _SC_YOUR_DESIGN_TB_H_

#include <systemc.h>
#include <SDL2/SDL.h>
#include "VYour_Design.h"

SC_MODULE(sc_Your_Design_TB)
{
    sc_clock            clk;
    sc_signal<bool>     reset;
    sc_signal<bool>     enable;
    sc_signal<bool>     up;
    sc_signal<bool>     down;
    sc_signal<bool>     p_tick;
    sc_signal<bool>     hsync;
    sc_signal<bool>     vsync;
    sc_signal<bool>     pixel;

    // Verilated module
    VYour_Design*       u_VYour_Design;

    void Test_Gen();
    void Test_Mon();

#ifdef DVCD_TRACE
    sc_trace_file* fp;  // VCD file
#endif

    SDL_Window* window;
    SDL_Renderer* renderer;

    SC_CTOR(sc_Your_Design_TB) :   // Constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
#ifdef KEYIN_HSYNC        
        sensitive << hsync;
#else
        sensitive << clk;
#endif
        enable.write(true);

        SC_THREAD(Test_Mon);     // Cycle-Accurate Screen Monitor
        sensitive << clk;

        ////////////////////////////////////////////////////////////////
        // SDL
        window = NULL;
        renderer = NULL;

        // SDL
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

        // DUT: "Your_Design"
        u_VYour_Design = new VYour_Design("u_VYour_Design");
        u_VYour_Design->clk(clk);
        u_VYour_Design->reset(reset);
        u_VYour_Design->enable(enable);
        u_VYour_Design->up(up);
        u_VYour_Design->down(down);
        u_VYour_Design->p_tick(p_tick);
        u_VYour_Design->hsync(hsync);
        u_VYour_Design->vsync(vsync);
        u_VYour_Design->pixel(pixel);

#ifdef VCD_TRACE
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_Your_Design_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, enable,"enable");
        sc_trace(fp, up,    "up");
        sc_trace(fp, down,  "down");
        sc_trace(fp, p_tick,"p_tick");
        sc_trace(fp, hsync, "hsync");
        sc_trace(fp, vsync, "vsync");
        sc_trace(fp, pixel, "pixel");
#endif  // VCD_TRACE
    }

    // Destructor
    ~sc_Your_Design_TB()
    {}
};

#endif // _SC_YOUR_DESIGN_H_

