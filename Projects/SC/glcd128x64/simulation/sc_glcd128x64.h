//
// Filanema: sc_glcd128x64.h
//

#ifndef _SC_GLCD128x64_H_
#define _SC_GLCD128x64_H_

#include <systemc.h>
#include <SDL2/SDL.h>

SC_MODULE(sc_glcd128x64)
{
    sc_in<bool>     RS; // Register Mode Select: Instruction(L), Data(H)
    sc_in<bool>     RW; // Read(H), Write(L)
    sc_in<bool>     E;  // Enable @ Posedge
    sc_in<sc_uint<8> >  DBi; // Data Bus
    sc_out<sc_uint<8> > DBo; // Data Output Bus
    sc_in<bool>     CS1;    // Chip-Select #1
    sc_in<bool>     CS2;    // Chip-Select #2
    sc_in<bool>     RST;    // Reset(L)

    // GLCD
    void Renderer_Thread(void);
    uint8_t gMemory[2][8][64];    // [CS#][Page#][Line#]
    // GD RAM(8-pixel per Page)
    // |<----------------------- X Address[0:63] ---------------->|
    // |     Page #0           Page #1     ......       Page #7   |
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+ ---
    // |0|1|2|3|4|5|6|7| |0|1|2|3|4|5|6|7| ...... |0|1|2|3|4|5|6|7|  ^
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+  |
    // |0|1|2|3|4|5|6|7| |0|1|2|3|4|5|6|7| ...... |0|1|2|3|4|5|6|7|  |
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+  Y Address[0:63]
    // :               : :               : ...... :               :  (CS1)
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+  |
    // |0|1|2|3|4|5|6|7| |0|1|2|3|4|5|6|7| ...... |0|1|2|3|4|5|6|7|  v
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+ ---
    //
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+ ---
    // |0|1|2|3|4|5|6|7| |0|1|2|3|4|5|6|7| ...... |0|1|2|3|4|5|6|7|  ^
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+  |
    // |0|1|2|3|4|5|6|7| |0|1|2|3|4|5|6|7| ...... |0|1|2|3|4|5|6|7|  |
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+  Y Address[0:63]
    // :               : :               : ...... :               :  (CS2)
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+  |
    // |0|1|2|3|4|5|6|7| |0|1|2|3|4|5|6|7| ...... |0|1|2|3|4|5|6|7|  v
    // +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ ...... +-+-+-+-+-+-+-+-+ ---
    //       Page #0           Page #1     ......       Page #7

    // SDL2--------------------------
    SDL_Window* window;
    SDL_Renderer* renderer;

    SC_CTOR(sc_glcd128x64)
    {
        SC_THREAD(Renderer_Thread);
        sensitive << E;

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
                              64, 128,
                              SDL_WINDOW_SHOWN);
        if (!window)
        {
            fprintf(stderr, "SDL Initialization Fail: %s\n", SDL_GetError());
            SDL_Quit();
            return;
        }

        SDL_SetWindowTitle(window, "GLCD 128x64");
        SDL_SetWindowMinimumSize(window, 64, 128);
        SDL_SetWindowMaximumSize(window, 64, 128);
        SDL_SetWindowResizable(window, SDL_FALSE);
        //SDL_SetWindowBordered(window, SDL_TRUE);
        renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    }

    ~sc_glcd128x64()
    {}
};
#endif
