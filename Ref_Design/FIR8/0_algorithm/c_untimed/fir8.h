/* -----------------------------------------------------------
Filename : fir8.h
Purpose  : FIR Filter
Author   : goodkook@gmail.com
History  : Mar. 2024, First Release
-------------------------------------------------------------- */

/*

FIR filter designed with
http://t-filter.appspot.com

sampling frequency: 4800 Hz

fixed point precision: 8 bits

* 0 Hz - 1000 Hz
  gain = 1
  desired ripple = 25 dB
  actual ripple = n/a

* 1200 Hz - 2400 Hz
  gain = 0
  desired attenuation = -40 dB
  actual attenuation = n/a

*/

#ifndef _FIR8_H_
#define _FIR8_H_

#include <stdint.h>

#define F_SAMPLE        4800
#define FILTER_TAP_NUM  8

static uint8_t filter_taps[FILTER_TAP_NUM] = {
  4,
  12,
  25,
  34,
  34,
  25,
  12,
  4
};

typedef uint8_t     coef_t;
typedef uint8_t	    data_t;
typedef uint16_t	acc_t;

void fir( acc_t* y, data_t x);

#endif
