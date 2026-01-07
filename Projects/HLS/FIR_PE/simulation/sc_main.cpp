/**********************************************************************
Filename: sc_main.cpp
Purpose : Testbench
Author  : goodkook@gmail.com
History : Mar. 2025, First release
***********************************************************************/

#include "sc_FIR8_TB.h"

int sc_main(int argc, char** argv)
{
    sc_FIR8_TB u_sc_FIR8_TB("u_sc_FIR8_TB");
    
    //sc_start(100, SC_US);
    sc_start();

    return 0;
}

