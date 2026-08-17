//
// Filename: sc_bricks_out_TB.cpp
//

#include "sc_bricks_out_TB.h"

void sc_bricks_out_TB::Test_Gen()
{
    reset.write(true);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    reset.write(false);

    // End of Thread
}


