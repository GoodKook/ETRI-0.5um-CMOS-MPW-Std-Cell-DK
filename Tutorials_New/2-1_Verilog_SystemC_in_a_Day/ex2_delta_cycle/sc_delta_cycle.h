/*********************************************************
 * Filename: sc_delta_cycle.h
 * Purpose: SystemC model Test (d)
 * Author: GoodKook, goodkook@gmail.com
 */
#ifndef _SC_DELTA_CYCLE_H_
#define _SC_DELTA_CYCLE_H_

#include <systemc.h>

 SC_MODULE(sc_delta_cycle)
 {
    // IO Ports
    sc_in<bool>     clk, b, c, d;
    sc_out<bool>    q;

#if defined(CHANNEL)
    sc_signal<bool> a, e;   // Local Channels
#elif defined (VARIABLE)
    bool a, e;   // Variable
#endif

    SC_CTOR(sc_delta_cycle):    // constructor
        clk("clk"), d("d"), q("q")
    {
        SC_METHOD(behavior);
#if defined(CHANNEL)
        sensitive << a << b << c << d << e << clk;
#elif defined(VARIABLE)
        sensitive << b << c << d << clk;
#endif
    }

    void behavior(void)
    {
        printf("\n[%03d] clk=%c b=%c c=%c a=%c d=%c e=%c q=%c",
            (int)(sc_time_stamp()).to_double()/1000,
            clk? '1':'0',
            b? '1':'0',
            c? '1':'0',
            a? '1':'0',
            d? '1':'0',
            e? '1':'0',
            q? '1':'0'
        );

#if defined(FORWARD_ORDERED)
        a = !(b & c);
        e = !(a & d);
        if (clk)
            q = e;
#elif defined(REVERSE_ORDERED)
        if (clk)
            q = e;
        e = !(a & d);
        a = !(b & c);
#else
        e = !(a & d);
        if (clk.posedge())
            q = e;
        a = !(b & c);
#endif
    }
};

 #endif
