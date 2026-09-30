//
// Filename: sc_glcd128x64_TLM.h
//

#ifndef _SC_GLCD128x64_TLM_H_
#define _SC_GLCD128x64_TLM_H_

#include <systemc.h>
#include <SDL2/SDL.h>

SC_MODULE(sc_glcd128x64_TLM)
{
    sc_in<bool>             clk_o;

    sc_in<bool>             v_sync;
    sc_in<bool>             lcd_data;

    sc_out<bool>            btn_left;
    sc_out<bool>            btn_right;
    sc_out<bool>            btn_fire;

    void Display_Thread(void);
    void Button_Thread(void);

    // SDL2--------------------------
    SDL_Window* window;
    SDL_Renderer* renderer;
    SDL_Event event;

    SC_CTOR(sc_glcd128x64_TLM)
    {
        SC_THREAD(Display_Thread);
        sensitive << clk_o;

        SC_THREAD(Button_Thread);

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
