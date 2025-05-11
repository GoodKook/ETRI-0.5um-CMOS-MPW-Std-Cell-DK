/*
 */

#ifndef _FIR_PE_H_H_
#define _FIR_PE_H_H_

// Vitis HLS no longer support SystemC after 2020.1
// Fortunately, bit-wised ap_(u)int<> type is compatible with sc_(u)int<>
 
#if VM_SC==1    //----------------- SystemC Type
#include "systemc.h"
typedef sc_uint<4>  input_t;
typedef sc_uint<4>  output_t;

typedef sc_uint<8>  data_t;
typedef sc_uint<16> acc_t;
#else           //----------------- Vitis-HLS Type
#include "ap_int.h"
typedef ap_uint<4>  input_t;
typedef ap_uint<4>  output_t;

typedef ap_uint<8>  data_t;
typedef ap_uint<16> acc_t;
#endif
 
void fir_pe(data_t Cin, input_t Xin, input_t Yin, output_t* Xout, output_t* Yout);
 
 #endif
