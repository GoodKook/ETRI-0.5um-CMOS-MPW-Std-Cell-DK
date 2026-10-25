/**********************************************************************
Filename: sc_main.cpp
Purpose : Testbench
Author  : goodkook@gmail.com
History : Mar. 2025, First release
***********************************************************************/

#include "sc_snake_game_top_TB.h"

int sc_main(int argc, char** argv)
{
    sc_snake_game_top_TB u_sc_snake_game_top_TB("u_sc_snake_game_top_TB");
    
    //sc_start(100, SC_US);
    sc_start();

    return 0;
}

