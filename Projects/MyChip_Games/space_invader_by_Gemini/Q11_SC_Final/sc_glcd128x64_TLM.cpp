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
