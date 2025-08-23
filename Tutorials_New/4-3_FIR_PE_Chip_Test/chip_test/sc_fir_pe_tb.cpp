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
    uint8_t     __Cin, __Xin;
    uint16_t    __Yin;

    Cin.write(0x00);
    Xin.write(0x00);
    Yin.write(0x00);
    Rdy.write(false);

    // INIT
    for (int i=0; i<10; i++)
        wait(clk.posedge_event());

    while(true)
    {
        __Cin = 1;  //(uint8_t)rand()
        _Cin[0].write(__Cin);
        _Cin[1].write(_Cin[0]);
        _Cin[2].write(_Cin[1]);
        _Cin[3].write(_Cin[2]);

        __Xin = (uint8_t)rand();
        _Xin[0].write(__Xin);
        _Xin[1].write(_Xin[0]);
        _Xin[2].write(_Xin[1]);
        _Xin[3].write(_Xin[2]);

        __Yin = (uint16_t)rand();
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
    }
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
            if (_Yout!=Expected)    printf("ERROR\n");
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
