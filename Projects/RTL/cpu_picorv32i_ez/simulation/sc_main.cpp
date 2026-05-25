/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_main.h
Purpose: sc_main()
Revision History: Feb., 2024
*******************************************************************************/
#include "sc_CPU_picorv32i_ez_Top.h"

int sc_main(int argc, char** argv)
{
    //Verilated::commandArgs(argc, argv);

    sc_picorv32i_ez_TB u_sc_picorv32i_ez_TB("u_sc_picorv32i_ez_TB");
    
    //sc_start(990, SC_US);
    sc_start();

    return 0;
}
