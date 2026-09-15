#ifndef SC_INVADERS_TB_H
#define SC_INVADERS_TB_H

#include <systemc.h>

SC_MODULE(sc_invaders_TB) {
    sc_out<bool> clk;
    sc_out<bool> rst_n;
    sc_out<bool> btn_left;
    sc_out<bool> btn_right;
    sc_out<bool> btn_fire;

    void clock_process();
    void keyboard_polling_process();

    SC_CTOR(sc_invaders_TB) {
        SC_THREAD(clock_process);
        SC_THREAD(keyboard_polling_process);
    }
};
#endif
