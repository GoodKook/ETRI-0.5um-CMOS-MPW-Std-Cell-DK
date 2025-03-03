/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_main.cpp
Purpose: sc_main()
Revision History: Jul. 1, 2024
*******************************************************************************/
#include "sc_pong_pt1_TB.h"

int sc_main(int argc, char** argv)
{
    //Verilated::commandArgs(argc, argv);

    sc_pong_pt1_TB u_sc_pong_pt1_TB("u_sc_pong_pt1_TB");
    
    //sc_start(10, SC_MS);
    sc_start();

    return 0;
}

