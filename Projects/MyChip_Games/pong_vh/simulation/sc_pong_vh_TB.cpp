//
// Filename: sc_pong_vh_TB.cpp
//

#include "sc_pong_vh_TB.h"

void sc_pong_vh_TB::Test_Gen()
{
    reset.write(true);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    reset.write(false);

    fprintf(stderr, "Press [ENTER] to Start Game\n");

    // End of Thread!!!
}

