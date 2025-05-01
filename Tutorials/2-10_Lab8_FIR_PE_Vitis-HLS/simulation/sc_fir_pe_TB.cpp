/*******************************************************************************
Autor: GoodKook, goodkook@gmail.com
Associated Filename: sc_fir_pe_TB.cpp
Purpose: Testbench
Revision History: Aprr. 2025
*******************************************************************************/
#include "sc_fir_pe_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

// Noisy Inputs --------------------------------------------------
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
//-----------------------------------------------------------------

//
// Cycle-Accurate Test Generator
//
void sc_fir_pe_TB::Test_Gen()
{
    sc_uint<4>  _Cin = 2;
    sc_uint<4>  _Xin = 1;
    sc_uint<4>  _Yin = 3;

    ap_start.write(false);
    ap_rst.write(true);
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());

    ap_rst.write(false);

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_idle.read())
        {
            Cin.write(_Cin);
            Yin.write(_Yin);
            Xin.write(_Xin);
            ap_start.write(true);
        }

        if (ap_ready.read())
        {
            // Prepare Input
            Cin.write(_Cin);
            Yin.write(_Yin);
            Xin.write(_Xin++);
        }
    }
}

//
// Cycle-Accurate Output Monitor
//
void sc_fir_pe_TB::Test_Mon()
{
    int test_count = 0;

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_done.read())
        {
            test_count++;
            if (test_count>=50)
                break;
        }
    }

    sc_stop();
}

