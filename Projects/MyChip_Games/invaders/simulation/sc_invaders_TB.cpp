//
// Filename: sc_invaders_TB.cpp
//

#include "sc_invaders_TB.h"

void sc_invaders_TB::Test_Gen()
{
    reset.write(true);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    reset.write(false);

    // End of Thread
}


