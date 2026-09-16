// Q9d. 임베디드 그래픽 LCD 연동을 완성할 sc_glcd128x64_TLM.cpp 의 SDL2 연동 시현 스레드 보완
//---------------------------------------------------
// Filename: sc_glcd128x64_TLM.cpp
// ## 💻 보완 완성형 sc_glcd128x64_TLM.cpp
//---------------------------------------------------

#include "sc_glcd128x64_TLM.h"
#include <iostream>
#include <verilated.h> // Verilator 런타임 종료 함수 참조

sc_glcd128x64_TLM::sc_glcd128x64_TLM(sc_module_name name) 
    : sc_module(name), m_window(NULL), m_renderer(NULL), m_texture(NULL) {
    
    // 128x64 해상도 가상 내부 VRAM 버퍼 초기화 (0: Black)
    for(int y=0; y<64; y++) {
        for(int x=0; x<128; x++) {
            m_screen_buffer[y][x] = false;
        }
    }

    // SDL2 비디오 및 이벤트 서브시스템 초기화
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_EVENTS) < 0) {
        std::cerr << "[GLCD ERROR] SDL2 서브시스템 초기화 실패: " << SDL_GetError() << std::endl;
        return;
    }

    // 💡 128x64 오리지널 도트 크기로 컴팩트 윈도우 생성
    m_window = SDL_CreateWindow("SystemC Space Invaders 128x64 GLCD",
                                SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                                128, 64, SDL_WINDOW_SHOWN);
    if (!m_window) {
        std::cerr << "[GLCD ERROR] SDL2 윈도우 생성 실패: " << SDL_GetError() << std::endl;
        return;
    }

    // 하드웨어 가속기(GPU) 및 V-Sync 수직동기화 활성화
    m_renderer = SDL_CreateRenderer(m_window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!m_renderer) {
         m_renderer = SDL_CreateRenderer(m_window, -1, SDL_RENDERER_SOFTWARE);
    }

    // 32비트 ARGB8888 실시간 픽셀 스트리밍 전용 텍스처 바인딩
    m_texture = SDL_CreateTexture(m_renderer, SDL_PIXELFORMAT_ARGB8888, 
                                  SDL_TEXTUREACCESS_STREAMING, 128, 64);

    // RTL 버스 쓰기 포인터 모니터링 메소드 등록
    SC_METHOD(write_data_process);
    sensitive << clk.pos();

    // 💡 독자적인 실시간 60Hz 화면 업데이트 스레드 등록
    SC_THREAD(update_screen_process);
}

// 파괴자: 시뮬레이션 인터럽트 발생 시 메모리 자원 완전 해제
sc_glcd128x64_TLM::~sc_glcd128x64_TLM() {
    if (m_texture)  SDL_DestroyTexture(m_texture);
    if (m_renderer) SDL_DestroyRenderer(m_renderer);
    if (m_window)   SDL_DestroyWindow(m_window);
    SDL_Quit();
}

// 프로세스 1: Verilog RTL 버스에서 날아오는 동기식 픽셀 데이터 쓰기 제어
void sc_glcd128x64_TLM::write_data_process() {
    if (rst_n.read() == false) {
        for(int y=0; y<64; y++) {
            for(int x=0; x<128; x++) {
                m_screen_buffer[y][x] = false;
            }
        }
    } 
    else if (lcd_write_en.read() == true) {
        unsigned int x = lcd_x.read().to_uint();
        unsigned int y = lcd_y.read().to_uint();
        if (x < 128 && y < 64) {
            m_screen_buffer[y][x] = lcd_data.read();
        }
    }
}

// 프로세스 2: 💡 보완 완료된 SDL2 60Hz 화면 시현/모니터링 스레드
void sc_glcd128x64_TLM::update_screen_process() {
    Uint32 pixels[128 * 64];

    while (true) {
        // 실제 아케이드 LCD 사양에 맞추어 대략 60Hz(16.6ms) 간격으로 루프 스케줄링
        wait(16.6, SC_MS); 

        // [안전장치 1] OS 윈도우 관리 이벤트 처리 루프 보완
        // 이 처리가 누락되면 시뮬레이션 도중 윈도우 창을 드래그하거나 최소화할 때 창이 하얗게 굳어버립니다.
        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                std::cout << "[GLCD] 사용자가 에뮬레이터 창을 종료했습니다." << std::endl;
                // Verilator 시뮬레이션 커널에 종료 시그널 전달
                Verilated::gotFinish(true); 
                sc_stop();
                return;
            }
        }

        // [안전장치 2] 논리 레벨 VRAM 버퍼를 SDL용 32비트 ARGB 비트맵 포맷으로 다이렉트 컨버전
        for (int y = 0; y < 64; ++y) {
            for (int x = 0; x < 128; ++x) {
                // 참(1): 하얀색(0xFFFFFFFF), 거짓(0): 검은색(0xFF000000)
                pixels[y * 128 + x] = m_screen_buffer[y][x] ? 0xFFFFFFFF : 0xFF000000;
            }
        }

        // [안전장치 3] 스트리밍 텍스처 업데이트 및 1:1 도트 하드웨어 렌더링 시현
        SDL_UpdateTexture(m_texture, NULL, pixels, 128 * sizeof(Uint32));
        SDL_RenderClear(m_renderer);
        SDL_RenderCopy(m_renderer, m_texture, NULL, NULL);
        SDL_RenderPresent(m_renderer);
    }
}
