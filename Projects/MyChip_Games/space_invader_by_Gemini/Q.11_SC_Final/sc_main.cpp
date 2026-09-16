// Q11a. 고전 아케이드 게임 Space Invader를 합성 가능한 베릴로그 코드로 작성하라. 테스트벤치는 SystemC로 작성 하여야 하며 그래픽 처리에 SDL2를 사용하여 테스트 벤치에 내장할것. 베릴로그는 Verilator를 이용하여 SysetmC 로 변환 하는 방법을 사용하라. 외계인을 처치할 때마다 점수가 누적되어 상단에 표출되는 점수(Score) 카운터 레지스터 및 폰트 매핑하고 단순 사각형 도트가 아닌, 8비트 고전 아케이드 에일리언 외형을 렌더링하기 위한 Sprite ROM 내부 배열 추가하며 아군 우주선이 피격당했을 때 기회가 차감되는 목숨(Life) 시스템 FSM 보완한 전체 코드를 작성하라. 베릴로그 RTL 코드는 물롤 SystemC 테스트벤치와 Makefile를 모두 보여다오.
// -----------------------------------------------------------------
// Filename: sc_main.cpp
// -----------------------------------------------------------------

#include <systemc.h>
#include <verilated.h>            
#include "Vspace_invaders_engine_glcd.h" 
#include "sc_glcd128x64_TLM.h"
#include "sc_invaders_TB.h"

int sc_main(int argc, char* argv[]) {
    Verilated::commandArgs(argc, argv);

    sc_signal<bool>        sig_clk;
    sc_signal<bool>        sig_rst_n;
    sc_signal<bool>        sig_btn_left;
    sc_signal<bool>        sig_btn_right;
    sc_signal<bool>        sig_btn_fire;

    sc_signal<bool>        sig_lcd_write_en;
    sc_signal<sc_uint<7>>  sig_lcd_x;
    sc_signal<sc_uint<6>>  sig_lcd_y;
    sc_signal<bool>        sig_lcd_data;

    sc_invaders_TB u_tb("u_invaders_TB");
    Vspace_invaders_engine_glcd* u_engine = new Vspace_invaders_engine_glcd("u_space_invaders_engine");
    sc_glcd128x64_TLM u_glcd("u_glcd_display");

    u_tb.clk(sig_clk);
    u_tb.rst_n(sig_rst_n);
    u_tb.btn_left(sig_btn_left);
    u_tb.btn_right(sig_btn_right);
    u_tb.btn_fire(sig_btn_fire);

    u_engine->clk(sig_clk);
    u_engine->rst_n(sig_rst_n);
    u_engine->btn_left(sig_btn_left);
    u_engine->btn_right(sig_btn_right);
    u_engine->btn_fire(sig_btn_fire);
    u_engine->lcd_write_en(sig_lcd_write_en);
    u_engine->lcd_x(sig_lcd_x);
    u_engine->lcd_y(sig_lcd_y);
    u_engine->lcd_data(sig_lcd_data);

    u_glcd.clk(sig_clk);
    u_glcd.rst_n(sig_rst_n);
    u_glcd.lcd_write_en(sig_lcd_write_en);
    u_glcd.lcd_x(sig_lcd_x);
    u_glcd.lcd_y(sig_lcd_y);
    u_glcd.lcd_data(sig_lcd_data);

    while (!Verilated::gotFinish()) {
        sc_start(10, SC_NS); 
    }

    delete u_engine;
    return 0;
}

