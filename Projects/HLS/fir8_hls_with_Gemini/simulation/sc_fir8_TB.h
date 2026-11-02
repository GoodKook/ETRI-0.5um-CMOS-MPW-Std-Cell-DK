/**********************************************************************
Filename: sc_fir8_TB.h
Purpose : Testbench
Author  : goodkook@gmail.com
History : Apr. 2025, First release
***********************************************************************/

#ifndef _SC_FIR8_TB_H_
#define _SC_FIR8_TB_H_

#include "fir8.h"   // Untimed C-Model

#include <systemc.h>

#include <stdio.h>
#include <fcntl.h>
#include <sys/stat.h>   // FIFO

#ifdef EMULATED_CO_SIM
#include "Efir8.h"
#else
#include "Vfir8.h"
#endif

#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

SC_MODULE(sc_fir8_TB)
{
    // Signal for DUT's inputs
    sc_clock                clk;
    sc_signal<bool>         rst_n;
    sc_signal<bool>         in_valid;
    sc_signal<sc_uint<8> >  x;
    // Signal for DUT's outputs
    sc_signal<bool>         out_valid;
    sc_signal<sc_uint<8> >  y;                      // DUT's Output

    sc_signal<sc_uint<8> >  Ref_Y[OUTPUT_LATENCY];  // Reference Output
    sc_signal<bool>         Error;                  // Error Flag

#ifdef EMULATED_CO_SIM
    Efir8*                  u_fir8;
#else
    Vfir8*                  u_fir8;
#endif

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
    int fir8_fifo;
    char* szFifo = (char*)"fir8_fifo";

    SC_CTOR(sc_fir8_TB): clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;

        // Instaltiate DUT: "Vfir8" & Binding input ports
#ifdef EMULATED_CO_SIM
        u_fir8 = new Efir8("u_fir8");
#else
        u_fir8 = new Vfir8("u_fir8");
#endif
        u_fir8->clk(clk);
        u_fir8->rst_n(rst_n);
        u_fir8->in_valid(in_valid);
        u_fir8->x(x);
        // Binding output ports
        u_fir8->out_valid(out_valid);
        u_fir8->y(y);

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir8_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, rst_n,     "rst_n");
        sc_trace(fp, in_valid,  "in_valid");
        sc_trace(fp, x,         "x");
        sc_trace(fp, out_valid, "out_valid");
        sc_trace(fp, y,         "y");
        sc_trace(fp, Ref_Y[0],  "Ref_Y");
        sc_trace(fp, Error,     "Error");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_fir8->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vfir8.vcd");
#endif

        // Connect Python plot via FIFO
        //mkfifo(szFifo, 0666);
        fir8_fifo = open(szFifo, O_WRONLY);
        if(fir8_fifo<0)
        {
            fprintf(stderr,"%s: open error\n", szFifo);
            exit(1);
        }
    }
    
    ~sc_fir8_TB(void)
    {
#ifdef VCD_TRACE_DUT_VERILOG
        tfp->close();
#endif
    }
};

#endif
