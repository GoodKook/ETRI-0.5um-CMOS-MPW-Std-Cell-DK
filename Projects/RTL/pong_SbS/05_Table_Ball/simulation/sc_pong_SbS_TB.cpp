//
// Filename: sc_pong_SbS_TB.cpp
//

#include "sc_pong_SbS_TB.h"

void sc_pong_SbS_TB::Test_Gen()
{
    reset.write(true);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    reset.write(false);

    while(true)
    {
        wait(clk.posedge_event());

        //if (y_pos.read()==63)
        //    sc_stop();
    }
}