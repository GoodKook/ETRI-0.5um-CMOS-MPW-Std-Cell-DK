/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_rsff_TB.h
Purpose: Testbench for RS-Latch
Revision History: Aug. 1, 2024
*******************************************************************************/

#ifndef _SC_RSFF_TB_H_
#define _SC_RSFF_TB_H_

#include <systemc.h>
#include "Vrsff.h"

SC_MODULE(sc_rsff_TB)
{
    sc_signal<bool> r, s;
    sc_signal<bool> q, q_bar;

    Vrsff*    u_rsff;

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_rsff_TB) : r("r"), s("s"), q("q"), q_bar("q_bar")
    {
        u_rsff = new Vrsff("u_rsff");
        u_rsff->r(r);
        u_rsff->s(s);
        u_rsff->q(q);
        u_rsff->q_bar(q_bar);

        SC_THREAD(test_gen);

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_rsff_TB");
        sc_trace(fp, r, "r");
        sc_trace(fp, s, "s");
        sc_trace(fp, q, "q");
        sc_trace(fp, q_bar, "q_bar");
    }

    void test_gen(void)
    {
        r.write(false);
        s.write(false);
        wait(10, SC_NS);

        r.write(false);
        s.write(true);
        wait(10, SC_NS);

        r.write(true);
        s.write(false);
        wait(10, SC_NS);

        r.write(true);
        s.write(true);
        wait(10, SC_NS);

        r.write(false);
        s.write(true);
        wait(10, SC_NS);

        r.write(true);
        s.write(true);
        wait(10, SC_NS);

        r.write(false);
        s.write(false);
        wait(10, SC_NS);

        r.write(true);
        s.write(true);
        wait(10, SC_NS);

        r.write(false);
        s.write(false);
        wait(10, SC_NS);

        r.write(true);
        s.write(false);
        wait(10, SC_NS);

        r.write(false);
        s.write(true);
        wait(10, SC_NS);

        r.write(false);
        s.write(false);
        wait(10, SC_NS);

        wait(10, SC_NS);
        sc_stop();
    }
};

#endif
