// Q9b. 빌드에 필요한 파일들을 모두 보여달라
//---------------------------------------------------------
// Filename: sc_invaders_TB.cpp
// ## 💻 5. sc_invaders_TB.cpp (SystemC 테스트벤치 제어기 소스)
// 호스트 PC의 키보드 입력을 비동기 감치하여 SystemC 및 RTL 엔진 포트로 주입해 주는 실시간 자극 드라이버입니다.
//---------------------------------------------------------
#include "sc_invaders_TB.h"
#include <SDL2/SDL.h>

void sc_invaders_TB::clock_process() {
    while (true) {
        clk.write(false);  wait(10, SC_NS); // 50MHz 모사 (반주기 10ns)
        clk.write(true);   wait(10, SC_NS);
    }
}

void sc_invaders_TB::keyboard_polling_process() {
    rst_n.write(false);
    btn_left.write(false);
    btn_right.write(false);
    btn_fire.write(false);
    wait(100, SC_NS);

    rst_n.write(true); // 리셋 해제

    while (true) {
        wait(16.6, SC_MS); // 화면 리프레시 주기와 동일하게 동기화

        const Uint8* state = SDL_GetKeyboardState(NULL);
        btn_left.write(state[SDL_SCANCODE_LEFT]  ? true : false);
        btn_right.write(state[SDL_SCANCODE_RIGHT] ? true : false);
        btn_fire.write(state[SDL_SCANCODE_SPACE] ? true : false);
    }
}
