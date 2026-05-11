//
// Gentle start of C++
// Filename: array.cpp
//

#include <stdio.h>
#include <stdlib.h>

#define N_ROWS  3
#define N_COLS  2

int main()
{
    int** a;    // 2-D Array

    a = (int**)malloc(N_ROWS * sizeof(int*));
    for (int row = 0; row <N_ROWS; row++)
        a[row] = (int*)malloc(N_COLS * sizeof(int));

    a[0][0] = 1;
    a[0][1] = 2;
    a[1][0] = 9;
    a[2][1] = 12;

    for (int row=0; row<N_ROWS; row++)
    {
        for (int col=0; col<N_COLS; col++)
            printf("%3d", a[row][col]);
        printf("\n");
    }
}
