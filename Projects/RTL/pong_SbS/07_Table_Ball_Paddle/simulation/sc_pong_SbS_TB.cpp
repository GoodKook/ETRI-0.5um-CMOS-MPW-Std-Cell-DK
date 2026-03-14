//
// Filename: sc_pong_SbS_TB.cpp
//

#include "sc_pong_SbS_TB.h"

void sc_pong_SbS_TB::Test_Gen()
{
    int nFrame = 0;
    reset.write(true);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    reset.write(false);

    while(true)
    {
        wait(clk.posedge_event());

        if (p_tick.read() && x_pos.read()==127 && y_pos.read()==63)
            fprintf(stderr, "Frame[%d]\r", nFrame++);
    }
}
