// Q11a. 고전 아케이드 게임 Space Invader를 합성 가능한 베릴로그 코드로 작성하라. 테스트벤치는 SystemC로 작성 하여야 하며 그래픽 처리에 SDL2를 사용하여 테스트 벤치에 내장할것. 베릴로그는 Verilator를 이용하여 SysetmC 로 변환 하는 방법을 사용하라. 외계인을 처치할 때마다 점수가 누적되어 상단에 표출되는 점수(Score) 카운터 레지스터 및 폰트 매핑하고 단순 사각형 도트가 아닌, 8비트 고전 아케이드 에일리언 외형을 렌더링하기 위한 Sprite ROM 내부 배열 추가하며 아군 우주선이 피격당했을 때 기회가 차감되는 목숨(Life) 시스템 FSM 보완한 전체 코드를 작성하라. 베릴로그 RTL 코드는 물롤 SystemC 테스트벤치와 Makefile를 모두 보여다오.
// -----------------------------------------------------------------
// Filename: sc_invaders_TB.h
// -----------------------------------------------------------------

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
