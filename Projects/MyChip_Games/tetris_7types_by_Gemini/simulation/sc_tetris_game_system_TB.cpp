//
// Filename: sc_tetris_game_system_TB.cpp
//

#include "sc_tetris_game_system_TB.h"

void sc_tetris_game_system_TB::Test_Gen()
{
    bool    _v_sync = false;
    bool    _btn_up = false;
    bool    _btn_down = false;
    bool    _btn_left = false;
    bool    _btn_right = false;
    bool    btn_pressed = false;

    rst_n.write(false);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    rst_n.write(true);

    while(true)
    {
        wait(clk.posedge_event());

        if (_v_sync && !v_sync.read())
        {
            if (!btn_pressed)   tick_i.write(true);
            //btn_pressed = _btn_up|_btn_down|_btn_left|_btn_right;
            btn_pressed = _btn_up|_btn_left|_btn_right;
        }
        else
            tick_i.write(false);

        _v_sync = v_sync.read();
        _btn_up = btn_up.read();
        _btn_down = btn_down.read();
        _btn_left = btn_left.read();
        _btn_right = btn_right.read();

        //if (lcd_x.read()==127 && lcd_y.read()==63)
        //    fprintf(stderr, "Frame[%d]\r", nFrame++);
    }
}
