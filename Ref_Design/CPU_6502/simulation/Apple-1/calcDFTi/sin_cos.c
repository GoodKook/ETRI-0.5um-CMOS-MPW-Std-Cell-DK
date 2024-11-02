#include <stdio.h>
#include <math.h>

#define LEN 16

void main(void)
{
    int k, n;
 
    for (k = 0; k < LEN; k++)
    {
        for (n = 0; n < LEN; n++)
            printf("COS[%2d][%2d]=%+6d; \t SIN[%2d][%2d]=%+6d;\n",
                k, n, (int)(cos((double)(2.0 * M_PI * k * n / LEN))*1000),
                k, n, (int)(sin((double)(2.0 * M_PI * k * n / LEN))*1000));
        printf("\n");
    }
}


