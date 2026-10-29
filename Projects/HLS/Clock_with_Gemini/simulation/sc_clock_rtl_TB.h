/**********************************************************************
Filename: sc_clock_rtl_tb.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Sep. 2025, First release
***********************************************************************/

#ifndef _SC_clock_rtl_TB_H_
#define  _SC_clock_rtl_TB_H_

#include <systemc.h>

#ifdef EMULATED_CO_SIM
#include "Eclock_rtl.h"
#else
#include "Vclock_rtl.h"
#endif

#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

void Clock(bool clear, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss);

SC_MODULE(sc_clock_rtl_TB)
{
    sc_clock                clk;    // 시스템 클락
    sc_signal<bool>         rst_n;  // 비동기 액티브 로우 리셋 (하드웨어 초기화)
    sc_signal<bool>         clear;  // 시계 초기화 신호 (00:00:00)
    sc_signal<bool>         start;  // 시계 가동 신호 (1 = 매 클락마다 1초씩 증가)
    sc_signal<sc_uint<5> >  hh, r_hh;    // 시간 출력 (0 ~ 23 표현을 위해 5비트)
    sc_signal<sc_uint<6> >  mm, r_mm;    // 분 출력 (0 ~ 59 표현을 위해 6비트)
    sc_signal<sc_uint<6> >  ss, r_ss;    // 초 출력 (0 ~ 59 표현을 위해 6비트)

#ifdef EMULATED_CO_SIM
    Eclock_rtl*     u_clock_rtl;
#else
    Vclock_rtl*     u_clock_rtl;
#endif

    // Test utilities
    void Test_Gen();
    void Test_Mon();
    void Reference()
    {
        unsigned char hh, mm, ss;

        while(true)
        {
            wait(clk.posedge_event());

            //r_hh.write(hh);
            //r_mm.write(mm);
            //r_ss.write(ss);

            Clock(clear.read(), start.read(), &hh, &mm, &ss);

            r_hh.write(hh);
            r_mm.write(mm);
            r_ss.write(ss);
        }
    }

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    SC_CTOR(sc_clock_rtl_TB):clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;

        SC_THREAD(Reference);
        sensitive << clk;

        // Instaltiate DUT: "clock_rtl"
#ifdef EMULATED_CO_SIM
        u_clock_rtl = new Eclock_rtl("u_Eclock_rtl");
#else
        u_clock_rtl = new Vclock_rtl("u_Vclock_rtl");
#endif
        u_clock_rtl->clk(clk);
        u_clock_rtl->rst_n(rst_n);
        u_clock_rtl->clear(clear);
        u_clock_rtl->start(start);
        u_clock_rtl->hh(hh);
        u_clock_rtl->mm(mm);
        u_clock_rtl->ss(ss);

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_clock_rtl_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, rst_n, "rst_n");
        sc_trace(fp, clear, "clear");
        sc_trace(fp, start, "start");
        sc_trace(fp, hh,    "hh");
        sc_trace(fp, mm,    "mm");
        sc_trace(fp, ss,    "ss");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_clock_rtl->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vclock_rtl.vcd");
#endif
    }
    
    ~sc_clock_rtl_TB(void)
    {
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
