//
// Function to calculate the DFT
//
#include <math.h>
#include <stdint.h>

void calcDFT(uint16_t *xn, uint16_t len, uint16_t N, double *Xr, double *Xi)
{
    int k, n;
 
    for (k = 0; k < N; k++)
    {
        Xr[k] = 0;
        Xi[k] = 0;
        for (n = 0; n < len; n++)
        {
            Xr[k] = (Xr[k] + (double)xn[n] * cos((double)(2.0 * M_PI * k * n / N)));
            Xi[k] = (Xi[k] - (double)xn[n] * sin((double)(2.0 * M_PI * k * n / N)));
        }
    }
}
