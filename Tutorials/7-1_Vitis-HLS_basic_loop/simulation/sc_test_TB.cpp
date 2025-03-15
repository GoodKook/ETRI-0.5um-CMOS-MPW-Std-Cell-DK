/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_test_TB.cpp
Purpose: Testbench
Revision History: Mar. 2025
*******************************************************************************/
#include "sc_test_TB.h"
#include "untimed/test.h"

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

        if (ap_idle.read())
        {
            for(int i=0; i<10; i++) MEM_A[i] = (sc_int<8>)rand();
            ap_start.write(true);
        }

        if (ap_done.read())
            ap_start.write(false);
    }
    sc_stop();
}

//
// Cycle-Accurate Output Monitor
//
void sc_test_TB::Test_Mon()
{
    int test_count = 0;
    sc_int<13> _result, result = (int)test(MEM_A);

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_done.read())
        {
            result  = test(MEM_A);
            _result = ap_return.read();

            if (_result!=result)
            {
                printf("Error[%d]:", test_count++);
                cout << std::setw(5) << result << " == " << std::setw(5) << _result << std::endl;
            }
            else
            {
                printf("Pass[%d]:", test_count++);
                cout << std::setw(5) << result << " == " << std::setw(5) << _result << std::endl;
            }
        }
    }
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
