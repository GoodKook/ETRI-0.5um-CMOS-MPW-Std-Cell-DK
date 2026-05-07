//
// Make Your Own Neural Network, Part 2
//  Gentle Start with C++
// Filename: neuralNetwork.cpp
//

#include "neuralNetwork.h"

#define N_INPUT     5
#define N_HIDDEN    3
#define N_FINAL     7
#define LEARN_RATE  0.3
//#define TRAIN_EPOCH 300

int main()
{
    neuralNetwork nn( N_INPUT, N_HIDDEN, N_FINAL, LEARN_RATE);

    printf("Initial Wih matrix:------------------------------------------\n");
    nn.wih.print();
    printf("Initial Who matrix:------------------------------------------\n");
    nn.who.print();

    float inputs[N_INPUT], targets[N_FINAL];
    for (int i=0; i<N_INPUT; i++)   inputs[i] = 0.0;
    inputs[0] = 0.99;

    for (int i=0; i<N_FINAL; i++)  targets[i] = 0.0;
    targets[N_FINAL-1] = 0.99;

    fflush(stdout);

    printf("Query NN:---------------------------------------------------\n");
    nn.query(inputs, targets);

    nn.network_inputs.print();

    nn.hidden_inputs.print();
    nn.hidden_outputs.print();
    nn.hidden_errors.print();

    nn.final_inputs.print();
    nn.final_outputs.print();
    nn.final_errors.print();

    fflush(stdout);

    printf("Train NN(Epoch=%d):------------------------------------------\n", TRAIN_EPOCH);
    for (int n=0; n<TRAIN_EPOCH; n++)
    {
        printf(".");
        nn.train(inputs, targets);
    }
    printf("\n");
    nn.wih.print();
    nn.who.print();

    fflush(stdout);

    printf("Query NN:---------------------------------------------------\n");
    nn.query(inputs, targets);

    nn.network_inputs.print();

    nn.hidden_inputs.print();
    nn.hidden_outputs.print();
    nn.hidden_errors.print();

    nn.final_inputs.print();
    nn.final_outputs.print();
    nn.final_errors.print();

    fflush(stdout);

    printf("Result:-----------------------------------------------------");
    printf("\nInput :");
    for (int i=0; i<N_INPUT; i++)   printf("%6.2f", inputs[i]);
    printf("\nTarget:");
    for (int i=0; i<N_FINAL; i++)   printf("%6.2f", targets[i]);
    printf("\nOutput:");
    for (int i=0; i<N_FINAL; i++)   printf("%6.2f", nn.final_outputs.Nodes[i]);

    printf("\nEnd:------------------------------------------------------\n");

    nn._free();
}
