/**********************************************************************
Filename: sc_fir_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_FIR_TB_H_
#define _SC_FIR_TB_H_

#include "fir8.h"   // Untimed C-Model

#include <systemc.h>

#include <stdio.h>
#include <time.h>   // Measure running time
#include <fcntl.h>
#include <sys/stat.h>   // FIFO

#ifdef EMULATED_CO_SIM
#include "Efir.h"
#endif
#include "Vfir.h"
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

SC_MODULE(sc_fir_TB)
{
    // Signal for DUT's inputs
    sc_clock                ap_clk;
    sc_signal<bool>         ap_rst;
    sc_signal<bool>         ap_start;
    sc_signal<sc_uint<8> >  x;
    // Signal for DUT's outputs
    sc_signal<bool>         ap_done;
    sc_signal<bool>         ap_idle;
    sc_signal<bool>         ap_ready;
    sc_signal<sc_uint<16> > y;
    sc_signal<bool>         y_ap_vld;
#ifdef EMULATED_CO_SIM
    // Signal for EMU's outputs
    sc_signal<bool>         E_ap_done;
    sc_signal<bool>         E_ap_idle;
    sc_signal<bool>         E_ap_ready;
    sc_signal<sc_uint<16> > E_y;    // Emulator Output
    sc_signal<bool>         E_y_ap_vld;

    Efir*                   u_Efir;
#endif
    Vfir*                   u_Vfir;

    sc_signal<acc_t>        Ref_y;  // Reference(C++ model) output

    // Test utilities
    void Test_Gen();
    void Test_Mon();

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif

#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    // FIFO interface to Python
    int fir_fifo, nWrite;
    char* szFifo = (char*)"fir_fifo";

    struct timespec start, end;
    double time_spent;

    SC_CTOR(sc_fir_TB):
        ap_clk("ap_clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        // Connect Python plot via FIFO
        mkfifo(szFifo, 0666);
        fir_fifo = open(szFifo, O_WRONLY);
        if(fir_fifo<0)
            fprintf(stderr,"fir_fifo: open error\n");

        SC_THREAD(Test_Gen);
        sensitive << ap_clk;

        SC_THREAD(Test_Mon);
        sensitive << ap_clk;

        // Instaltiate DUT: "Vfir"
        u_Vfir = new Vfir("u_Vfir");
        // Binding input ports
        u_Vfir->ap_clk(ap_clk);
        u_Vfir->ap_rst(ap_rst);
        u_Vfir->ap_start(ap_start);
        u_Vfir->x(x);
        // Binding output ports
        u_Vfir->ap_done(ap_done);
        u_Vfir->ap_idle(ap_idle);
        u_Vfir->ap_ready(ap_ready);
        u_Vfir->y_ap_vld(y_ap_vld);
        u_Vfir->y(y);

#ifdef EMULATED_CO_SIM
        // Instaltiate EMU: "Efir"
        u_Efir = new Efir("u_Efir");
        // Binding input ports
        u_Efir->ap_clk(ap_clk);
        u_Efir->ap_rst(ap_rst);
        u_Efir->ap_start(ap_start);
        u_Efir->x(x);
        // Binding output ports
        u_Efir->ap_done(E_ap_done);
        u_Efir->ap_idle(E_ap_idle);
        u_Efir->ap_ready(E_ap_ready);
        u_Efir->y_ap_vld(E_y_ap_vld);
        u_Efir->y(E_y);
#endif

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir_tb");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, ap_clk, "ap_clk");
        sc_trace(fp, ap_rst, "ap_rst");
        sc_trace(fp, ap_start, "ap_start");
        sc_trace(fp, x, "x");
        sc_trace(fp, ap_done, "ap_done");
        sc_trace(fp, ap_idle, "ap_idle");
        sc_trace(fp, ap_ready, "ap_ready");
        sc_trace(fp, y_ap_vld, "y_ap_vld");
        sc_trace(fp, y, "y");
        #ifdef EMULATED_CO_SIM
        sc_trace(fp, E_ap_done, "E_ap_done");
        sc_trace(fp, E_ap_idle, "E_ap_idle");
        sc_trace(fp, E_ap_ready, "E_ap_ready");
        sc_trace(fp, E_y_ap_vld, "E_y_ap_vld");
        sc_trace(fp, E_y, "E_y");
        #endif
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_Vfir->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vfir.vcd");
#endif
        // Measure start time
        clock_gettime(CLOCK_MONOTONIC, &start);
    }
    
    ~sc_fir_TB(void)
    {
        // Measure running time
        clock_gettime(CLOCK_MONOTONIC, &end);
        time_spent = (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / 1000000000.0;
        printf("=====================================================\n");
        printf("fir: %f seconds to execute (Monotonic time).\n", time_spent);
        printf("=====================================================\n");

        unlink(szFifo); 
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
