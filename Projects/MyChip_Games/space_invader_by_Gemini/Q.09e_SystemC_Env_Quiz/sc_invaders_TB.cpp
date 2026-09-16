// Q9e. 키보드 입력을 처리해 줄 sc_invaders_TB.cpp 의 SystemC 입력 자극 시나리오를 작성하고 임베디드 그래픽 LCD 연동을 완성할 sc_glcd128x64_TLM.cpp 의 SDL2 연동 시현 스레드 보완한 온전한 파일들과 Makefile을 모두 보여달라
//--------------------------------------------------------------
// ## 💻 1. sc_invaders_TB.cpp (완성형 입력 자극 제어)
// SDL_PumpEvents()를 통해 가상 윈도우 커널로부터 비동기식 하드웨어 키 상태를 읽어와, 매 주기에 맞춰 정확히 SystemC 및 Verilog 핀으로 강제 드라이브하는 완성형 테스트벤치 소스입니다.
//-----------------------------------------------------------------

#include "sc_invaders_TB.h"
#include <SDL2/SDL.h>
#include <iostream>
// 50MHz 시스템 메인 마스터 클럭 스레드 (반주기 10ns 동기화)
void sc_invaders_TB::clock_process() {
    while (true) {
        clk.write(false);
        wait(10, SC_NS);
        clk.write(true);
        wait(10, SC_NS);
    }
}

// 실시간 사용자 키보드 입력 스캔 및 하드웨어 핀 자극 주입 스레드
void sc_invaders_TB::keyboard_polling_process() {
    // [시스템 이니셜라이즈 단계] 전원 인가 직후 하드웨어 리셋 강제 주입
    rst_n.write(false);
    btn_left.write(false);
    btn_right.write(false);
    btn_fire.write(false);
    
    // 포트가 리셋 상태를 안정적으로 인지할 수 있도록 100ns 대기
    wait(100, SC_NS);
    
    // 리셋을 해제하여 아케이드 게임 엔진의 가동을 시작 (체크무늬 START 화면 진입)
    rst_n.write(true);
    std::cout << "[SystemC TB] 하드웨어 전원 리셋 해제 완료. 에뮬레이터 키보드 제어권을 활성화합니다." << std::endl;

    // 아케이드 기기의 키 패드 스캔 주기를 모사하여 60Hz(약 16.6ms) 간격으로 주기적 폴링 수행
    while (true) {
        wait(16.6, SC_MS);

        // OS의 가상 윈도우 인터럽트 큐로부터 하드웨어 키보드의 실시간 물리적 핀 상태 상태 펌핑
        SDL_PumpEvents();

        // 현재 시점에 호스트 PC에 눌려있는 전체 스캔코드 배열 포인터 로드
        const Uint8* keyboard_state = SDL_GetKeyboardState(NULL);

        if (keyboard_state != nullptr) {
            // [A] 키보드 왼쪽 방향키(<-) 감지 -> 하드웨어 btn_left 핀 바인딩
            if (keyboard_state[SDL_SCANCODE_LEFT]) {
                btn_left.write(true);
            } else {
                btn_left.write(false);
            }

            // [B] 키보드 오른쪽 방향키(->) 감지 -> 하드웨어 btn_right 핀 바인딩
            if (keyboard_state[SDL_SCANCODE_RIGHT]) {
                btn_right.write(true);
            } else {
                btn_right.write(false);
            }

            // [C] 키보드 스페이스바(Space) 감지 -> 하드웨어 btn_fire 핀 바인딩
            if (keyboard_state[SDL_SCANCODE_SPACE]) {
                btn_fire.write(true);
            } else {
                btn_fire.write(false);
            }
        }
    }
}
