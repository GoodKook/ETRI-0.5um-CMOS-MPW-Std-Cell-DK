#include "sc_invaders_TB.h"
#include <SDL2/SDL.h>

void sc_invaders_TB::clock_process() {
    while (true) {
        clk.write(false); wait(10, SC_NS);
        clk.write(true);  wait(10, SC_NS);
    }
}

void sc_invaders_TB::keyboard_polling_process() {
    rst_n.write(false);
    btn_left.write(false);
    btn_right.write(false);
    btn_fire.write(false);
    wait(100, SC_NS);
    rst_n.write(true);

    while (true) {
        wait(16.6, SC_MS);
        SDL_PumpEvents();
        const Uint8* state = SDL_GetKeyboardState(NULL);

        if (state != nullptr) {
            btn_left.write(state[SDL_SCANCODE_LEFT]  ? true : false);
            btn_right.write(state[SDL_SCANCODE_RIGHT] ? true : false);
            btn_fire.write(state[SDL_SCANCODE_SPACE] ? true : false);
        }
    }
}
