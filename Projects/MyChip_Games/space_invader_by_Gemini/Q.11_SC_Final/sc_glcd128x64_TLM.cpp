// Q11a. 고전 아케이드 게임 Space Invader를 합성 가능한 베릴로그 코드로 작성하라. 테스트벤치는 SystemC로 작성 하여야 하며 그래픽 처리에 SDL2를 사용하여 테스트 벤치에 내장할것. 베릴로그는 Verilator를 이용하여 SysetmC 로 변환 하는 방법을 사용하라. 외계인을 처치할 때마다 점수가 누적되어 상단에 표출되는 점수(Score) 카운터 레지스터 및 폰트 매핑하고 단순 사각형 도트가 아닌, 8비트 고전 아케이드 에일리언 외형을 렌더링하기 위한 Sprite ROM 내부 배열 추가하며 아군 우주선이 피격당했을 때 기회가 차감되는 목숨(Life) 시스템 FSM 보완한 전체 코드를 작성하라. 베릴로그 RTL 코드는 물롤 SystemC 테스트벤치와 Makefile를 모두 보여다오.
// -----------------------------------------------------------------
// Filename: sc_glcd128x64_TLM.cpp
// -----------------------------------------------------------------

#include "sc_glcd128x64_TLM.h"
#include <iostream>
#include <verilated.h>

sc_glcd128x64_TLM::sc_glcd128x64_TLM(sc_module_name name) : sc_module(name), m_window(NULL), m_renderer(NULL), m_texture(NULL) {
    for(int y = 0; y < 64; y++)
        for(int x = 0; x < 128; x++)
            m_screen_buffer[y][x] = false;

    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_EVENTS) < 0) {
        std::cerr << "SDL2 초기화 실패: " << SDL_GetError() << std::endl;
        return;
    }

    m_window = SDL_CreateWindow("Space Invaders 128x64 GLCD", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 128, 64, SDL_WINDOW_SHOWN);
    m_renderer = SDL_CreateRenderer(m_window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!m_renderer) m_renderer = SDL_CreateRenderer(m_window, -1, SDL_RENDERER_SOFTWARE);
    m_texture = SDL_CreateTexture(m_renderer, SDL_PIXELFORMAT_ARGB8888, SDL_TEXTUREACCESS_STREAMING, 128, 64);

    SC_METHOD(write_data_process);
    sensitive << clk.pos();

    SC_THREAD(update_screen_process);
}

sc_glcd128x64_TLM::~sc_glcd128x64_TLM() {
    if (m_texture)  SDL_DestroyTexture(m_texture);
    if (m_renderer) SDL_DestroyRenderer(m_renderer);
    if (m_window)   SDL_DestroyWindow(m_window);
    SDL_Quit();
}

void sc_glcd128x64_TLM::write_data_process() {
    if (rst_n.read() == false) {
        for(int y = 0; y < 64; y++)
            for(int x = 0; x < 128; x++)
                m_screen_buffer[y][x] = false;
    } 
    else if (lcd_write_en.read() == true) {
        unsigned int x = lcd_x.read().to_uint();
        unsigned int y = lcd_y.read().to_uint();
        if (x < 128 && y < 64) {
            m_screen_buffer[y][x] = lcd_data.read();
        }
    }
}

void sc_glcd128x64_TLM::update_screen_process() {
    Uint32 pixels[128 * 64];
    while (true) {
        wait(16.6, SC_MS); 

        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                Verilated::gotFinish(true); 
                sc_stop();
                return;
            }
        }

        for (int y = 0; y < 64; ++y) {
            for (int x = 0; x < 128; ++x) {
                pixels[y * 128 + x] = m_screen_buffer[y][x] ? 0xFFFFFFFF : 0xFF000000;
            }
        }

        SDL_UpdateTexture(m_texture, NULL, pixels, 128 * sizeof(Uint32));
        SDL_RenderClear(m_renderer);
        SDL_RenderCopy(m_renderer, m_texture, NULL, NULL);
        SDL_RenderPresent(m_renderer);
    }
}
