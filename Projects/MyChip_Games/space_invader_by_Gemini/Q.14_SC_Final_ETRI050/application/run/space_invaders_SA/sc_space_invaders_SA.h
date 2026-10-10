//
// Filename: sc_space_invaders_SA.h
//

#ifndef _SC_space_invaders_SA_H_
#define _SC_space_invaders_SA_H_

#include <systemc.h>
#include "space_invaders.h"
#include "sc_keyboard.h"

SC_MODULE(sc_space_invaders_SA)
{
    sc_clock                clk;        // Virtual Clock

    sc_signal<bool>         rst_n;      // Reset active Low
    sc_signal<bool>         btn_left;   // Button Left
    sc_signal<bool>         btn_right;  // Button Right
    sc_signal<bool>         btn_fire;   // Button Fire

    space_invaders*         u_space_invaders;
    sc_keyboard*            u_sc_keyboard;

    void Test_Gen(void);

    SC_CTOR(sc_space_invaders_SA):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT ------------------------------------
        u_space_invaders = new space_invaders("u_space_invaders");
        u_space_invaders->clk(clk);
        u_space_invaders->rst_n(rst_n);
        u_space_invaders->btn_left(btn_left);
        u_space_invaders->btn_right(btn_right);
        u_space_invaders->btn_fire(btn_fire);
        // Instantiate Keyboard --------------------------------
        u_sc_keyboard = new sc_keyboard("u_sc_keyboard");
        u_sc_keyboard->clk(clk);
        u_sc_keyboard->btn_left(btn_left);
        u_sc_keyboard->btn_right(btn_right);
        u_sc_keyboard->btn_fire(btn_fire);
    }
};
#endif
