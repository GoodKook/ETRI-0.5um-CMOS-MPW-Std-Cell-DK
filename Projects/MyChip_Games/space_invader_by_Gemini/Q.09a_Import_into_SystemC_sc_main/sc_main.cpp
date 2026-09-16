// Q9a. import space_invaders_engine.v into SystemC testbench
//------------------------------------------------------------------------------
// Filename: sc_main.cpp
//------------------------------------------------------------------------------

#include <systemc.h>
#include <verilated.h>            // Verilator 런타임 헤더
#include "Vspace_invaders_engine.h" // 💡 Verilator가 자동으로 생성할 Verilog 변환 헤더
#include "sc_glcd128x64_TLM.h"
#include "sc_invaders_TB.h"

int sc_main(int argc, char* argv[]) {
    std::cout << "[SystemC Main] Verilator-SystemC 혼합 시뮬레이션 시작..." << std::endl;

    // 1. Verilator 명령 인자 패싱 및 설정 초기화
    Verilated::commandArgs(argc, argv);

    // 2. 컴포넌트 간 상호 연결을 위한 SystemC 채널(신호선) 선언
    sc_signal<bool>        sig_clk;
    sc_signal<bool>        sig_rst_n;
    sc_signal<bool>        sig_btn_left;
    sc_signal<bool>        sig_btn_right;
    sc_signal<bool>        sig_btn_fire;

    sc_signal<bool>        sig_lcd_write_en;
    sc_signal<sc_uint<7>>  sig_lcd_x;
    sc_signal<sc_uint<6>>  sig_lcd_y;
    sc_signal<bool>        sig_lcd_data;

    // 3. 모듈 인스턴스화
    // (A) 자극 생성기 (테스트벤치 입력 드라이버)
    sc_invaders_TB u_tb("u_invaders_TB");

    // (B) 💡 Verilator에 의해 SystemC 모듈화된 Verilog 게임 코어 엔진 임포트
    Vspace_invaders_engine* u_engine = new Vspace_invaders_engine("u_space_invaders_engine");

    // (C) SDL2 기반 실시간 화면 시현 디스플레이 모듈
    sc_glcd128x64_TLM u_glcd("u_glcd_display");

    // 4. 핀 맵핑 및 포트 바인딩 (Interconnect)

    // [A] 테스트벤치 입력 자극 라인 연결
    u_tb.clk(sig_clk);
    u_tb.rst_n(sig_rst_n);
    u_tb.btn_left(sig_btn_left);
    u_tb.btn_right(sig_btn_right);
    u_tb.btn_fire(sig_btn_fire);

    // [B] 💡 Verilog RTL 엔진 입력 및 출력 핀 연결 (생성된 포인터 참조 객체 바인딩)
    u_engine->clk(sig_clk);
    u_engine->rst_n(sig_rst_n);
    u_engine->btn_left(sig_btn_left);
    u_engine->btn_right(sig_btn_right);
    u_engine->btn_fire(sig_btn_fire);
    u_engine->lcd_write_en(sig_lcd_write_en);
    u_engine->lcd_x(sig_lcd_x);
    u_engine->lcd_y(sig_lcd_y);
    u_engine->lcd_data(sig_lcd_data);

    // [C] 가상 LCD 디스플레이 입력 라인 연결
    u_glcd.clk(sig_clk);
    u_glcd.rst_n(sig_rst_n);
    u_glcd.lcd_write_en(sig_lcd_write_en);
    u_glcd.lcd_x(sig_lcd_x);
    u_glcd.lcd_y(sig_lcd_y);
    u_glcd.lcd_data(sig_lcd_data);

    // 5. 파형 분석용 VCD 파일 생성 (옵션)
    sc_trace_file *tf = sc_create_vcd_trace_file("space_invaders_systemc_wave");
    if (tf) {
        sc_trace(tf, sig_clk, "CLK");
        sc_trace(tf, sig_rst_n, "RST_N");
        sc_trace(tf, sig_btn_fire, "BTN_FIRE");
        sc_trace(tf, sig_lcd_write_en, "LCD_WE");
        sc_trace(tf, sig_lcd_x, "LCD_X");
        sc_trace(tf, sig_lcd_y, "LCD_Y");
        sc_trace(tf, sig_lcd_data, "LCD_DATA");
    }

    // 6. 시뮬레이션 커널 가동 및 루프 제어
    std::cout << "[SystemC Main] SDL2 그래픽 윈도우 스레드 오픈!" << std::endl;

    // Verilator가 내부 코드($finish)나 창 강제종료 이벤트를 만나기 전까지 전진
    while (!Verilated::gotFinish()) {
        sc_start(10, SC_NS); // 하드웨어 가상 시간 축을 10ns 단위로 쪼개어 가동
    }

    // 7. 파괴자 자원 정리 및 메모리 반환
    if (tf) sc_close_vcd_trace_file(tf);
    delete u_engine;
    
    std::cout << "[SystemC Main] 시뮬레이션이 성공적으로 안전 종료되었습니다." << std::endl;
    return 0;
}
