/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_nand.h
Purpose: NAND gate SC model
Revision History: Aug. 1, 2024
*******************************************************************************/
#ifndef _SC_NAND_H_
#define _SC_NAND_H_

#include <systemc.h>

SC_MODULE(sc_nand)
{
    sc_in<bool> a, b;
    sc_out<bool> y;

    SC_CTOR(sc_nand) : a("a"), b("b"), y("y")
    {
        SC_THREAD(behavior);
        sensitive << a << b;
    }

    void behavior(void)
    {
        while(true)
        {
            wait(1, SC_PS); // Delay
            y.write(!(a.read() && b.read()));
        }
    }
};

#endif
