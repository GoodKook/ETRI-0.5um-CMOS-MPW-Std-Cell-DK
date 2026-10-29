/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_clock_rtl_TB.cpp
Purpose: Testbench
Revision History: Sep. 2025
*******************************************************************************/
#include "sc_clock_rtl_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

//
// Cycle-Accurate Test Generator
//
void sc_clock_rtl_TB::Test_Gen()
{
    int test_count = 0;

    rst_n.write(false);

    clear.write(true);
    start.write(true);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    rst_n.write(true);
    clear.write(false);

    while(true)
    {
        wait(clk.posedge_event());

        if (test_count>1000 && test_count<1100)
            start.write(false);
        else
            start.write(true);

        test_count++;
    }
}

//
// Cycle-Accurate Output Monitor
//
//void Clock(bool clear, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss);

void sc_clock_rtl_TB::Test_Mon()
{
    unsigned long test_count = 0;

    while(true)
    {
        wait(clk.posedge_event());
        //Clock(clear.read(), start.read(), &_hh, &_mm, &_ss);

        printf("[%5d] ", test_count);
        printf("U%02d:%02d:%02d ", (int)r_hh.read(), (int)r_mm.read(), (int)r_ss.read());
        printf("T%02d:%02d:%02d ", (int)hh.read(),   (int)mm.read(),   (int)ss.read());

        if (((int)hh.read()!=(int)r_hh.read()) ||
            ((int)mm.read()!=(int)r_mm.read()) ||
            ((int)ss.read()!=(int)r_ss.read()))
            printf("ERROR\n");
        else
            printf("OK\n");

        if (test_count>3600*25L)
            break;
        else
            test_count++;
    }

    sc_stop();
}

