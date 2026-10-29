/********************************************************************
Filename: Clock_TB.cpp
Purpose : Testbench of Clock, un-timed model
History :
*********************************************************************
CC BY-NC, GoodKook, goodkook@gmail.com
*********************************************************************/

#include <cstdio>
#include <cstdlib>
#include <unistd.h>

void Clock(bool reset, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss);

int main(int argc, char** argv)
{
	int	n_clock;
    unsigned char hh, mm, ss;

    Clock(true, false, &hh, &mm, &ss);	// Resetting

    for (int clk=0; clk<3600*25; clk++)
    {
        Clock(false, true, &hh, &mm, &ss);

        printf("[%5d]: %02d:%02d:%02d\r", clk, hh, mm, ss);
        fflush(stdout);
        usleep(100);
    }

    printf("\n");
    return 0;
}

