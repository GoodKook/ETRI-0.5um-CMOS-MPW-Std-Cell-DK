//
// Filename: sc_asteroids_top_TB.h
//

#ifndef _SC_asteroids_top_TB_H_
#define _SC_asteroids_top_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Easteroids_top.h"
#else
#include "Vasteroids_top.h"
#endif
#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_asteroids_top_TB)
{
    sc_clock                clk;          // 픽셀 클럭 (매 클럭마다 1픽셀 데이터 출력)
    sc_signal<bool>         rst_n;        // 전체 시스템 리셋 (Active Low)

    // 조작 키 입력 (디바운싱 완료 신호 가정)
    sc_signal<bool>         btn_left;        // 좌회전
    sc_signal<bool>         btn_right;       // 우회전
    sc_signal<bool>         btn_thrust;      // 전진 가속
    sc_signal<bool>         btn_fire;        // 총알 발사
    
    // 128x64 타이밍 및 데이터 출력 신호
    sc_signal<bool>         pixel_valid;
    sc_signal<bool>         pixel_data;

#ifdef EMULATED_CO_SIM
    Easteroids_top*         u_asteroids_top;
#else
    Vasteroids_top*         u_asteroids_top;
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
//            wait(clk.posedge_event());
//            usleep(5);
//        }
//    }
//#endif
    void Test_Gen(void);

    SC_CTOR(sc_asteroids_top_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
//#ifndef EMULATED_CO_SIM
//        SC_THREAD(Delay_Sim);
//        sensitive << clk;
//#endif
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
#ifdef EMULATED_CO_SIM
        u_asteroids_top = new Easteroids_top("u_asteroids_top");
#else
        u_asteroids_top = new Vasteroids_top("u_asteroids_top");
#endif
        u_asteroids_top->clk(clk);
        u_asteroids_top->rst_n(rst_n);
        u_asteroids_top->btn_left(btn_left);
        u_asteroids_top->btn_right(btn_right);
        u_asteroids_top->btn_thrust(btn_thrust);
        u_asteroids_top->btn_fire(btn_fire);
        u_asteroids_top->pixel_valid(pixel_valid);
        u_asteroids_top->pixel_data(pixel_data);
        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->clk(clk);
        u_sc_glcd128x64_TLM->rst_n(rst_n);
        u_sc_glcd128x64_TLM->btn_left(btn_left);
        u_sc_glcd128x64_TLM->btn_right(btn_right);
        u_sc_glcd128x64_TLM->btn_thrust(btn_thrust);
        u_sc_glcd128x64_TLM->btn_fire(btn_fire);
        u_sc_glcd128x64_TLM->pixel_valid(pixel_valid);
        u_sc_glcd128x64_TLM->pixel_data(pixel_data);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_asteroids_top_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,           "clk");
        sc_trace(fp, rst_n,         "rst_n");
        sc_trace(fp, btn_left,      "btn_left");
        sc_trace(fp, btn_right,     "btn_right");
        sc_trace(fp, btn_thrust,    "btn_thrust");
        sc_trace(fp, btn_fire,      "btn_fire");
        sc_trace(fp, pixel_valid,   "pixel_valid");
        sc_trace(fp, pixel_data,    "pixel_data");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_asteroids_top->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vasteroids_top.vcd");
#endif
    }
};
#endif
