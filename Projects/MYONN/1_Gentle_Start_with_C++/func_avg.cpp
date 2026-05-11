//
// Gentle start of C++
// Filename: func_avg.cpp
//
#include <stdio.h>
#include <stdlib.h>

float avg(float x, float y)
{
    printf("first input is %f\n", x);
    printf("second input is %f\n", y);

    float a = (x+y)/2.0;
    printf("average is %f\n", a);

    return a;
}

int main()
{
    printf("Function avg() returns %f\n", avg(3.2, 7.5));
}
