/*******************************************************************************
Autor: GoodKook, goodkook@gmail.com
Associated Filename: sc_fir_pe_TB.cpp
Purpose: Testbench
Revision History: Aprr. 2025
*******************************************************************************/
#include "sc_fir_pe_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

// Noisy Inputs --------------------------------------------------
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
//-----------------------------------------------------------------

//
// Cycle-Accurate Test Generator
//
void sc_fir_pe_TB::Test_Gen()
{
    sc_uint<8>  _Cin;
    sc_uint<8>  _Xin;
    sc_uint<16> _Yin;

    _Cin = 1;
    _Xin = 2;
    _Yin = 3;

    Cin.write((sc_uint<8>)_Cin);
    Yin.write((sc_uint<4>)_Yin);
    Xin.write((sc_uint<4>)_Xin);

    ap_start.write(false);
    ap_rst.write(true);
    Rdy.write(false);
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());

    ap_rst.write(false);
    ap_start.write(true);


    while(true)
    {
        Rdy.write(true);
        wait(ap_clk.posedge_event());

        // Prepare Input
        _Cin = (uint8_t)rand() & 0x3F;
        _Xin = (uint8_t)rand();
        _Yin = (uint16_t)rand() & 0x7FFF;

        Cin.write((sc_uint<4>)_Cin);
        Yin.write((sc_uint<4>)_Yin);
        Xin.write((sc_uint<4>)_Xin);
        Rdy.write(false);
        wait(ap_clk.posedge_event());

        Xin.write(((sc_uint<4>)(_Xin>>4)));
        Yin.write(((sc_uint<4>)(_Yin>>4)));
        wait(ap_clk.posedge_event());

        Yin.write(((sc_uint<4>)(_Yin>>8)));
        wait(ap_clk.posedge_event());

        Yin.write((sc_uint<4>)((_Yin>>12)));
        wait(ap_clk.posedge_event());
    }
}

//
// Cycle-Accurate Output Monitor
//
void sc_fir_pe_TB::Test_Mon()
{
    sc_uint<8>  _c, c;
    sc_uint<8>  _xin, xin, xout;
    sc_uint<16> _yin, yin, yout;

    int test_count = 0;

    while(true)
    {
        wait(ap_clk.posedge_event());
        if (Vld.read())
        {
            _c   = c;
            _xin = xin;
            _yin = yin;

            wait(ap_clk.posedge_event());
            c    = Cin.read();
            xin  = (sc_uint<8>)Xin.read();
            yin  = (sc_uint<16>)Yin.read();
            xout = (sc_uint<8>)Xout.read();
            yout = (sc_uint<16>)Yout.read();

            wait(ap_clk.posedge_event());
            xin  |= (sc_uint<8>)Xin.read()<<4;
            yin  |= (sc_uint<16>)Yin.read()<<4;
            xout |= (sc_uint<8>)Xout.read()<<4;
            yout |= (sc_uint<16>)Yout.read()<<4;

            wait(ap_clk.posedge_event());
            yin  |= (sc_uint<16>)Yin.read()<<8;
            yout |= (sc_uint<16>)Yout.read()<<8;

            wait(ap_clk.posedge_event());
            yin  |= (sc_uint<16>)Yin.read()<<12;
            yout |= (sc_uint<16>)Yout.read()<<12;

            printf("\tCin=%3d(0x%02X) Xin=%3d(0x%02X) Yin=%5d(0x%04X) Yout=%5d(0x%04X) Xout=%3d(0x%02X) ",
                    (int)c, (int)c,
                    (int)xin, (int)xin,
                    (int)yin, (int)yin,
                    (int)yout, (int)yout,
                    (int)xout, (int)xout);

            if ((int)yout==((int)_c*(int)_xin+(int)_yin))   printf("OK ");
            else                                            printf("ERROR ");
            printf(": _Cin=%3d _Xin=%3d _Yin=%5d\n", (int)_c, (int)_xin, (int)_yin);
        }

        test_count++;
        if (test_count>=20) break;
    }

    sc_stop();
}

