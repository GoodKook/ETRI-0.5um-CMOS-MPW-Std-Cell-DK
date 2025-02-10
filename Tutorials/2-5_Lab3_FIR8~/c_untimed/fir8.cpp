/* -----------------------------------------------------------
Filename : fir8.c
Purpose  : FIR Filter
Author   : goodkook@gmail.com
History  : Mar. 2024, First Release

Reference: FIR Filter/Convolution
https://dsp.stackexchange.com/questions/66451/fir-filtering-operation-also-convolution

-------------------------------------------------------------- */

#include <stdio.h>
#include "fir8.h"

#if defined(FIR_SHIFTER_VERSION)

void fir ( acc_t *y, data_t x)
{
    acc_t           acc;
    data_t          data;
    coef_t          c;

    static data_t   shift_reg[FILTER_TAP_NUM];

    acc=0;

    for (int i=FILTER_TAP_NUM-1;i>=0;i--)
    {
	    if (i==0)
        {
            shift_reg[0]=x;
     	    data = x;
        }
        else
        {
            shift_reg[i] = shift_reg[i-1];
            data = shift_reg[i-1];
        }

        c = filter_taps[i];
        acc = acc + data*c;
    }

    *y=acc;
}

#elif defined(FIR_MAC_VERSION)

void fir ( acc_t *y, data_t x)
{
    acc_t           acc;
    static data_t   shift_reg[FILTER_TAP_NUM];

    // Shifter
    for (int i=FILTER_TAP_NUM-1;i>=0;i--)
    {
	    if (i==0)
            shift_reg[0]=x;
        else
            shift_reg[i] = shift_reg[i-1];
    }
    // Multiplier-Accumulator
    acc = 0;
    for (int i=0; i<FILTER_TAP_NUM;i++)
        acc = acc + filter_taps[i] * shift_reg[i];

    *y=acc;
}

#else
#pragma message("FIR function NOT defined; neither FIR_SHIFTER_VERSION noe FIR_MAC_VERSION")
#endif
