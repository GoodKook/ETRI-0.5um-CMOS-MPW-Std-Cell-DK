/* -----------------------------------------------------------
Filename : FIR_PE.cpp
Purpose  : FIR Filter
Author   : goodkook@gmail.com
History  : Mar. 2024, First Release

Reference: FIR Filter/Convolution
https://dsp.stackexchange.com/questions/66451/fir-filtering-operation-also-convolution

-------------------------------------------------------------- */

#include <stdio.h>
#include "FIR_PE.h"

#if defined(FIR_SHIFTER_VERSION)

void FIR_PE( acc_t *y, data_t x)
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

void FIR_PE( acc_t *y, data_t x)
{
    acc_t           acc;
    static data_t   shift_reg[FILTER_TAP_NUM];

    // Shifter
    SHIFTER_LOOP:
    for (int i=FILTER_TAP_NUM-1;i>=0;i--)
    {
	    if (i==0)
            shift_reg[0]=x;
        else
            shift_reg[i] = shift_reg[i-1];
    }
    // Multiplier-Accumulator
    acc = 0;
    MACC_LOOP:
    for (int i=0; i<FILTER_TAP_NUM;i++)
        acc = acc + filter_taps[i] * shift_reg[i];

    *y=acc;
}

#elif defined(FIR_ARRAY_VERSION)

inline acc_t fir_pe(coef_t Cin, acc_t Yin, data_t Xin, data_t* Xout)
{
    data_t   x = Xin;
    acc_t    y = Yin + (Xin * Cin);

    *Xout = x;
    return y;
}

void FIR_PE( acc_t *y, data_t x)
{
    static data_t   _x[FILTER_TAP_NUM+1];
    static acc_t    _y[FILTER_TAP_NUM+1];
    static acc_t    __y[FILTER_TAP_NUM+1];

    data_t __x;

    _x[0] = x;
    _y[0] = 0;
    ARRAY_LOOP:
    for (int i=FILTER_TAP_NUM; i>0; i--)
    {
        _y[i] = __y[i];
        __y[i] = fir_pe(filter_taps[i-1], _y[i-1], _x[i-1], (data_t*)&__x);
        _x[i] = __x;
    }

    *y = _y[FILTER_TAP_NUM];
}

#else
#pragma message("FIR function NOT defined; neither FIR_SHIFTER_VERSION nor FIR_MAC_VERSION nor FIR_ARRAY_VERSION")
#endif
