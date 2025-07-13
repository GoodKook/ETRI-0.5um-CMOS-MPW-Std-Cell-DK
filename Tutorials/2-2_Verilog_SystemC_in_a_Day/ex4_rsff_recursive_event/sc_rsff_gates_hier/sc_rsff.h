/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_rsff.h
Purpose: RS-Latch in Hierachical SystemC
Revision History: Aug. 1, 2024
*******************************************************************************/

#ifndef _SC_RSFF_H_
#define _SC_RSFF_H_

#include <systemc.h>
#include "sc_nand.h"

SC_MODULE(sc_rsff)
{
    sc_in<bool>     r, s;
    sc_out<bool>    q, q_bar;

    sc_nand*    nand1;
    sc_nand*    nand2;

    sc_signal<bool> _q, _q_bar;

    SC_CTOR(sc_rsff) : r("r"), s("s"), q("q"), q_bar("q_bar")
    {
        SC_METHOD(behavior);
        sensitive << _q << _q_bar;

        _q = true;
        _q_bar = true;

        nand1 = new sc_nand("nand1");
        nand1->a(r);
        nand1->b(_q_bar);
        nand1->y(_q);

        nand2 = new sc_nand("nand2");
        nand2->a(s);
        nand2->b(_q);
        nand2->y(_q_bar);
    }

    void behavior(void)
    {
        q = _q;
        q_bar = _q_bar;
    }
};

#endif
