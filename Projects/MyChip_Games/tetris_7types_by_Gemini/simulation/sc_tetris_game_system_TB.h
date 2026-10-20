//
// Filename: sc_tetris_game_system_TB.h
//

#ifndef _SC_tetris_game_system_TB_H_
#define _SC_tetris_game_system_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Etetris_game_system.h"
#else
#include "Vtetris_game_system.h"
#endif
#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_tetris_game_system_TB)
{
    sc_clock                clk;          // 픽셀 클럭 (매 클럭마다 1픽셀 데이터 출력)
    sc_signal<bool>         rst_n;        // 전체 시스템 리셋 (Active Low)
    
    // 외부 제어 및 타이머 신호 (1클럭 폭의 동기화 펄스)
    sc_signal<bool>         tick_i;       // 블록 자동 하강 틱 (외부 타이머 입력)
    sc_signal<bool>         btn_up;       // 블록 회전 (Rotate)
    sc_signal<bool>         btn_down;     // 빠른 하강 (Soft Drop)
    sc_signal<bool>         btn_left;     // 왼쪽 이동 (Move Left)
    sc_signal<bool>         btn_right;    // 오른쪽 이동 (Move Right)
    
    // 래스터 스캔 표준 비디오 인터페이스 출력
    sc_signal<bool>         h_sync;       // 수평 동기 신호
    sc_signal<bool>         v_sync;       // 수직 동기 신호
    sc_signal<bool>         video_active; // 유효 화면 구간 플래그
    sc_signal<bool>         pixel_data;   // 128x64 해상도 실시간 픽셀 데이터
    
    // 게임 상태 및 데이터 출력
    sc_signal<bool>         game_over;
    sc_signal<sc_uint<16> > score;

#ifdef EMULATED_CO_SIM
    Etetris_game_system*    u_tetris_game_system;
#else
    Vtetris_game_system*    u_tetris_game_system;
#endif
    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    void Test_Gen(void);

    SC_CTOR(sc_tetris_game_system_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
#ifdef EMULATED_CO_SIM
        u_tetris_game_system = new Etetris_game_system("u_tetris_game_system");
#else
        u_tetris_game_system = new Vtetris_game_system("u_tetris_game_system");
#endif
        u_tetris_game_system->clk(clk);
        u_tetris_game_system->rst_n(rst_n);
        u_tetris_game_system->tick_i(tick_i);
        u_tetris_game_system->btn_up(btn_up);
        u_tetris_game_system->btn_down(btn_down);
        u_tetris_game_system->btn_left(btn_left);
        u_tetris_game_system->btn_right(btn_right);
        u_tetris_game_system->h_sync(h_sync);
        u_tetris_game_system->v_sync(v_sync);
        u_tetris_game_system->video_active(video_active);
        u_tetris_game_system->pixel_data(pixel_data);
        u_tetris_game_system->game_over(game_over);
        u_tetris_game_system->score(score);
        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->clk(clk);
        u_sc_glcd128x64_TLM->rst_n(rst_n);
        u_sc_glcd128x64_TLM->btn_up(btn_up);
        u_sc_glcd128x64_TLM->btn_down(btn_down);
        u_sc_glcd128x64_TLM->btn_left(btn_left);
        u_sc_glcd128x64_TLM->btn_right(btn_right);
        u_sc_glcd128x64_TLM->h_sync(h_sync);
        u_sc_glcd128x64_TLM->v_sync(v_sync);
        u_sc_glcd128x64_TLM->video_active(video_active);
        u_sc_glcd128x64_TLM->pixel_data(pixel_data);
        u_sc_glcd128x64_TLM->game_over(game_over);
        u_sc_glcd128x64_TLM->score(score);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_tetris_game_system_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, rst_n,     "rst_n");
        sc_trace(fp, tick_i,    "tick_i");
        sc_trace(fp, btn_up,    "btn_up");
        sc_trace(fp, btn_down,  "btn_down");
        sc_trace(fp, btn_left,  "btn_left");
        sc_trace(fp, btn_right, "btn_right");
        sc_trace(fp, h_sync,    "h_sync");
        sc_trace(fp, v_sync,    "v_sync");
        sc_trace(fp, video_active, "video_active");
        sc_trace(fp, pixel_data,"pixel_data");
        sc_trace(fp, game_over, "game_over");
        sc_trace(fp, score,     "score");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_tetris_game_system->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vtetris_game_system.vcd");
#endif
    }
};
#endif
