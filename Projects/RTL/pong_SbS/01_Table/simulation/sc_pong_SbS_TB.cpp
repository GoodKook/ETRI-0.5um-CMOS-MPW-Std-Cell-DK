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

        if (x_pos.read()==127 && y_pos.read()==63)
        {
            wait(5000, SC_NS);
            sc_stop();
        }
    }
}
