
/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_n_dffrs_shifter_TB.cpp
Purpose: Testbench
Revision History: Aug. 1, 2024
*******************************************************************************/
#ifndef _SC_N_DFFRS_SHIFTER_TB_H_
#define _SC_N_DFFRS_SHIFTER_TB_H_

#include <systemc.h>
#include "Vn_dffrs_shifter.h" // Verilated DUT

SC_MODULE(sc_n_dffrs_shifter_TB)
{
    sc_clock            clk;
    sc_signal<bool>     rst, din, qout;

    Vn_dffrs_shifter*   u_Vn_dffrs_shifter;

    sc_trace_file* fp;      // SystemC VCD file

    SC_CTOR(sc_n_dffrs_shifter_TB):    // constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        // instantiate DUT
        u_Vn_dffrs_shifter = new Vn_dffrs_shifter("u_Vn_dffrs_shifter");
        // Binding
        u_Vn_dffrs_shifter->clk(clk);
        u_Vn_dffrs_shifter->rst(rst);
        u_Vn_dffrs_shifter->din(din);
        u_Vn_dffrs_shifter->qout(qout);

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
