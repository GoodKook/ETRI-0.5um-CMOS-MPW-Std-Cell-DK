/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: Vrsff.h
Purpose: RS-Latch in SystemC (ILLEGAL!)
Revision History: Aug. 1, 2024
*******************************************************************************/

#ifndef _SC_VRSFF_H_
#define _SC_VRSFF_H_

#include <systemc.h>

SC_MODULE(Vrsff)
{
    sc_in<bool>     r, s;
    sc_inout<bool>    q, q_bar;

    sc_signal<bool> _q, _q_bar;

    SC_CTOR(Vrsff) : r("r"), s("s"), q("q"), q_bar("q_bar")
    {
        SC_THREAD(nand1);
        sensitive << r << _q_bar;

        SC_THREAD(nand2);
        sensitive << s << _q;

        SC_METHOD(beh);
        sensitive << _q << _q_bar;
    }

    void nand1(void)
    {
        while(true)
        {
            wait(1, SC_PS);
            //wait(SC_ZERO_TIME);
            _q.write(!(r & _q_bar));    // NAND
            printf("1");
        }
    }

    void nand2(void)
    {
        while(true)
        {
            wait(1, SC_PS);
            //wait(SC_ZERO_TIME);
            _q_bar.write(!(s & _q));    // NAND
            printf("2");
        }
    }

    void beh(void)
    {
        q.write(_q);
        q_bar.write(_q_bar);
        printf("3");
    }
};

#endif
