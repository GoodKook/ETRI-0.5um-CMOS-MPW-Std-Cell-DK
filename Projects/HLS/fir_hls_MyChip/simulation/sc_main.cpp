/**********************************************************************
Filename: sc_main.cpp
Purpose : Testbench
Author  : goodkook@gmail.com
History : Mar. 2025, First release
***********************************************************************/

#include "sc_fir_TB.h"

int sc_main(int argc, char** argv)
{
    sc_core::sc_report_handler::set_actions( "/IEEE_Std_1666/deprecated",sc_core::SC_DO_NOTHING );

    sc_fir_TB u_sc_fir_TB("u_sc_fir_TB");
    
    //sc_start(100, SC_US);
    sc_start();

    return 0;
}

