
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

    sc_signal<bool> _q, _q_strange;

    sc_trace_file* fp;  // VCD file

    SC_CTOR(Vdff):    // constructor
        clk("clk"), d("d"), q("q")
    {
        SC_METHOD(beh_dff);
        sensitive << clk;

        SC_METHOD(beh_dff_strange);
        sensitive << clk << d;

        SC_METHOD(beh_output);
        sensitive << _q;

        // VCD Trace
        fp = sc_create_vcd_trace_file("Vdff");
        sc_trace(fp, clk, "clk");
        sc_trace(fp, d, "d");
        sc_trace(fp, q, "q");
        sc_trace(fp, _q, "_q");
        sc_trace(fp, _q_strange, "_q_strange");
    }

    void beh_dff()
    {
        printf("\n[%03d] beh_dff        : clk=%c d=%c",
            (int)(sc_time_stamp()).to_double()/1000, clk.read()? '1':'0', d.read()? '1':'0');
        if (clk.read())
            _q.write(d);
    }

    void beh_dff_strange()
    {
        printf("\n[%03d] beh_dff_strange: clk=%c d=%c",
            (int)(sc_time_stamp()).to_double()/1000, clk.read()? '1':'0', d.read()? '1':'0');
        if (clk.read())
            _q_strange.write(d);
    }

    void beh_output()
    {
        q.write(_q);
    }
};

#endif
