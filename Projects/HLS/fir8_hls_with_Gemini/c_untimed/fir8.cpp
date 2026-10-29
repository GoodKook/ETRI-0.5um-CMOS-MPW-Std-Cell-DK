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

#ifdef __Y16__
void fir8( acc_t *y, data_t x)
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
#else
void fir8( data_t *y, data_t x)
{
    acc_t           acc = 0;
    static data_t   shift_reg[FILTER_TAP_NUM] = {0};

    // 1. 시프트 레지스터 업데이트
    for (int i = FILTER_TAP_NUM - 1; i > 0; i--)
    {
        shift_reg[i] = shift_reg[i - 1];
    }
    shift_reg[0] = x;

    // 2. 컨볼루션 연산
    for (int i = 0; i < FILTER_TAP_NUM; i++)
    {
        acc += (acc_t)shift_reg[i] * filter_taps[i];
    }

    // 3. 고속 비트 시프트 및 반올림 연산
    // [선택 A] 계수가 Q7 format(합이 128 기준)으로 설계된 경우 (추천: 이 필터 계수 합인 150과 가장 가깝습니다)
    *y = (data_t)((acc + 64) >> 7);

    // [선택 B] 계수가 Q8 format(합이 256 기준)으로 설계된 경우 (전체적으로 신호가 약 0.5배 감쇄됨)
    // *y = (data_t)((acc + 128) >> 8);
}
#endif
