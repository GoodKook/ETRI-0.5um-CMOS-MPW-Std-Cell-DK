/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_booth_multiplier_TB.cpp
Purpose: Testbench for 8-bit booth_multiplier
Revision History: Jun. 1, 2024
*******************************************************************************/
#include "sc_booth_multiplier_TB.h"

#include <iostream>
#include <iomanip>

#include <gsl/gsl_rng.h>

void sc_booth_multiplier_TB::test_generator() // SC_THREAD
{
    gsl_rng *r = gsl_rng_alloc (gsl_rng_taus);

    for (int n=0; n<5000; n++)
    {
        multIn.write((uint8_t)(gsl_rng_uniform_int(r, 256)));
        select.write(false);
        wait(clk.posedge_event());

        multIn.write((uint8_t)(gsl_rng_uniform_int(r, 256)));
        select.write(true);
        wait(clk.posedge_event());
    }

    gsl_rng_free (r);
    sc_stop();
}

void sc_booth_multiplier_TB::monitor()    // SC_THREAD
{
    static int n = 0;
    int8_t  __multiplier, _multiplier;
    int8_t  __multiplicand, _multiplicand;
    int16_t _product_dut, _product_mult;
#ifdef CO_EMULATION
    int16_t _product_emu;
#endif

    while(true)
    {
        wait(clk.posedge_event());
        if (select)
        {
            __multiplier  = _multiplier;
            _multiplier   = (int8_t)multIn.read();
        }
        else
        {
            __multiplicand = _multiplicand;
            _multiplicand  = (int8_t)multIn.read();
        }
        _product_mult = __multiplicand * __multiplier;    // Reference, signed multiplier!
        _product_dut  = product_dut.read();
#ifdef CO_EMULATION
        _product_emu= product_emu.read();
#endif

#ifdef CO_EMULATION
        printf("Iteration=%5d, multiplier=%5d, multiplicand=%5d, product=%7d<%7d> ", n,
                    _multiplier, _multiplicand, _product_dut, _product_emu);
        if (_product_dut!=_product_emu)
        {
            Error.write(true);
            cout << "Error ";
        }
        else
            Error.write(false);
#else
        printf("Iteration=%5d, multiplier=%5d, multiplicand=%5d, product=%7d[%7d] ", n,
                    __multiplier, __multiplicand, _product_dut, _product_mult);
        if (_product_mult!=_product_dut)
        {
            Error.write(true);
            cout << "Error ";
        }
        else
            Error.write(false);
#endif
        cout << "@" << sc_time_stamp() << endl;

        n++;
    }
}
