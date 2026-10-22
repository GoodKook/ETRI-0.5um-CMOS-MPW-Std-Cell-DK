//
// Filename: sc_asteroids_full_core_TB.h
//

#ifndef _SC_asteroids_full_core_TB_H_
#define _SC_asteroids_full_core_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Easteroids_full_core.h"
#else
#include "Vasteroids_full_core.h"
#endif
#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_asteroids_full_core_TB)
{
    sc_clock                clk;          // 픽셀 클럭 (매 클럭마다 1픽셀 데이터 출력)
    sc_signal<bool>         rst_n;        // 전체 시스템 리셋 (Active Low)

    // 조작 키 입력 (디바운싱 완료 신호 가정)
    sc_signal<bool>         btn_left;        // 좌회전
    sc_signal<bool>         btn_right;       // 우회전
    sc_signal<bool>         btn_thrust;      // 전진 가속
    sc_signal<bool>         btn_fire;        // 총알 발사
    sc_signal<bool>         btn_start;       // 게임 오버 후 재시작 버튼
    
    // 128x64 타이밍 및 데이터 출력 신호
    sc_signal<bool>         hsync;
    sc_signal<bool>         vsync;           
    sc_signal<bool>         video_on;
    sc_signal<bool>         pixel_data;

#ifdef EMULATED_CO_SIM
    Easteroids_full_core*    u_asteroids_full_core;
#else
    Vasteroids_full_core*    u_asteroids_full_core;
#endif
    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

//#ifndef EMULATED_CO_SIM
//    void Delay_Sim()
//    {
//        while(true)
//        {
//            wait(vsync.posedge_event());
//            usleep(10);
//        }
//    }
//#endif
    void Test_Gen(void);

    SC_CTOR(sc_asteroids_full_core_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
//#ifndef EMULATED_CO_SIM
//        SC_THREAD(Delay_Sim);
//        sensitive << vsync;
//#endif
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
#ifdef EMULATED_CO_SIM
        u_asteroids_full_core = new Easteroids_full_core("u_asteroids_full_core");
#else
        u_asteroids_full_core = new Vasteroids_full_core("u_asteroids_full_core");
#endif
        u_asteroids_full_core->clk(clk);
        u_asteroids_full_core->rst_n(rst_n);
        u_asteroids_full_core->btn_left(btn_left);
        u_asteroids_full_core->btn_right(btn_right);
        u_asteroids_full_core->btn_thrust(btn_thrust);
        u_asteroids_full_core->btn_fire(btn_fire);
        u_asteroids_full_core->btn_start(btn_start);
        u_asteroids_full_core->hsync(hsync);
        u_asteroids_full_core->vsync(vsync);
        u_asteroids_full_core->video_on(video_on);
        u_asteroids_full_core->pixel_data(pixel_data);
        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->clk(clk);
        u_sc_glcd128x64_TLM->rst_n(rst_n);
        u_sc_glcd128x64_TLM->btn_left(btn_left);
        u_sc_glcd128x64_TLM->btn_right(btn_right);
        u_sc_glcd128x64_TLM->btn_thrust(btn_thrust);
        u_sc_glcd128x64_TLM->btn_fire(btn_fire);
        u_sc_glcd128x64_TLM->btn_start(btn_start);
        u_sc_glcd128x64_TLM->h_sync(hsync);
        u_sc_glcd128x64_TLM->v_sync(vsync);
        u_sc_glcd128x64_TLM->video_on(video_on);
        u_sc_glcd128x64_TLM->pixel_data(pixel_data);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_asteroids_full_core_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, rst_n,     "rst_n");
        sc_trace(fp, btn_left,  "btn_left");
        sc_trace(fp, btn_right, "btn_right");
        sc_trace(fp, btn_thrust, "btn_thrust");
        sc_trace(fp, btn_fire,  "btn_fire");
        sc_trace(fp, btn_start, "btn_start");
        sc_trace(fp, hsync,    "h_sync");
        sc_trace(fp, vsync,    "v_sync");
        sc_trace(fp, pixel_data,"pixel_data");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_asteroids_full_core->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vasteroids_full_core.vcd");
#endif
    }
};
#endif
