//
// Filename: sc_glcd128x64_TB.cpp
//

#include <unistd.h>
#include "sc_glcd128x64_TB.h"

#define SET_INST(_CS1_,_CS2_,_INST_)    \
{                                       \
    RS.write(false);                    \
    RW.write(false);                    \
    CS1.write(_CS1_? false:true);       \
    CS2.write(_CS2_? false:true);       \
    DBi.write(_INST_);                  \
    wait(clk.posedge_event());          \
    E.write(true);                      \
    wait(clk.posedge_event());          \
    E.write(false);                     \
    wait(clk.posedge_event());          \
}
#define SET_DATA(_CS1_,_CS2_,_DATA_)    \
{                                       \
    RS.write(true);                     \
    RW.write(false);                    \
    CS1.write(_CS1_? false:true);       \
    CS2.write(_CS2_? false:true);       \
    DBi.write(_DATA_);                  \
    wait(clk.posedge_event());          \
    E.write(true);                      \
    wait(clk.posedge_event());          \
    E.write(false);                     \
    wait(clk.posedge_event());          \
}
#define GET_DATA(_CS1_,_CS2_,_DATA_)    \
{                                       \
    RS.write(true);                     \
    RW.write(true);                     \
    CS1.write(_CS1_? false:true);       \
    CS2.write(_CS2_? false:true);       \
    wait(clk.posedge_event());          \
    E.write(true);                      \
    wait(clk.posedge_event());          \
    E.write(false);                     \
    wait(clk.posedge_event());          \
    _DATA_ = DBo.read();                \
}
#define SET_PIXEL(_X_,_Y_,_01_)         \
{                                       \
    SET_INST(true, true, INST_SET_Z_ADDRESS|0x00) \
    SET_INST((_Y_<64? true:false), (_Y_>63? true:false), INST_SET_Y_ADDRESS|(_Y_%64)) \
    SET_INST((_Y_<64? true:false), (_Y_>63? true:false), INST_SET_X_ADDRESS|(_X_/8)) \
    sc_uint<8>  _GD_DATA_; \
    GET_DATA((_Y_<64? true:false), (_Y_>63? true:false), _GD_DATA_) \
    if (_01_) _GD_DATA_ |=  (0x01<<(x%8)); \
    else      _GD_DATA_ &= ~(0x01<<(x%8)); \
    SET_INST((_Y_<64? true:false), (_Y_>63? true:false), INST_SET_Y_ADDRESS|(_Y_%64)) \
    SET_DATA((_Y_<64? true:false), (_Y_>63? true:false), _GD_DATA_) \
}

//    SET_INST(true, true, INST_DISPLAY|0x01) \

void sc_glcd128x64_TB::Test_Gen(void)
{
    int x, y;

    while(true)
    {
        wait(clk.posedge_event());
        if (reset.read())
        {
            // Reset Sequence
            busy.write(true);
            RS.write(false);    // Register Mode Select: Instruction(L), Data(H)
            RW.write(true);     // Read(H), Write(L)
            E.write(false);     // Enable @ Posedge
            DBi.write(0x00);    // Data Bus
            CS1.write(true);    // Chip-Select #1
            CS2.write(true);    // Chip-Select #2
            RST.write(true);    // Reset
            wait(clk.posedge_event());
            RST.write(false);   // Reset(L)
            wait(clk.posedge_event());
            wait(clk.posedge_event());
            RST.write(true);
            wait(clk.posedge_event());
            SET_INST(true, true, INST_DISPLAY|0x01) // DISPLAY ON
            busy.write(false);
            continue;
        }

        if (p_tick.read())
        {
            busy.write(true);
            y = x_pos.read();
            x = y_pos.read();
            if (pixel.read())
                SET_PIXEL( x, y, true)
            else
                SET_PIXEL( x, y, false)
           busy.write(false);
        }
    }
}
