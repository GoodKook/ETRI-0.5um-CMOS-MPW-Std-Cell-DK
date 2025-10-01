/**********************************************************************
Filename: sc_main.cpp
Purpose : Testbench
Author  : goodkook@gmail.com
History : Mar. 2025, First release
***********************************************************************/

#include "sc_TOP_MODULE_TB.h"

int sc_main(int argc, char** argv)
{
    sc_TOP_MODULE_TB u_sc_TOP_MODULE_TB("u_sc_TOP_MODULE_TB");
    
    //sc_start(100, SC_US);
    sc_start();

    return 0;
}

