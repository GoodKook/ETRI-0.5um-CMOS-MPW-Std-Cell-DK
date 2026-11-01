//
// Filename: sc_space_invaders_engine_glcd_TB.h
//

#ifndef _SC_space_invaders_engine_glcd_TB_H_
#define _SC_space_invaders_engine_glcd_TB_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#ifdef EMULATED_CO_SIM
#include "Espace_invaders_engine_glcd.h"
#else
#include "Vspace_invaders_engine_glcd.h"
#endif
#include "sc_glcd128x64_TLM.h"

SC_MODULE(sc_space_invaders_engine_glcd_TB)
{
    sc_clock                clk;           // 시스템 클럭
    sc_signal<bool>         rst_n;         // Active-low 리셋

    sc_signal<bool>         btn_left;      // 플레이어 왼쪽 이동
    sc_signal<bool>         btn_right;     // 플레이어 오른쪽 이동
    sc_signal<bool>         btn_fire;      // 미사일 발사

    // SystemC 가상 LCD 인터페이스 출력 버스
    sc_signal<bool>         lcd_write_en;
    sc_signal<sc_uint<7> >  lcd_x;          // 0 ~ 127
    sc_signal<sc_uint<6> >  lcd_y;          // 0 ~ 63
    sc_signal<bool>         lcd_data;

#ifdef EMULATED_CO_SIM
    Espace_invaders_engine_glcd*              u_space_invaders_engine_glcd;
#else
    Vspace_invaders_engine_glcd*              u_space_invaders_engine_glcd;
#endif
    sc_glcd128x64_TLM*      u_sc_glcd128x64_TLM;

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    void Test_Gen(void);

    SC_CTOR(sc_space_invaders_engine_glcd_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        // Instantiate DUT --------------------------------
#ifdef EMULATED_CO_SIM
        u_space_invaders_engine_glcd = new Espace_invaders_engine_glcd("u_space_invaders_engine_glcd");
#else
        u_space_invaders_engine_glcd = new Vspace_invaders_engine_glcd("u_space_invaders_engine_glcd");
#endif
        u_space_invaders_engine_glcd->clk(clk);
        u_space_invaders_engine_glcd->rst_n(rst_n);
        u_space_invaders_engine_glcd->btn_left(btn_left);
        u_space_invaders_engine_glcd->btn_right(btn_right);
        u_space_invaders_engine_glcd->btn_fire(btn_fire);
        u_space_invaders_engine_glcd->lcd_write_en(lcd_write_en);
        u_space_invaders_engine_glcd->lcd_x(lcd_x);
        u_space_invaders_engine_glcd->lcd_y(lcd_y);
        u_space_invaders_engine_glcd->lcd_data(lcd_data);
        // Instantiate Display Device model ---------------
        u_sc_glcd128x64_TLM = new sc_glcd128x64_TLM("u_sc_glcd128x64_TLM");
        u_sc_glcd128x64_TLM->clk(clk);
        u_sc_glcd128x64_TLM->rst_n(rst_n);
        u_sc_glcd128x64_TLM->btn_left(btn_left);
        u_sc_glcd128x64_TLM->btn_right(btn_right);
        u_sc_glcd128x64_TLM->btn_fire(btn_fire);
        u_sc_glcd128x64_TLM->lcd_write_en(lcd_write_en);
        u_sc_glcd128x64_TLM->lcd_x(lcd_x);
        u_sc_glcd128x64_TLM->lcd_y(lcd_y);
        u_sc_glcd128x64_TLM->lcd_data(lcd_data);

#ifdef VCD_TRACE_TEST_TB
        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_space_invaders_engine_glcd_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, rst_n,     "rst_n");
        sc_trace(fp, btn_left,  "btn_left");
        sc_trace(fp, btn_right, "btn_right");
        sc_trace(fp, btn_fire,  "btn_fire");
        sc_trace(fp, lcd_x,     "lcd_x");
        sc_trace(fp, lcd_y,     "lcd_y");
        sc_trace(fp, lcd_write_en, "lcd_write_en");
        sc_trace(fp, lcd_data,  "lcd_data");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_space_invaders_engine_glcd->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vspace_invaders_engine_glcd.vcd");
#endif
    }
};
#endif
