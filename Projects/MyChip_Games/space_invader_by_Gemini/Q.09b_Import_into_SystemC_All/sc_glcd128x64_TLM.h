// Q9b. 빌드에 필요한 파일들을 모두 보여달라
//----------------------------------------------------------
// Filename: sc_glcd128x64_TLM.h
// ## 🖥️ 2. sc_glcd128x64_TLM.h (가상 LCD 디스플레이 헤더)
//----------------------------------------------------------

#ifndef SC_GLCD128X64_TLM_H
#define SC_GLCD128X64_TLM_H
#include <systemc.h>
#include <SDL2/SDL.h>

SC_MODULE(sc_glcd128x64_TLM) {
    sc_in<bool> clk;
    sc_in<bool> rst_n;
    sc_in<bool>        lcd_write_en;
    sc_in<sc_uint<7>>  lcd_x;
    sc_in<sc_uint<6>>  lcd_y;
    sc_in<bool>        lcd_data;

    bool m_screen_buffer[64][128];

    SDL_Window*   m_window;
    SDL_Renderer* m_renderer;
    SDL_Texture*  m_texture;

    void update_screen_process();
    void write_data_process();

    SC_CTOR(sc_glcd128x64_TLM);

    ~sc_glcd128x64_TLM();
};
#endif

