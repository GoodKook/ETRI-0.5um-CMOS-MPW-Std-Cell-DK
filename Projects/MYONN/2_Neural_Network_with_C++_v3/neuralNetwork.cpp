//
// Make Your Own Neural Network, Part 2
//  Gentle Start with C++
// Filename: neuralNetwork.cpp
//

#include <array>

#include "neuralNetwork.h"

#define N_INPUT     3
#define N_HIDDEN1   20
#define N_HIDDEN2   20
#define N_FINAL     8
#define LEARN_RATE  0.3

//#define TRAIN_EPOCH 300

int main()
{
    neuralNetwork nn( N_INPUT, N_HIDDEN1, N_HIDDEN2, N_FINAL, LEARN_RATE);

    printf("Initial Wi_h1 matrix:------------------------------------------\n");
    nn.wi_h1.print();
    printf("Initial Wh1_h2 matrix:-----------------------------------------\n");
    nn.wh1_h2.print();
    printf("Initial Wh2_o matrix:------------------------------------------\n");
    nn.wh2_o.print();

    std::array<float, N_INPUT> inputs;
    std::array<float, N_FINAL> targets;

    for (int i=0; i<N_INPUT; i++)   inputs[i] = 0.0;
    inputs[0] = 0.99;

    for (int i=0; i<N_FINAL; i++)  targets[i] = 0.0;
    targets[N_FINAL-1] = 0.99;

    fflush(stdout);

    printf("Query NN:---------------------------------------------------\n");
    nn.query((float*)&inputs, (float*)&targets);

    nn.network_inputs.print();

    nn.hidden1_inputs.print();
    nn.hidden1_outputs.print();
    nn.hidden1_errors.print();

    nn.hidden2_inputs.print();
    nn.hidden2_outputs.print();
    nn.hidden2_errors.print();

    nn.final_inputs.print();
    nn.final_outputs.print();
    nn.final_errors.print();

    fflush(stdout);

    printf("Train NN for 3-to-8 Decoder(Epoch=%d):-----------------------------\n", TRAIN_EPOCH);
    for (int n=0; n<TRAIN_EPOCH; n++)
    {
        printf(".");

        inputs  = {0.01,0.01,0.01};
        targets = {0.99,0.00,0.00,0.00,0.00,0.00,0.00,0.00};
        nn.train((float*)&inputs, (float*)&targets);

        inputs  = {0.99,0.00,0.00};
        targets = {0.00,0.99,0.00,0.00,0.00,0.00,0.00,0.00};
        nn.train((float*)&inputs, (float*)&targets);

        inputs  = {0.00,0.99,0.00};
        targets = {0.00,0.00,0.99,0.00,0.00,0.00,0.00,0.00};
        nn.train((float*)&inputs, (float*)&targets);

        inputs  = {0.99,0.99,0.00};
        targets = {0.00,0.00,0.00,0.99,0.00,0.00,0.00,0.00};
        nn.train((float*)&inputs, (float*)&targets);

        inputs  = {0.00,0.00,0.99};
        targets = {0.00,0.00,0.00,0.00,0.99,0.00,0.00,0.00};
        nn.train((float*)&inputs, (float*)&targets);

        inputs  = {0.99,0.00,0.99};
        targets = {0.00,0.00,0.00,0.00,0.00,0.99,0.00,0.00};
        nn.train((float*)&inputs, (float*)&targets);

        inputs  = {0.00,0.99,0.99};
        targets = {0.00,0.00,0.00,0.00,0.00,0.00,0.99,0.00};
        nn.train((float*)&inputs, (float*)&targets);

        inputs  = {0.99,0.99,0.99};
        targets = {0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.99};
        nn.train((float*)&inputs, (float*)&targets);
    }
    printf("\n");
    nn.wi_h1.print();
    nn.wh1_h2.print();
    nn.wh2_o.print();

    fflush(stdout);

    printf("Query NN:---------------------------------------------------\n");
    inputs  = {0.99,0.99,0.00};
    nn.query((float*)&inputs, (float*)&targets);

    nn.network_inputs.print();

    nn.hidden1_inputs.print();
    nn.hidden1_outputs.print();
    nn.hidden1_errors.print();

    nn.hidden2_inputs.print();
    nn.hidden2_outputs.print();
    nn.hidden2_errors.print();

    nn.final_inputs.print();
    nn.final_outputs.print();
    nn.final_errors.print();

    fflush(stdout);

    printf("Test 3-to-8 Decoder:----------------------------------------------");
    inputs  = {0.01,0.01,0.01};
    nn.query((float*)&inputs, (float*)&targets);
    nn.print();

    inputs  = {0.99,0.00,0.00};
    nn.query((float*)&inputs, (float*)&targets);
    nn.print();

    inputs  = {0.00,0.99,0.00};
    nn.query((float*)&inputs, (float*)&targets);
    nn.print();

    inputs  = {0.99,0.99,0.00};
    nn.query((float*)&inputs, (float*)&targets);
    nn.print();

    inputs  = {0.00,0.00,0.99};
    nn.query((float*)&inputs, (float*)&targets);
    nn.print();

    inputs  = {0.99,0.00,0.99};
    nn.query((float*)&inputs, (float*)&targets);
    nn.print();

    inputs  = {0.00,0.99,0.99};
    nn.query((float*)&inputs, (float*)&targets);
    nn.print();

    inputs  = {0.99,0.99,0.99};
    nn.query((float*)&inputs, (float*)&targets);
    nn.print();
    printf("\nEnd:------------------------------------------------------\n");

    nn._free();
}
