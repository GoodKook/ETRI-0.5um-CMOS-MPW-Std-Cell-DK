/*******************************************************************************
Autor: GoodKook, goodkook@gmail.com
Associated Filename: sc_basic_loops_TB.cpp
Purpose: Testbench
Revision History: Aug. 2025
*******************************************************************************/
#include "sc_basic_loops_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

//
// Cycle-Accurate Test Generator
//
void sc_basic_loops_TB::Test_Gen()
{
    for(int i=0; i<10; i++) MEM_Ref[i] = MEM_Dut[i] = 0;

    ap_start.write(0);
    ap_rst.write(1);
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());

    ap_rst.write(0);

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_ready.read())
            ap_start.write(false);  // Hold hardware to prepare new test vector
        if (ap_idle.read())
        {                           // At hardware's IDLE state,
            for(int i=0; i<10; i++) // Generate new test vector
                MEM_Ref[i] = MEM_Dut[i] = (int8_t)rand();

            ap_start.write(true);   // Then, START hardware
        }
    }
}

//
// Cycle-Accurate Output Monitor
//
void sc_basic_loops_TB::Test_Mon()
{
    int test_count = 0;
    sc_Stopped.write(false);

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_done.read())
        {
            RefOut = basic_loops(MEM_Ref); // Call Un-Timed(Algorithm) Result
            DutOut = ap_return.read();  // Hardware Result

            if ((dout_t)RefOut!=(dout_t)DutOut)
                cout << "Error[";
            else
                cout << "Pass [";
            cout << std::setw(3) << test_count++ << "]:";
            cout << "RefOut=" << std::setw(5) << (dout_t)RefOut;
            cout << " | ";
            cout << "DutOut=" << std::setw(5) << (dout_t)DutOut;
            cout << std::endl;

            if (test_count>100)
            {
                sc_Stopped.write(true);
                break;
            }
        }
    }
    
    sc_stop();
}

//
// Synchronous Memory
//
void sc_basic_loops_TB::Memory()
{
    while(true)
    {
        wait(ap_clk.posedge_event());

        if (A_ce0.read())
            A_q0.write(MEM_Dut[(sc_uint<8>)A_address0.read()]);
    }
}
