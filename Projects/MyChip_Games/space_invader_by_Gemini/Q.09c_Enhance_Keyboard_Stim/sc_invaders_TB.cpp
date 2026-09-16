// Q9c. 키보드 입력을 처리해 줄 sc_invaders_TB.cpp 의 SystemC 입력 자극 시나리오를 작성하라
//---------------------------------------------------------
// Filename: sc_invaders_TB.cpp
// ## 💻 sc_invaders_TB.cpp 전체 소스 코드
//---------------------------------------------------------

#include "sc_invaders_TB.h"
#include <SDL2/SDL.h>
#include <iostream>

// 1. 50MHz 마스터 시스템 클럭 드라이버 스레드 (반주기 10ns)
void sc_invaders_TB::clock_process() {
    while (true) {
        clk.write(false);
        wait(10, SC_NS);
        clk.write(true);
        wait(10, SC_NS);
    }
}

// 2. 💡 실시간 호스트 키보드 자극 주입 및 폴링 프로세스
void sc_invaders_TB::keyboard_polling_process() {
    // [초기화 단계] 하드웨어 핀 리셋 주입
    rst_n.write(false);
    btn_left.write(false);
    btn_right.write(false);
    btn_fire.write(false);
    
    // 리셋을 유지하며 100ns 동안 하드웨어 초기화 대기
    wait(100, SC_NS);
    
    // 리셋 해제 -> 하드웨어 엔진이동 가동 (START 화면 진입)
    rst_n.write(true);
    std::cout << "[SystemC TB] 하드웨어 리셋 해제 완료. 시뮬레이터 조작을 시작합니다." << std::endl;

    // 메인 무한 루프: 약 60Hz(16.6ms) 간격으로 키보드 서브시스템 스캔
    while (true) {
        wait(16.6, SC_MS);

        // 💡 SDL 내부 내부 이벤트 버퍼 강제 동기화 (Verilator 환경 필수 요소)
        // OS로부터 키보드 디바이스의 최신 하드웨어 상태 스냅샷을 긁어옵니다.
        SDL_PumpEvents();

        // 현재 시점에 어떤 키가 눌려있는지 배열 포인터 로드
        const Uint8* keyboard_state = SDL_GetKeyboardState(NULL);

        if (keyboard_state != nullptr) {
            // [A] 왼쪽 방향키 감지 -> btn_left 포트로 1/0 주입
            if (keyboard_state[SDL_SCANCODE_LEFT]) {
                btn_left.write(true);
            } else {
                btn_left.write(false);
            }

            // [B] 오른쪽 방향키 감지 -> btn_right 포트로 1/0 주입
            if (keyboard_state[SDL_SCANCODE_RIGHT]) {
                btn_right.write(true);
            } else {
                btn_right.write(false);
            }

            // [C] 스페이스바 키 감지 -> btn_fire 포트로 1/0 주입
            if (keyboard_state[SDL_SCANCODE_SPACE]) {
                btn_fire.write(true);
            } else {
                btn_fire.write(false);
            }
        }
    }
}
