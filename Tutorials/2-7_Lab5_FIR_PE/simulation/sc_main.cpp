/**********************************************************************
Filename: sc_main.cpp
Purpose : Testbench of 8-Tab Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#include "sc_fir8_tb.h"

int sc_main(int argc, char** argv)
{
    sc_fir8_tb u_sc_fir8_tb("u_sc_fir8_tb");
    
    //sc_start(990, SC_US);
    sc_start();

    return 0;
}

