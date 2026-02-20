//
//
//

#include <unistd.h>
#include "sc_glcd128x64_TB.h"

#define SET_INST(_CS1_,_CS2_,_INST_)    \
{                                       \
    RS.write(false);                    \
    RW.write(false);                    \
    CS1.write(_CS1_? false:true);       \
    CS2.write(_CS2_? false:true);       \
    E.write(true);                      \
    wait(100, SC_NS);                   \
                                        \
    DBi.write(_INST_);                  \
    E.write(false);                     \
    wait(100, SC_NS);                   \
}
#define SET_DATA(_CS1_,_CS2_,_DATA_)    \
{                                       \
    RS.write(true);                     \
    RW.write(false);                    \
    CS1.write(_CS1_? false:true);       \
    CS2.write(_CS2_? false:true);       \
    E.write(true);                      \
    wait(100, SC_NS);                   \
                                        \
    DBi.write(_DATA_);                  \
    E.write(false);                     \
    wait(100, SC_NS);                   \
}
#define GET_DATA(_CS1_,_CS2_,_DATA_)    \
{                                       \
    RS.write(true);                     \
    RW.write(true);                     \
    CS1.write(_CS1_? false:true);       \
    CS2.write(_CS2_? false:true);       \
    E.write(true);                      \
    wait(100, SC_NS);                   \
                                        \
    E.write(false);                     \
    wait(100, SC_NS);                   \
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
    SET_INST(true, true, INST_DISPLAY|0x01) \
}

void sc_glcd128x64_TB::Test_Gen(void)
{
    RS.write(false);    // Register Mode Select: Instruction(L), Data(H)
    RW.write(true);     // Read(H), Write(L)
    E.write(true);      // Enable @ Posedge
    DBi.write(0x00);    // Data Bus
    CS1.write(true);    // Chip-Select #1
    CS2.write(true);    // Chip-Select #2
    RST.write(true);    // Reset
    wait(100, SC_NS);

    RST.write(false);   // Reset(L)
    wait(100, SC_NS);

    RST.write(true);
    wait(100, SC_NS);

    while(true)
    {
        for(int x=0; x<64; x++)
            for(int y=0; y<128; y++)
                SET_PIXEL( x, y, true)

        for(int y=0; y<128; y++)
        {
            int x = (int)(31*sin(y*2*M_PI/128)+32);
            SET_PIXEL(x, y, false)
        }
        for(int y=0; y<128; y++)
        {
            int x = (int)(31*sin(y*2*M_PI/64)+32);
            SET_PIXEL(x, y, false)
        }
        for(int y=0; y<128; y++)
        {
            int x = (int)(31*sin(y*2*M_PI/32)+32);
            SET_PIXEL(x, y, false)
        }

        for(int y=0; y<128; y++)
            for(int x=0; x<64; x++)
                SET_PIXEL( x, y, false)

        for(int y=0; y<128; y++)
        {
            int x = (int)(31*sin(y*2*M_PI/128)+32);
            SET_PIXEL(x, y, true)
        }
        for(int y=0; y<128; y++)
        {
            int x = (int)(31*sin(y*2*M_PI/64)+32);
            SET_PIXEL(x, y, true)
        }
        for(int y=0; y<128; y++)
        {
            int x = (int)(31*sin(y*2*M_PI/32)+32);
            SET_PIXEL(x, y, true)
        }
    }
}
