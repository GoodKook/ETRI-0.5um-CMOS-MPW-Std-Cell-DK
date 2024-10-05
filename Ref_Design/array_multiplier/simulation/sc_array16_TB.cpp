/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_array16_TB.cpp
Purpose: Testbench for 16-bit array multiplier
Revision History: Jun. 1, 2024
*******************************************************************************/
#include "sc_array16_TB.h"

#include <iostream>
#include <iomanip>

#include <gsl/gsl_rng.h>

void sc_array16_TB::test_generator() // SC_THREAD
{
    gsl_rng *r = gsl_rng_alloc (gsl_rng_taus);

    for (int n=0; n<10000; n++)
    {
        wait(100, SC_NS);
        a.write((uint32_t)(gsl_rng_uniform (r)*65535.0));
        b.write((uint32_t)(gsl_rng_uniform (r)*65535.0));

        if (n>10000) sc_stop();
    }

    gsl_rng_free (r);
    sc_stop();
}

void sc_array16_TB::monitor()    // SC_METHOD
{
    static int n = 0;
    unsigned long _a = (unsigned long)a.read();
    unsigned long _b = (unsigned long)b.read();
    unsigned long _c_dut= (unsigned long)c.read();
    unsigned long _c_mult = _a * _b;

#ifdef CO_EMULATION
    unsigned long _c_emu= (unsigned long)c_emu.read();
    printf("Iteration=%5d, a=%6lu, b=%6lu, c=%11lu[%11lu]<%11lu> ", n, _a, _b, _c_dut, _c_mult, _c_emu);
    if (_c_dut!=_c_emu)    cout << "Error ";
#else
    printf("Iteration=%5d, a=%6lu, b=%6lu, c=%11lu[%11lu] ", n, _a, _b, _c_dut, _c_mult);
    if (_c_mult!=_c_dut)    cout << "Error ";
#endif
    cout << "@" << sc_time_stamp() << endl;

    n++;
}
