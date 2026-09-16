// Q9b. 빌드에 필요한 파일들을 모두 보여달라
//------------------------------------------------------------
// Filename: sc_invaders_TB.h
// ## 📂 4. sc_invaders_TB.h (SystemC 테스트벤치 제어기 헤더)
//------------------------------------------------------------
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
