
/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_delta_cycle_TB.cpp
Purpose: Testbench
Revision History: Aug. 1, 2024
*******************************************************************************/
#ifndef _SC_DELTA_CYCLE_TB_H_
#define _SC_DELTA_CYCLE_TB_H_

#include <systemc.h>
#include "sc_delta_cycle.h"

SC_MODULE(sc_delta_cycle_TB)
{
    sc_clock        clk;
    sc_signal<bool> b, c, d, q;

    sc_delta_cycle*   u_delta_cycle;

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_delta_cycle_TB):    // constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        // instantiate DUT
        u_delta_cycle = new sc_delta_cycle("u_delta_cycle");
        // Binding
        u_delta_cycle->clk(clk);
        u_delta_cycle->b(b);
        u_delta_cycle->c(c);
        u_delta_cycle->d(d);
        u_delta_cycle->q(q);

        SC_THREAD(test_generator);
        sensitive << clk;

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_delta_cycle_TB");
        sc_trace(fp, clk, "clk");
        sc_trace(fp, u_delta_cycle->a, "a");
        sc_trace(fp, b, "b");
        sc_trace(fp, c, "c");
        sc_trace(fp, d, "d");
        sc_trace(fp, u_delta_cycle->e, "e");
        sc_trace(fp, q, "q");
    }

    void test_generator()
    {
        b.write(0);
        c.write(0);
        d.write(0);
        
        while(true)
        {
            wait(clk.posedge_event());
            b.write(0);
            c.write(0);
            d.write(0);
            wait(clk.posedge_event());
            b.write(1);
            c.write(0);
            d.write(0);
            wait(clk.posedge_event());
            b.write(0);
            c.write(1);
            d.write(0);
            wait(clk.posedge_event());
            b.write(1);
            c.write(1);
            d.write(0);
            wait(clk.posedge_event());
            b.write(0);
            c.write(0);
            d.write(1);
            wait(clk.posedge_event());
            b.write(1);
            c.write(0);
            d.write(1);
            wait(clk.posedge_event());
            b.write(0);
            c.write(1);
            d.write(1);
            wait(clk.posedge_event());
            b.write(1);
            c.write(1);
            d.write(1);
            wait(clk.posedge_event());
            b.write(0);
            c.write(0);
            d.write(0);
            wait(clk.posedge_event());

            wait(clk.posedge_event());
            sc_close_vcd_trace_file(fp);
            sc_stop();
        }
    }
};

#endif
