//
// Filename: sc_snake_game_top_TB.cpp
//

#include "sc_snake_game_top_TB.h"

void sc_snake_game_top_TB::Test_Gen()
{
    bool    _v_sync = false;

    rst_n.write(false);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    rst_n.write(true);

    while(true)
    {
        wait(clk.posedge_event());
    }
}
