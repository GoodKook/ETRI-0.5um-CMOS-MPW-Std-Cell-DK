/*
*/

#include "fir_pe.h"

void fir_pe(input_t Cin, input_t Xin, input_t Yin, output_t* Xout, output_t* Yout)
{
    enum   step_t { Step0, Step1, Step2, Step3};    // Initialize
    static step_t   step = Step0;
    static acc_t    mul, acc[2];
    static input_t  c[4], x[4], y[4];

    SHIFT_IO:
    for (int i=3; i>0; i--)
    {
        c[i] = c[i-1];
        x[i] = x[i-1];
        y[i] = y[i-1];
    }
    c[0] = Cin;
    x[0] = Xin;
    y[0] = Yin;

    *Xout = x[3];

    switch(step)
    {
        case Step0:
            acc[1] = acc[0];
            *Yout = (output_t)(acc[1]);
            step = Step1;
            break;
        case Step1:
            mul = (acc_t)(((x[2]<<4)|x[1]) * ((c[2]<<4)|c[1]));
            *Yout = (output_t)(acc[1]>>4);
            step = Step2;
            break;
        case Step2:
            step = Step3;
            *Yout = (output_t)(acc[1]>>8);
            break;
        case Step3:
            acc[0] = mul + (acc_t)((y[4]<<12)|(y[3]<<8)|(y[2]<<4)|y[1]);
            step = Step0;
            *Yout = (output_t)(acc[1]>>12);
            break;
    }
}

