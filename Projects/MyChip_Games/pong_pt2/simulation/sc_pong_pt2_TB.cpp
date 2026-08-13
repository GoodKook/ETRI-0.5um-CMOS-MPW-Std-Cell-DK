//
// Filename: sc_pong_pt2_TB.cpp
//

#include "sc_pong_pt2_TB.h"

void sc_pong_pt2_TB::Test_Gen()
{
    reset.write(true);
    option.write(25);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    reset.write(false);

    while(true)
    {
        wait(clk.posedge_event());

        if (game_over.read())
        {
            fprintf(stderr, "\n*** Game Over ***\n");

            reset.write(true);
            option.write(rand()%50);
            wait(clk.posedge_event());
            wait(clk.posedge_event());
            wait(clk.posedge_event());
            reset.write(false);
            //sc_stop();
        }
    }
}

