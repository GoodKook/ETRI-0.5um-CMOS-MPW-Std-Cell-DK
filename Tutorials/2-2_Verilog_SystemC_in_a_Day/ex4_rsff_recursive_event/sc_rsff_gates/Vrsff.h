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

    bool    _q, _q_bar;

    SC_CTOR(Vrsff) : r("r"), s("s"), q("q"), q_bar("q_bar")
    {
        SC_THREAD(nand1);
        sensitive << r << q_bar;

        SC_THREAD(nand2);
        sensitive << s << q;
    }

    void nand1(void)
    {
        while(true)
        {
            wait(r.value_changed_event() | q_bar.value_changed_event());
#if defined(ZERO_TIME)
            wait(SC_ZERO_TIME);
#else
            wait(1, SC_NS);
#endif
            _q = !(r & q_bar);  // NAND
            q.write(_q);

            printf("\n[Time:%03dns][Delta:%03llu] NAND1(r=%c, q_bar=%c) -> q    =[new=%c|curr=%c]",
            (int)(sc_time_stamp()).to_double()/1000, sc_delta_count(),
            r? '1':'0', q_bar? '1':'0', _q? '1':'0', q? '1':'0');

            if ((sc_delta_count()>1000))
                break;
        }
    }

    void nand2(void)
    {
        while(true)
        {
            wait(s.value_changed_event() | q.value_changed_event());
#if defined(ZERO_TIME)
            wait(SC_ZERO_TIME);
#else
            wait(1, SC_NS);
#endif
            _q_bar = !(s & q);
            q_bar.write(_q_bar);    // NAND

            printf("\n[Time:%03dns][Delta:%03llu] NAND2(s=%c, q    =%c) -> q_bar=[new=%c|curr=%c]",
            (int)(sc_time_stamp()).to_double()/1000, sc_delta_count(),
            s? '1':'0', q? '1':'0', _q_bar? '1':'0', q_bar? '1':'0');

            if ((sc_delta_count()>1000))
                break;
        }
    }
};

#endif
