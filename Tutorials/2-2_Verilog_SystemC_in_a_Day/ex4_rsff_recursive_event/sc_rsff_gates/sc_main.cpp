/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_main.cpp
Purpose: sc_main()
Revision History: Aug. 1, 2024
*******************************************************************************/
#include "sc_rsff_TB.h"

int sc_main(int argc, char** argv)
{
    sc_core::sc_report_handler::set_actions(
                "/IEEE_Std_1666/deprecated", sc_core::SC_DO_NOTHING );

    sc_rsff_TB u_sc_rsdff_TB("u_sc_rsff_TB");
    
    //sc_start(10, SC_MS);
    sc_start();

    return 0;
}
