#include "apple1.h"
#include <stdio.h>
#include <stdlib.h>

int main()
{
	long int x, y;
    int i = 0;
    
	for (x=2000; x<=9000; x+=1000)
	{
		for (y = 1000; y<=9000; y+=1000)
		{
			printf("%ld x %ld = %ld\n", x, y, (x*y));
		}
        printf("--%ld--------\n", x);
	}
    
	return 0;
}

