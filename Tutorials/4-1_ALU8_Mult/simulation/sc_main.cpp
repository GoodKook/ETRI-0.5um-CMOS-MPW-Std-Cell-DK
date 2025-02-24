/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_main.cpp
Purpose: sc_main()
Revision History:
    Dec 15 2023,
    Feb. 2025
*******************************************************************************/
#include "sc_ALU8_Mult_tb.h"

int sc_main(int argc, char** argv)
{
    //Verilated::commandArgs(argc, argv);

    sc_core::sc_report_handler::set_actions( "/IEEE_Std_1666/deprecated", sc_core::SC_DO_NOTHING );

    sc_ALU8_Mult_tb u_sc_ALU8_Mult_tb("u_sc_ALU8_Mult_tb");
    
    sc_start();

    return 0;
}
