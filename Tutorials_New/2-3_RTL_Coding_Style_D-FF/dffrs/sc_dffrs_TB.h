
/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_dffrs_TB.cpp
Purpose: Testbench
Revision History: Aug. 1, 2024
*******************************************************************************/
#ifndef _SC_DFFRS_TB_H_
#define _SC_DFFRS_TB_H_

#include <systemc.h>
#include "Vdffrs.h" // Verilated DUT

#include <verilated_vcd_sc.h>

SC_MODULE(sc_dffrs_TB)
{
    sc_clock        clk;
    sc_signal<bool> r, s, d, q;

    Vdffrs*   u_Vdffrs;
    VerilatedVcdSc*     tfp;    // Verilator VCD

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_dffrs_TB):    // constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        // instantiate DUT
        u_Vdffrs = new Vdffrs("u_Vdffrs");
        // Binding
        u_Vdffrs->clk(clk);
        u_Vdffrs->r(r);
        u_Vdffrs->s(s);
        u_Vdffrs->d(d);
        u_Vdffrs->q(q);

        SC_THREAD(test_generator);
        sensitive << clk;

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_dffrs_TB");
        sc_trace(fp, clk, "clk");
        sc_trace(fp, r, "r");
        sc_trace(fp, s, "s");
        sc_trace(fp, d, "d");
        sc_trace(fp, q, "q");

        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_Vdffrs->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vdffrs.vcd");
    }

    ~sc_dffrs_TB()
    {
        tfp->close();
    }
    
    void test_generator()
    {
        int test_count =0;

        r.write(1);
        s.write(1);
        d.write(0);
        
        while(true)
        {
            wait(clk.posedge_event());
            wait(clk.negedge_event());
            s.write(0);
            wait(clk.posedge_event());
            s.write(1);
            wait(clk.negedge_event());
            r.write(0);
            wait(clk.posedge_event());
            r.write(1);
            wait(clk.posedge_event());
            d = 1;
            wait(clk.posedge_event());
            d = false;
            wait(clk.negedge_event());
            d = 1;
            wait(clk.posedge_event());
            d = 0;
            wait(clk.posedge_event());
            d = 1;
            wait(clk.posedge_event());
            wait(clk.posedge_event());

            r.write(1);
            s.write(1);
            d.write(1);
            wait(clk.posedge_event());

            r.write(0);
            s.write(0);
            //d.write(0);
            wait(clk.posedge_event());

            r.write(1);
            s.write(1);
            d.write(0);
            wait(clk.posedge_event());

            s.write(0);
            wait(clk.posedge_event());

            s.write(1);
            wait(clk.posedge_event());

            // Ending stimulus
            wait(clk.posedge_event());
            wait(clk.posedge_event());
            sc_close_vcd_trace_file(fp);
            sc_stop();
        }
    }
};

#endif
