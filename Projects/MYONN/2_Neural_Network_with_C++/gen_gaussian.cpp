//
// Filename: gen_gaussian.cpp
// Build: gcc -o gen_gaussian gen_gaussian.cpp -lm
//
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double gen_gaussian(double mean, double std_dev)
{
    static int have_spare = 0;
    static double spare;

    if (have_spare)
    {
        have_spare = 0;
        return mean + std_dev * spare;
    }

    have_spare = 1;
    double u, v, s;
    do {
        u = (rand() / ((double)RAND_MAX)) * 2.0 - 1.0;
        v = (rand() / ((double)RAND_MAX)) * 2.0 - 1.0;
        s = u * u + v * v;
    } while (s >= 1.0 || s == 0.0);

    s = sqrt(-2.0 * log(s) / s);
    spare = v * s;
    return mean + std_dev * (u * s);
}

int main()
{
    for (int i=0; i<100; i++)
        printf("%f\n", gen_gaussian(0, 0.1));
}