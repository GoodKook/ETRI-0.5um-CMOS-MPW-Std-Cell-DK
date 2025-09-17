/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_Clock_TB.cpp
Purpose: Testbench
Revision History: Sep. 2025
*******************************************************************************/
#include "sc_Clock_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

//
// Cycle-Accurate Test Generator
//
void sc_Clock_TB::Test_Gen()
{
    int test_count = 0;

    ap_rst.write(0);

    reset.write(1);
    start_r.write(1);

    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());

    reset.write(0);

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (test_count>1000 && test_count<1100)
            start_r.write(0);
        else
            start_r.write(1);

        test_count++;
    }
}

//
// Cycle-Accurate Output Monitor
//
void Clock(bool reset, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss);

void sc_Clock_TB::Test_Mon()
{
    int test_count = 0;
    unsigned char _hh, _mm, _ss;

    while(true)
    {
        wait(ap_clk.posedge_event());
        Clock(reset.read(), start_r.read(), &_hh, &_mm, &_ss);

        printf("[%5d] ", test_count);
        printf("U%02d:%02d:%02d ", (int)_hh, (int)_mm, (int)_ss);
        printf("T%02d:%02d:%02d ", (int)hh.read(), (int)mm.read(), (int)ss.read());

        if (((int)hh.read()!=_hh) || ((int)mm.read()!=_mm) || ((int)ss.read()!=_ss))
            printf("ERROR\n");
        else
            printf("OK\n");

        if (test_count>10000)
            break;
        else
            test_count++;
    }

    sc_stop();
}

