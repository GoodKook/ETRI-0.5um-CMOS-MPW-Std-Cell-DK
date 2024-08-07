
/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_beh_shifter_TB.cpp
Purpose: Testbench
Revision History: Aug. 1, 2024
*******************************************************************************/
#ifndef _SC_BEH_SHIFTER_TB_H_
#define _SC_BEH_SHIFTER_TB_H_

#include <systemc.h>
#include "Vbeh_shifter.h" // Verilated DUT

SC_MODULE(sc_beh_shifter_TB)
{
    sc_clock            clk;
    sc_signal<bool>     rst;
    sc_signal<uint32_t> din, qout;

    Vbeh_shifter*   u_Vbeh_shifter;

    sc_trace_file* fp;      // SystemC VCD file

    SC_CTOR(sc_beh_shifter_TB):    // constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        // instantiate DUT
        u_Vbeh_shifter = new Vbeh_shifter("u_Vbeh_shifter");
        // Binding
        u_Vbeh_shifter->clk(clk);
        u_Vbeh_shifter->rst(rst);
        u_Vbeh_shifter->din(din);
        u_Vbeh_shifter->qout(qout);

        SC_THREAD(test_generator);
        sensitive << clk;

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_shifter_TB");
        sc_trace(fp, clk, "clk");
        sc_trace(fp, rst, "rst");
        sc_trace(fp, din, "din");
        sc_trace(fp, qout, "qout");
    }

    void test_generator()
    {
        int test_count =0;

        din.write(0);
        rst.write(0);
        wait(clk.posedge_event());
        wait(clk.posedge_event());
        rst.write(1);
        wait(clk.posedge_event());
        
        while(true)
        {
            din.write(1);
            wait(clk.posedge_event());

            if (test_count>6)
            {
                sc_close_vcd_trace_file(fp);
                sc_stop();
            }
            else
                test_count++;
        }
    }
};

#endif
