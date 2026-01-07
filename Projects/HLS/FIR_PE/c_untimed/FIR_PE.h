/*
 */

#ifndef _FIR_PE_H_H_
#define _FIR_PE_H_H_

// Vitis HLS no longer support SystemC after 2020.1
// Fortunately, bit-wised ap_(u)int<> type is compatible with sc_(u)int<>
 
#if defined(FIR_PE_VERSION_SC)  //----------------- SystemC Type
#include "systemc.h"
typedef sc_uint<4>  input_t;
typedef sc_uint<4>  output_t;

typedef sc_uint<8>  data_t;
typedef sc_uint<16> acc_t;
#elif defined(FIR_PE_VERSION)   //----------------- Vitis-HLS Type
#include "ap_int.h"
typedef ap_uint<4>  input_t;
typedef ap_uint<4>  output_t;

typedef ap_uint<8>  data_t;
typedef ap_uint<16> acc_t;
#endif
 
class FIR_PE
{
    public:

    enum   step_t { Step0, Step1, Step2, Step3, Step4};    // FSM
    step_t   step;
    acc_t    mul, acc[2], y;
    data_t   x[2];

    FIR_PE()
    {
        step = Step4;
        mul = 0;
        acc[0] = 0;
        acc[1] = 0;
    }

    void proc(data_t Cin, input_t Xin, input_t Yin, bool Rdy, output_t* Xout, output_t* Yout, bool* Vld);
};
 #endif
