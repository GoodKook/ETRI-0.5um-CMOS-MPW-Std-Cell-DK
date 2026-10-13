//
// Filename: sc_keyboard.h
//

#ifndef _SC_KEYBOARD_H_
#define _SC_KEYBOARD_H_

#include <systemc.h>
#include <SDL2/SDL.h>

SC_MODULE(sc_keyboard)
{
    sc_in<bool>             clk;    // Virtual Clock

    sc_out<bool>            btn_left;
    sc_out<bool>            btn_right;
    sc_out<bool>            btn_fire;

    void Button_Thread(void);

    // SDL2--------------------------
    SDL_Window* window;
    SDL_Event event;

    SC_CTOR(sc_keyboard)
    {
        SC_THREAD(Button_Thread);
        sensitive << clk;

        // SDL2--------------------------
        window = NULL;
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

        SDL_SetWindowTitle(window, "Keyboard");
    }
};

#endif
