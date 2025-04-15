
#include <cstdio>
#include <cstdlib>
#include <unistd.h>

void Clock(bool reset, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss);

int main(int argc, char** argv)
{
	int	n_clock;
    unsigned char hh, mm, ss;

	if (argc==2)
		n_clock = atoi(argv[1]);
	else
		n_clock = 100;

    Clock(true, false, &hh, &mm, &ss);

    for (int clk=0; clk<n_clock; clk++)
    {
        Clock(false, true, &hh, &mm, &ss);

        printf("[%5d] %02d:%02d:%02d\r", clk, hh, mm, ss);
        fflush(stdout);
        usleep(10000);    // 10ms
    }

    printf("\n");
    return 0;
}

