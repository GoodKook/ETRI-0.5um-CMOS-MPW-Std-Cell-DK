/********************************************************************
Filename: fxp_sqrt_top_TB.cpp
Purpose : Testbench of fxp_sqrt_top, un-timed model
History :
*********************************************************************
CC BY-NC, GoodKook, goodkook@gmail.com
*********************************************************************/

#include <cstdio>
#include <cstdlib>
#include <unistd.h>

#include "systemc.h"
#include "fxp_sqrt_top.h"

int sc_main(int argc, char** argv)
{
    in_data_t   in_val;
    out_data_t  out_val;

    for (int n=0; n<100; n++)
    {
        in_val = (in_data_t)rand();
        out_val = fxp_sqrt_top(in_val);
        printf("SQRT(%5.1f) = %9.5f [%9.5f], diff=%12.9f\n",
                (float)in_val, (float)out_val, (float)sqrt(in_val),
                (float)out_val-(float)sqrt(in_val));
    }
    printf("              --------- -----------  ------\n");
    printf("               Fixed Pt    math.h\n");
    return 0;
}

