/*
    Processing Eelement for FIR8
    - Reduced I/O bit-width : 4
*/

#include "fir_pe.h"

void fir_pe(data_t Cin, input_t Xin, input_t Yin, bool Rdy, output_t* Xout, output_t* Yout, bool* Vld)
{
//#pragma HLS interface mode=ap_none port=Cin
//#pragma HLS interface mode=ap_none port=Xin
//#pragma HLS interface mode=ap_none port=Yin
#pragma HLS interface mode=ap_none port=Xout
#pragma HLS interface mode=ap_none port=Yout
#pragma HLS interface mode=ap_none port=Vld

    enum   step_t { Step0, Step1, Step2, Step3, Step4};    // FSM
    static step_t   step = Step4;
    static acc_t    mul = 0, acc[2] = { 0, 0}, y;
    static data_t   x[2];

    #ifdef _DEBUG
    printf("STEP[%d]:", step);
    #endif

    if (step==Step4)
        *Vld = true;
    else
        *Vld = false;

    switch(step)
    {
        case Step0:
            // INPUT
            y = (acc_t)Yin;
            x[0] = (data_t)Xin;
            // OUTPUT
            *Yout = (output_t)(acc[0]);
            *Xout = (output_t)x[1];
            // NEXT STEP
            step = Step1;
            break;
        case Step1:
            // INPUT
            y |= ((acc_t)Yin<<4);
            x[0] |= ((data_t)Xin<<4);
            // OUTPUT
            *Yout = (output_t)(acc[0]>>4);
            *Xout = (output_t)(x[1]>>4);
            // NEXT STEP
            step = Step2;
            break;
        case Step2:
            // INPUT
            y |= ((acc_t)Yin<<8);
            // MULTIPLIER
            mul = (acc_t)(x[0] * Cin);
            // OUTPUT
            *Yout = (output_t)(acc[0]>>8);
            *Xout = 0;
            // NEXT STEP
            step = Step3;
            break;
        case Step3:
            // INPUT
            y |= ((acc_t)Yin<<12);
            // OUTPUT
            *Yout = (output_t)(acc[0]>>12);
            *Xout = 0;
            // NEXT STEP
            step = Step4;
            break;
        case Step4:
            // SHIFTER(DELAY)
            x[1] = x[0];
            acc[1] = acc[0];
            // ACCUMULATE
            acc[0] = mul + y;
            // OUTPUT
            *Yout = 0;
            *Xout = 0;
            // NEXT STEP
            if (Rdy)    step = Step0;
            else        step = Step4;
            break;
    }

    #ifdef _DEBUG
    printf("Cin[%3d] Xin[%2d] Yin[%2d] MUL[%5d] ACC0[%5d] ACC1[%5d] Xout[%2d] Yout[%2d]\n",
                (int)Cin, (int)Xin, (int)Yin, (int)mul, (int)acc[0], (int)acc[1], (int)*Xout, (int)*Yout);
    #endif
}
