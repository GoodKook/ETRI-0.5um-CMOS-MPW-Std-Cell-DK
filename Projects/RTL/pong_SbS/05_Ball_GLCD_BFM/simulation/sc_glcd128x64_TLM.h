//
// Filename: sc_glcd128x64_TLM.h
//

#ifndef _SC_GLCD128x64_TLM_H_
#define _SC_GLCD128x64_TLM_H_

#include <systemc.h>
#include <SDL2/SDL.h>

SC_MODULE(sc_glcd128x64_TLM)
{
    sc_in<bool>             reset;
    sc_in<sc_uint<7> >      x_pos;
    sc_in<sc_uint<6> >      y_pos;
    sc_in<bool>             pixel;
    sc_in<bool>             p_tick;
    sc_out<bool>            busy;

    void Display_Thread(void);

    // SDL2--------------------------
    SDL_Window* window;
    SDL_Renderer* renderer;
    SDL_Event event;

    SC_CTOR(sc_glcd128x64_TLM)//: clk("clk", 1, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Display_Thread);
        sensitive << p_tick;

        // SDL2--------------------------
        window = NULL;
        renderer = NULL;
        if (SDL_Init(SDL_INIT_VIDEO) < 0)
        {
            fprintf(stderr, "SDL Initialization Fail: %s\n", SDL_GetError());
            return;
        }

        window = SDL_CreateWindow("SDL2 Window",
                              SDL_WINDOWPOS_UNDEFINED,
                              SDL_WINDOWPOS_UNDEFINED,
                              128, 64,
                              SDL_WINDOW_SHOWN);
        if (!window)
        {
            fprintf(stderr, "SDL Initialization Fail: %s\n", SDL_GetError());
            SDL_Quit();
            return;
        }

        SDL_SetWindowTitle(window, "GLCD 128x64");
        //SDL_SetWindowMinimumSize(window, 64, 128);
        //SDL_SetWindowMaximumSize(window, 64, 128);
        SDL_SetWindowResizable(window, SDL_FALSE);
        //SDL_SetWindowBordered(window, SDL_TRUE);
        renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    }
};

#endif
