//
// Gentle start of C++
// Filename: for_sqr.cpp
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
	for (int n=0; n<10; n++)
	{
		printf("pow(%d,3) = %3d,", n, (int)pow((float)n, (float)3));
		printf("sqrt(%d) = %5.3f\n", n, sqrt((float)n));
	}
}

