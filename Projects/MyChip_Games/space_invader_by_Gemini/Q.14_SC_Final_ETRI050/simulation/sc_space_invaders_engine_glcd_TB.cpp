//
// Filename: sc_space_invaders_engine_glcd_TB.cpp
//

#include "sc_space_invaders_engine_glcd_TB.h"

void sc_space_invaders_engine_glcd_TB::Test_Gen()
{
    int nFrame = 0;
    rst_n.write(false);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    rst_n.write(true);

    while(true)
    {
        wait(clk.posedge_event());

        if (v_sync.read())
            fprintf(stderr, "Frame[%d]\r", nFrame++);
    }
}
