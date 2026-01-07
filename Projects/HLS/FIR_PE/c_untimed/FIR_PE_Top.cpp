/*
    Filename: FIR_PE_Top.cpp
 */

#include "FIR_PE.h"

void FIR_PE_Top(data_t Cin, input_t Xin, input_t Yin, bool Rdy, output_t* Xout, output_t* Yout, bool* Vld)
{
#pragma HLS interface mode=ap_ctrl_none port=return
#pragma HLS interface mode=ap_none port=Cin
#pragma HLS interface mode=ap_none port=Xin
#pragma HLS interface mode=ap_none port=Yin
#pragma HLS interface mode=ap_none port=Xout
#pragma HLS interface mode=ap_none port=Yout
#pragma HLS interface mode=ap_none port=Vld

    static FIR_PE u_FIR_PE;

    u_FIR_PE.proc(Cin, Xin, Yin, Rdy, Xout, Yout, Vld);
}
