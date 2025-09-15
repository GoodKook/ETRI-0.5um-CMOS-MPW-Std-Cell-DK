/**********************************************************************
Filename: sc_fir_pe_tb.cpp
Purpose : Testbench
          Chip Test of FIR PE (MyChip 2024-2)
Author  : goodkook@gmail.com
History : Jan. 2025, First release
***********************************************************************/

#include <systemc.h>
#include "sc_fir_pe_tb.h"

void sc_fir_pe_tb::Test_Gen()
{
    int     test_count = 0;
    bool    bProlog = true;
    bool    bEpilog = false;

    uint8_t     __Cin=0, __Xin=0;
    uint16_t    __Yin=0;

    Cin.write(0x00);
    Xin.write(0x00);
    Yin.write(0x00);
    Rdy.write(false);

    while(true)
    {
        if (test_count==100)
        {
            if (bProlog)    bProlog = false;
            else            __Cin++;

            if (bEpilog)    break;

            if (__Cin>63)   bEpilog = true;

            test_count = 0;
        }
        if (bProlog||bEpilog)    __Cin = 0;
        _Cin[0].write(__Cin);
        _Cin[1].write(_Cin[0]);
        _Cin[2].write(_Cin[1]);
        _Cin[3].write(_Cin[2]);

        __Xin = (uint8_t)rand() % 256;
        if (bProlog||bEpilog)   __Xin = 0;
        _Xin[0].write(__Xin);
        _Xin[1].write(_Xin[0]);
        _Xin[2].write(_Xin[1]);
        _Xin[3].write(_Xin[2]);

        __Yin = (uint16_t)rand() % 65536;
        if (bProlog||bEpilog)    __Yin = 0;
        _Yin[0].write(__Yin);
        _Yin[1].write(_Yin[0]);
        _Yin[2].write(_Yin[1]);
        _Yin[3].write(_Yin[2]);

        Rdy.write(true);
        wait(clk.posedge_event());

        Rdy.write(false);
        Cin.write(__Cin);
        Xin.write(__Xin & 0x0F);
        Yin.write(__Yin & 0x0F);
        wait(clk.posedge_event());

        Xin.write((__Xin>>4) & 0x0F);
        Yin.write((__Yin>>4) & 0x0F);
        wait(clk.posedge_event());

        Xin.write(0x00);
        Yin.write((__Yin>>8) & 0x0F);
        wait(clk.posedge_event());

        Yin.write((__Yin>>12) & 0x0F);
        wait(clk.posedge_event());

        test_count++;
    }
    sc_stop();
}

void sc_fir_pe_tb::Test_Mon()
{
    uint16_t    _Yout = 0, Expected = 0;

    while(true)
    {
        wait(clk.posedge_event());
        if (Vld.read())
        {
            Expected = (_Cin[3].read()*_Xin[3].read()) + _Yin[3].read();
            printf("Cin = %3d Xin = %3d Yin = %5d ", _Cin[3].read(), _Xin[3].read(), _Yin[3].read());
            printf("Yout = %5d(0x%04X) Expected = %5d(0x%04X) ", _Yout, _Yout, Expected, Expected);
            if (_Yout!=Expected)    printf("ERROR (%5d)\n", _Yout-Expected);
            else                    printf("OK\n");

            _Yout = 0;  // !!! MUST BE INITIALIZED BEFORE CAPTURE !!!

            wait(clk.posedge_event());
            _Yout = Yout.read();
            wait(clk.posedge_event());
            _Yout |= (uint16_t)(Yout.read()<<4);
            wait(clk.posedge_event());
            _Yout |= (uint16_t)(Yout.read()<<8);
            wait(clk.posedge_event());
            _Yout |= (uint16_t)(Yout.read()<<12);
        }
    }
}
