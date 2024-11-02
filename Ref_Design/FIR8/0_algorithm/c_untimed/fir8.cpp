/* -----------------------------------------------------------
Filename : fir8.c
Purpose  : FIR Filter
Author   : goodkook@gmail.com
History  : Mar. 2024, First Release

Reference: FIR Filter/Convolution
https://dsp.stackexchange.com/questions/66451/fir-filtering-operation-also-convolution

-------------------------------------------------------------- */

#include "fir8.h"

void fir ( acc_t *y, data_t x)
{
    static data_t   shift_reg[FILTER_TAP_NUM];
    
    acc_t           acc;
    data_t          data;
    coef_t          c;

    int     i;

    acc=0;

    for (i=FILTER_TAP_NUM-1;i>=0;i--)
    {
	    if (i==0)
        {
            shift_reg[0]=x;
     	    data = x;
        }
        else
        {
            shift_reg[i] = shift_reg[i-1];
            data = shift_reg[i];
        }

        c = filter_taps[i];
        acc += data*c;
  }
  *y=acc;
}
