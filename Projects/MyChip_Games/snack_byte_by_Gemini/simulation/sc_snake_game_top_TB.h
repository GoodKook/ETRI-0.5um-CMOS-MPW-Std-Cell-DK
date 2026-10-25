//
// Filename: sc_snake_game_top_TB.h
//

#ifndef _SC_snake_game_top_TB_H_
#define _SC_snake_game_top_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Esnake_game_top.h"
#else
#include "Vsnake_game_top.h"
#endif
#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_snake_game_top_TB)
{
    sc_clock            clk;          // 픽셀 클럭 (매 클럭마다 1픽셀 데이터 출력)
    sc_signal<bool>     rst_n;        // 전체 시스템 리셋 (Active Low)
    
    sc_signal<bool>     btn_up;       // 상 방향 버튼
    sc_signal<bool>     btn_down;     // 하 방향 버튼
    sc_signal<bool>     btn_left;     // 좌 방향 버튼
    sc_signal<bool>     btn_right;    // 우 방향 버튼
    sc_signal<bool>     frame_start;  // 새 프레임 시작 동기화 신호

    sc_signal<bool>     pixel_valid;  // 현재 스트리밍 픽셀의 유효 구간 표시
    sc_signal<bool>     pixel_out;    // 클럭당 순차 출력되는 1비트 픽셀 데이터
    sc_signal<bool>     game_over;    // 게임 오버 상태 전송 출력

#ifdef EMULATED_CO_SIM
    Esnake_game_top*    u_snake_game_top;
#else
    Vsnake_game_top*    u_snake_game_top;
#endif
    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

#ifndef EMULATED_CO_SIM
    void Delay_Sim()
    {
        while(true)
        {
            wait(frame_start.posedge_event());
            usleep(1000000);
        }
    }
#endif
    void Test_Gen(void);

    SC_CTOR(sc_snake_game_top_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
#ifndef EMULATED_CO_SIM
        SC_THREAD(Delay_Sim);
        sensitive << frame_start;
#endif
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
#ifdef EMULATED_CO_SIM
        u_snake_game_top = new Esnake_game_top("u_snake_game_top");
#else
        u_snake_game_top = new Vsnake_game_top("u_snake_game_top");
#endif
        u_snake_game_top->clk(clk);
        u_snake_game_top->rst_n(rst_n);
        u_snake_game_top->btn_up(btn_up);
        u_snake_game_top->btn_down(btn_down);
        u_snake_game_top->btn_left(btn_left);
        u_snake_game_top->btn_right(btn_right);
        u_snake_game_top->frame_start(frame_start);
        u_snake_game_top->pixel_valid(pixel_valid);
        u_snake_game_top->pixel_out(pixel_out);
        u_snake_game_top->game_over(game_over);
        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->clk(clk);
        u_sc_glcd128x64_TLM->rst_n(rst_n);
        u_sc_glcd128x64_TLM->btn_up(btn_up);
        u_sc_glcd128x64_TLM->btn_down(btn_down);
        u_sc_glcd128x64_TLM->btn_left(btn_left);
        u_sc_glcd128x64_TLM->btn_right(btn_right);
        u_sc_glcd128x64_TLM->frame_start(frame_start);
        u_sc_glcd128x64_TLM->pixel_valid(pixel_valid);
        u_sc_glcd128x64_TLM->pixel_out(pixel_out);
        u_sc_glcd128x64_TLM->game_over(game_over);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_snake_game_top_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, rst_n,     "rst_n");
        sc_trace(fp, btn_up,    "btn_up");
        sc_trace(fp, btn_down,  "btn_down");
        sc_trace(fp, btn_left,  "btn_left");
        sc_trace(fp, btn_right, "btn_right");
        sc_trace(fp, frame_start,"frame_start");
        sc_trace(fp, pixel_valid,"pixel_valid");
        sc_trace(fp, pixel_out, "pixel_out");
        sc_trace(fp, game_over, "game_over");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_snake_game_top->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vsnake_game_top.vcd");
#endif
    }
};
#endif
