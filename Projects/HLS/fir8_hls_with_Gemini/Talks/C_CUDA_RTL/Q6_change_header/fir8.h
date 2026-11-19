/* -----------------------------------------------------------
Filename : fir8.h
Purpose  : FIR Filter
Author   : goodkook@gmail.com
History  : Mar. 2024, First Release
-------------------------------------------------------------- */

#ifndef _FIR8_H_
#define _FIR8_H|

#include <stdint.h>

#define F_SAMPLE        4800
#define FILTER_TAP_NUM  8

static uint8_t filter_taps[FILTER_TAP_NUM] = {
  4, 12, 25, 34, 34, 25, 12, 4 };

typedef uint8_t   coef_t;
typedef uint8_t	  data_t;
typedef uint16_t  acc_t;

// 출력 데이터 타입을 16비트에서 8비트(data_t)로 최적화 수정
void fir8( data_t *y, data_t x);

#endif
