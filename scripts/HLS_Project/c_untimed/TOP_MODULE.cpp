/* -----------------------------------------------------------
Filename : TOP_MODULE.cpp
Purpose  : FIR Filter (8-Tap)
Author   : goodkook@gmail.com
History  : Sep. 2025, First Release

Reference: FIR Filter/Convolution
https://dsp.stackexchange.com/questions/66451/fir-filtering-operation-also-convolution
-------------------------------------------------------------- */

#include <stdio.h>
#include "TOP_MODULE.h"

void TOP_MODULE ( acc_t *y, data_t x)
#if defined(FIR_SHIFTER_VERSION)||defined(FIR_SHIFTER_VERSION_SC)
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
#elif defined(FIR_MAC_VERSION)||defined(FIR_MAC_VERSION_SC)
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
#elif defined(FIR_MAC_VERSION_MPW)||defined(FIR_MAC_VERSION_MPW_SC)
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

    if (acc<11000)      acc = 11000;
    //else if (acc>32767) acc = 32767;
    else                acc = acc - 11000;

    *y=(acc_t)(acc>>6);
}
#elif defined(FIR_ARRAY_VERSION)||defined(FIR_ARRAY_VERSION_SC)
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
        __y[i] = FIR_PE(filter_taps[i-1], _y[i-1], _x[i-1], (data_t*)&__x);
        _x[i] = __x;
    }

    *y = _y[FILTER_TAP_NUM];
}
inline acc_t FIR_PE(coef_t Cin, acc_t Yin, data_t Xin, data_t* Xout)
{
    data_t   x = Xin;
    acc_t    y = Yin + (Xin * Cin);

    *Xout = x;
    return y;
}
#else
#pragma message("FIR function NOT defined; neither FIR_SHIFTER_VERSION nor FIR_MAC_VERSION nor FIR_MAC_VERSION_MPW nor FIR_ARRAY_VERSION")
#endif

