
/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: Vdff.h
Purpose: D-FlipFlop in Behavioral SystemC
Revision History: Aug. 1, 2024
*******************************************************************************/
#ifndef _SC_VDFF_H_
#define _SC_VDFF_H_

#include <systemc.h>

SC_MODULE(Vdff)
{
    sc_in<bool>     clk, d;
    sc_out<bool>    q;

    SC_CTOR(Vdff):    // constructor
        clk("clk"), d("d"), q("q")
    {
        SC_METHOD(behavior);
        sensitive << clk;
        //sensitive << clk.pos();
        //sensitive << clk << d;
    }

    void behavior()
    {
        if (clk.read())
            q.write(d);
    }
};

#endif
