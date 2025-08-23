/*
*/

#include "fir_pe.h"

int sc_main(int argc, char** argv)
{
    data_t      Cin;
    input_t     Xin, Yin;
    output_t    Xout, Yout;
    bool        Rdy, Vld;

    uint16_t    c = 1, x = 2, xout, _xout, y = 3, yout, _yout;

    for(int ITER=0; ITER<8; ITER++)
    {
        printf("ITER=%d\n", ITER);

        yout = xout = 0;

        for(int step=0; step<5; step++)
        {
            Cin = c;
            Xin = (x>>((step-1)*4));
            Yin = (y>>((step-1)*4));

            //fir_pe(Cin, Xin, Yin, &Xout, &Yout);
            fir_pe(Cin, Xin, Yin, true, &Xout, &Yout, &Vld);

            if (step==1 || step==2)
                xout |= ((uint16_t)Xout<<((step-1)*4));
            yout |= ((uint16_t)Yout<<((step-1)*4));
        }

        printf(">c=%d(0x%02X) x=%d(0x%02X) y=%d(0x%04X) :", c, c, x, x, y, y);
        printf(" xout=%d(0x%02X)[%d] yout=%d(0x%04X)[%d]", xout, xout, _xout, yout, yout, _yout);
        if ((yout==_yout) && (xout==_xout)) printf(" OK\n");
        else                                printf(" ERROR\n");

        _xout = x;
        _yout = c * x + y;

        c = (uint8_t)rand()/4;
        x = (uint8_t)rand();
        y = (uint16_t)rand()/2;
    }

    return 0;
}
