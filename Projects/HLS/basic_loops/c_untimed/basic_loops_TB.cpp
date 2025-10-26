/********************************************************************
Filename: basic_loops_TB.cpp
Purpose : Testbench of basic_loops, un-timed model
History :
*********************************************************************
CC BY-NC, GoodKook, goodkook@gmail.com
*********************************************************************/

#include <cstdio>
#include <cstdlib>
#include <unistd.h>

#include "systemc.h"
#include "basic_loops.h"

dout_t basic_loops(din_t A[N_MEM]);

int sc_main(int argc, char** argv)
{
    din_t mem[N_MEM];

    for (int i=0; i<N_MEM; i++)
        mem[i] = i; //rand();

    printf("Sum=%d\n", (int)basic_loops(mem));
    return 0;
}

