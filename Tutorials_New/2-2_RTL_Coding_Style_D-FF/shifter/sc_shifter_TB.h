
/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_shifter_TB.cpp
Purpose: Testbench
Revision History: Aug. 1, 2024
*******************************************************************************/
#ifndef _SC_SHIFTER_TB_H_
#define _SC_SHIFTER_TB_H_

#include <systemc.h>
#include "Vshifter.h" // Verilated DUT

#include <verilated_vcd_sc.h>

SC_MODULE(sc_shifter_TB)
{
    sc_clock                clk;
    sc_signal<bool>         rst;
    sc_signal<sc_uint<8> >  din, qout;

    Vshifter*   u_Vshifter;
    VerilatedVcdSc*     tfp;    // Verilator VCD

    sc_trace_file* fp;      // SystemC VCD file

    SC_CTOR(sc_shifter_TB):    // constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {
        // instantiate DUT
        u_Vshifter = new Vshifter("u_Vshifter");
        // Binding
        u_Vshifter->clk(clk);
        u_Vshifter->rst(rst);
        u_Vshifter->din(din);
        u_Vshifter->qout(qout);

        SC_THREAD(test_generator);
        sensitive << clk;

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_shifter_TB");
        sc_trace(fp, clk, "clk");
        sc_trace(fp, rst, "rst");
        sc_trace(fp, din, "din");
        sc_trace(fp, qout, "qout");

        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_Vshifter->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vshifter.vcd");
    }

    ~sc_shifter_TB()
    {
        tfp->close();
    }

    void test_generator()
    {
        uint8_t test_in[] = "SHIFTER";
        int test_count =0;

        din.write(0);
        rst.write(0);
        wait(clk.posedge_event());
        wait(clk.posedge_event());
        rst.write(1);
        wait(clk.posedge_event());
        
        while(true)
        {
            din.write(test_in[test_count]);
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
