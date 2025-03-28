/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_test_TB.cpp
Purpose: Testbench
Revision History: Mar. 2025
*******************************************************************************/
#include "sc_test_TB.h"
#include "test.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

//
// Cycle-Accurate Test Generator
//
void sc_test_TB::Test_Gen()
{
    for(int i=0; i<10; i++) MEM_A[i] = 0;

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

        // Interface signal Priority: ap_done > ap_idle
        if (ap_done.read())
		{                           // As hardware release DONE
            ap_start.write(false);  // Hold hardware to prepare new test vector
		}
        else if (ap_idle.read())
        {                           // At hardware's IDLE state,
            for(int i=0; i<10; i++) // Generate new test vector
                MEM_A[i] = (sc_int<8>)rand();

            ap_start.write(true);   // Then, START hardware
        }
    }
}

//
// Cycle-Accurate Output Monitor
//
void sc_test_TB::Test_Mon()
{
    int test_count = 0;

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_done.read())
        {
            RefOut = test(MEM_A);       // Un-Timed(Algorithm) Result
            DutOut = ap_return.read();  // Hardware Result

            if (RefOut!=DutOut)
                cout << "Error[";
            else
                cout << "Pass [";
            cout << std::setw(3) << test_count++ << "]:";
            cout << "RefOut=" << std::setw(5) << RefOut;
            cout << " | ";
            cout << "DutOut=" << std::setw(5) << DutOut;
            cout << std::endl;

            if (test_count>100)
                break;
        }
    }

    sc_stop();
}


//
// Synchronous Memory
//
void sc_test_TB::Memory()
{
    while(true)
    {
        wait(ap_clk.posedge_event());

        if (A_ce0.read())
            A_q0.write(MEM_A[(unsigned int)A_address0.read()]);
    }
}
