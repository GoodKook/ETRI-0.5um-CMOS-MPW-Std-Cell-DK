
/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_dff_TB.cpp
Purpose: Testbench
Revision History: Aug. 1, 2024
*******************************************************************************/
#ifndef _SC_DFF_TB_H_
#define _SC_DFF_TB_H_

#include <systemc.h>
#include "Vdff.h" // Verilated DUT

SC_MODULE(sc_dff_TB)
{
    sc_clock        clk;
    sc_signal<bool> d, q;

    Vdff*   u_Vdff;

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_dff_TB):    // constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        // instantiate DUT
        u_Vdff = new Vdff("u_Vdff");
        // Binding
        u_Vdff->clk(clk);
        u_Vdff->d(d);
        u_Vdff->q(q);

        SC_THREAD(test_generator);
        sensitive << clk;

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_dff_TB");
        sc_trace(fp, clk, "clk");
        sc_trace(fp, d, "d");
        sc_trace(fp, q, "q");
    }

    void test_generator()
    {
        int test_count =0;

        d = 0;
        d.write(0);
        
        while(true)
        {
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

            sc_close_vcd_trace_file(fp);
            sc_stop();
        }
    }
};

#endif
