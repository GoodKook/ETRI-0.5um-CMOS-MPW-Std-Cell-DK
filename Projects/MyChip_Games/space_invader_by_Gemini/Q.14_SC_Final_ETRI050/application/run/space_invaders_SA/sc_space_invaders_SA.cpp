//
// Filename: sc_space_invaders_SA.cpp
//

#include "sc_space_invaders_SA.h"

void sc_space_invaders_SA::Test_Gen()
{
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
