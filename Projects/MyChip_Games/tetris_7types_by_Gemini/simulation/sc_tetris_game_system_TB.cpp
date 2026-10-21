//
// Filename: sc_tetris_game_system_TB.cpp
//

#include "sc_tetris_game_system_TB.h"

void sc_tetris_game_system_TB::Test_Gen()
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

        if (_v_sync && !v_sync.read())  tick_i.write(true);
        else                            tick_i.write(false);

        _v_sync = v_sync.read();
    }
}
