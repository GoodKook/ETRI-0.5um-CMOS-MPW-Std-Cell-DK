/* -----------------------------------------------------------
Filename : FIR8.h
Purpose  : FIR Filter (8-Tap)
Author   : goodkook@gmail.com
History  : Sep. 2025, First Release
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
  4, 12, 25, 34, 34, 25, 12, 4 };

#if defined(FIR_MAC_VERSION_MPW)
#include <ap_fixed.h>
typedef ap_uint<6>  coef_t;
typedef ap_uint<8>	data_t;
typedef ap_uint<16> acc_t;
#elif defined(FIR_MAC_VERSION_MPW_SC)
#include "systemc.h"
typedef sc_uint<6>  coef_t;
typedef sc_uint<8>	data_t;
typedef sc_uint<16> acc_t;
#elif defined(FIR_PE_VERSION)||defined(FIR_PE_VERSION_SC)
#include "FIR_PE.h"
#else
typedef uint8_t   coef_t;
typedef uint8_t	  data_t;
typedef uint16_t  acc_t;
#endif

#if defined(FIR_ARRAY_VERSION)||defined(FIR_ARRAY_VERSION_SC)
inline acc_t FIR_PE(coef_t Cin, acc_t Yin, data_t Xin, data_t* Xout);
#endif

void FIR8( acc_t* y, data_t x);

#endif

