//
//
//

#include "nnWeight.h"

#define N_FROM  5
#define N_TO    3

int main()
{
    Weight<float> W(N_FROM, N_TO);  // Number of Nodes

    float f=0.0;

    for (int i=0; i<N_FROM; i++)
    {
        for (int j=0; j<N_TO; j++)
        {
            W.Wt[i][j] = f;
            f += 0.1;
        }
    }
    W.print();

    W.transpose();
    printf("Transposed:\n");
    W.print();

    printf("End:\n");
    return 1;
}
