/**********************************************************************
Filename: sc_main.cpp
Purpose : Chip Test of FIR PE (MyChip 2024-2)
Author  : goodkook@gmail.com
History : Jan. 2025, First release
***********************************************************************/

#include "sc_fir_pe_tb.h"

int sc_main(int argc, char** argv)
{
    sc_fir_pe_tb u_sc_fir_pe_tb("u_sc_fir_pe_tb");

    //sc_start(990, SC_US);
    sc_start();

    return 0;
}

