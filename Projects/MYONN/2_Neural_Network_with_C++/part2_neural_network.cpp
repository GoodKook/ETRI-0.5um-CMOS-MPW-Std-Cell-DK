//
// Make Your Own Neural Network, Part 2
//  C++ Version of "part2_neural_network.py"
// Filename: part2_neural_network.h
// Build: g++ -o part2_neural_network part2_neural_network.cpp -lm
//
#include "part2_neural_network.h"

// Number of Nodes
#define N_INPUT     3
#define N_HIDDEN    3
#define N_FINAL     3
#define LEARN_RATE  0.3

int main(int argc, char** argv)
{
    float *inputs  = (float*)malloc(N_INPUT * sizeof(float));
    float *targets = (float*)malloc(N_FINAL * sizeof(float));

    // Instantiate Neural Network
    neuralNetwork n( N_INPUT, N_HIDDEN, N_FINAL, (float)LEARN_RATE);

    printf("Neural network Conf.:\n");
    printf("\tInput Nodes=%d Hiddel Nodes=%d Output Nodes=%d\n",
                                    n.inodes, n.hnodes, n.onodes );

    printf("Initial Status----------------------------------------------\n");

    n.Print_Network(inputs, targets);

    printf("Query Test -------------------------------------------------\n");
    for (int i=0; i<N_INPUT; i++)   inputs[i] = 1.0;
    for (int i=0; i<N_FINAL; i++)   targets[i] = 1.0;
    n.query(inputs, targets);

    n.Print_Network(inputs, targets);

    printf("Test Train--------------------------------------------------\n");
    n.train(inputs, targets);

    n.Print_Network(inputs, targets);

    printf("Test Train(epoch=10)--------------------------------------------------\n");
    for (int i=0; i<N_INPUT; i++)   inputs[i] = 0.0;
    for (int i=0; i<N_FINAL; i++)   targets[i] = 0.0;

    inputs[0] = 1.0;
    targets[N_FINAL-1] = 1.0;

    for (int i=0; i<100; i++)
        n.train(inputs, targets);

    n.Print_Network(inputs, targets);

    printf("Query Test -------------------------------------------------\n");
    n.query(inputs, targets);

    n.Print_Network(inputs, targets);

    free(inputs);
    free(targets);
}
