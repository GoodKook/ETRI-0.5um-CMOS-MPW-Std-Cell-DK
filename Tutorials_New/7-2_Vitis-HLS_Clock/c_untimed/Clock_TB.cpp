
#include <cstdio>
#include <cstdlib>
#include <unistd.h>

#include "systemc.h"

void Clock(bool reset, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss);

int sc_main(int argc, char** argv)
{
	int	n_clock;
    unsigned char hh, mm, ss;

#if defined(COMBINATIONAL)
    printf("%s\n", "Combinational Output");
#elif defined(REGISTERED)
    printf("%s\n", "Registered Output");
#elif defined(BIT_ACCURATE_SC)
    printf("%s\n", "Bit-Accurate Type");
#endif

    Clock(true, false, &hh, &mm, &ss);	// Resetting

	if (argc==2)
		n_clock = atoi(argv[1]);
	else
		n_clock = 100;

    for (int clk=0; clk<n_clock; clk++)
    {
        Clock(false, true, &hh, &mm, &ss);

        printf("[%5d]: %02d:%02d:%02d\r", clk, hh, mm, ss);
        fflush(stdout);
        usleep(10000);    // 10ms
    }

    printf("\n");
    return 0;
}

