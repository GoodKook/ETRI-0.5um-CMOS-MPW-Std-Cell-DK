//
// Make Your Own Neural Network, Part 2
//  Gentle Start with C++
// Filename: neuralNetwork.h
//
#ifndef __NEURALNETWORK_H_
#define __NEURALNETWORK_H_

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "nnWeight.h"
#include "nnActivation_Func.h"

class neuralNetwork: public Weight<float>, Activation_Func
{
public:
    // Network's parameters -----------------------------------------------
    float       lr;           // Learning Rate
    // Weight Matrix ------------------------------------------------------
    Weight<float>   wi_h1;    //  input layer to first hidden layer
    Weight<float>   wh1_h2;   //  hidden layer to second hidden layer
    Weight<float>   wh2_o;    //  hidden layer to final layer
    // Vectors to the nodes -----------------------------------------------
    Layer<float>    network_inputs;
    Layer<float>    hidden1_inputs, hidden1_outputs, hidden1_errors;
    Layer<float>    hidden2_inputs, hidden2_outputs, hidden2_errors;
    Layer<float>    final_inputs,  final_outputs,  final_errors;

    // Constructor -----------------------------------------------------------
    neuralNetwork(int i_nodes, int h1_nodes, int h2_nodes, int o_nodes, float learningrate):
        wi_h1("Wi_h1", i_nodes, h1_nodes),                      // Weights between Input & Hidden1 Layer
        wh1_h2("Wh1_h2", h1_nodes, h2_nodes),                   // Weights between Hidden1 & Hidden2 Layer
        wh2_o("Wh2_o", h2_nodes, o_nodes),                      // Weights between Hidden2 & Final Layer
        network_inputs ("Input   Layer's inputs ", i_nodes),    // Input Layer
        hidden1_inputs ("Hidden1 Layer's inputs ", h1_nodes),   // Instantiate Hidden1 layer
        hidden1_outputs("Hidden1 Layer's outputs", h1_nodes),
        hidden1_errors ("Hidden1 Layer's errors ", h1_nodes),
        hidden2_inputs ("Hidden2 Layer's inputs ", h2_nodes),   // Instantiate Hidden2 layer
        hidden2_outputs("Hidden2 Layer's outputs", h2_nodes),
        hidden2_errors ("Hidden2 Layer's errors ", h2_nodes),
        final_inputs   ("Final   Layer's inputs ", o_nodes),    // Instantiate Final layer
        final_outputs  ("Final   Layer's outputs", o_nodes),
        final_errors   ("Final   Layer's errors ", o_nodes)
    {
        // Learning Rate
        lr = learningrate;

        // Initialize Weights
        for (int i = 0; i<network_inputs.nNodes; i++)
            for (int j = 0; j<hidden1_inputs.nNodes; j++)
                wi_h1.Wt[i][j] = gen_gaussian(0.0, 1.0/sqrt((float)(network_inputs.nNodes)));

        for (int i = 0; i<hidden1_inputs.nNodes; i++)
            for (int j = 0; j<hidden2_inputs.nNodes; j++)
                wh1_h2.Wt[i][j] = gen_gaussian(0.0, 1.0/sqrt((float)(hidden1_inputs.nNodes)));

        for (int i = 0; i<hidden2_inputs.nNodes; i++)
            for (int j = 0; j<final_inputs.nNodes; j++)
                wh2_o.Wt[i][j] = gen_gaussian(0.0, 1.0/sqrt((float)(hidden2_inputs.nNodes)));
    }

    // Query -----------------------------------------------------------------
    void query(float* inputs, float* targets)
    {
        // Set Input Layer
        for (int i = 0; i<network_inputs.nNodes; i++)
            network_inputs.Nodes[i] = inputs[i];

        // calculate signals into hidden1 layer
        wi_h1.dot_product(network_inputs.Nodes, hidden1_inputs.Nodes);
        // calculate the signals emerging from hidden layer
        activation_function(&hidden1_inputs, &hidden1_outputs);

        // calculate signals into hidden2 layer
        wh1_h2.dot_product(hidden1_inputs.Nodes, hidden2_inputs.Nodes);
        // calculate the signals emerging from hidden layer
        activation_function(&hidden2_inputs, &hidden2_outputs);

        // calculate signals into hidden layer
        wh2_o.dot_product(hidden2_outputs.Nodes, final_inputs.Nodes);
        // calculate the signals emerging from hidden layer
        activation_function(&final_inputs, &final_outputs);

        // output layer error is the (target - actual)
        for (int i=0; i<final_outputs.nNodes; i++)
            final_errors.Nodes[i] = targets[i] - final_outputs.Nodes[i];
    }

    // Train -----------------------------------------------------------------
    void train(float* inputs, float* targets)
    {
        // Set Input Layer
        for (int i = 0; i<network_inputs.nNodes; i++)
            network_inputs.Nodes[i] = inputs[i];

        // Forward ------------------------------------------------------------------------------
        // calculate signals into hidden1 layer
        wi_h1.dot_product(network_inputs.Nodes, hidden1_inputs.Nodes);
        // calculate the signals emerging from hidden1 layer
        activation_function(&hidden1_inputs, &hidden1_outputs);

        // calculate signals into hidden2 layer
        wh1_h2.dot_product(hidden1_inputs.Nodes, hidden2_inputs.Nodes);
        // calculate the signals emerging from hidden2 layer
        activation_function(&hidden2_inputs, &hidden2_outputs);

        // calculate signals into final layer
        wh2_o.dot_product(hidden2_outputs.Nodes, final_inputs.Nodes);
        // calculate the signals emerging from final layer
        activation_function(&final_inputs, &final_outputs);

        // Error Calc. -------------------------------------------------------------------------
        // output layer error is the (target - actual)
        for (int i=0; i<final_outputs.nNodes; i++)
            final_errors.Nodes[i] = targets[i] - final_outputs.Nodes[i];
        // hidden layer error is the output_errors, split by weights, recombined at hidden nodes
        wh2_o.dot_product_T(final_errors.Nodes, hidden2_errors.Nodes);      // Back-Propage Error: final->hidden2
        wh1_h2.dot_product_T(hidden2_errors.Nodes, hidden1_errors.Nodes);   // Back-Propage Error: hidden2->hidden1

        // Update Weight ------------------------------------------------------------------------
        // update the weights for the links between the hidden2 and output layers
        wh2_o.Update(lr, del_activation_function, final_errors, final_outputs, hidden2_outputs);
        // update the weights for the links between the hidden1 and hidden2 layers
        wh1_h2.Update(lr, del_activation_function, hidden2_errors, hidden2_outputs, hidden1_outputs);
        // update the weights for the links between the input and hidden1 layers
        wi_h1.Update(lr, del_activation_function, hidden1_errors, hidden1_outputs, network_inputs);
    }

    void _free()
    {
        wi_h1._free();
        wh1_h2._free();
        wh2_o._free();
        network_inputs._free();
        hidden1_inputs._free();
        hidden1_outputs._free();
        hidden1_errors._free();
        hidden2_inputs._free();
        hidden2_outputs._free();
        hidden2_errors._free();
        final_inputs._free();
        final_outputs._free();
        final_errors._free();
    }

    void print()
    {
        printf("\nInput :");
        for (int i=0; i<network_inputs.nNodes; i++) printf(" %4.2f ", network_inputs.Nodes[i]);

        printf("\nOutput:");
        float max = 0.0;
        int   n = -1;
        for (int i=0; i<final_outputs.nNodes; i++)
            max = (final_outputs.Nodes[i] >= max)? final_outputs.Nodes[i]: max;
        for (int i=0; i<final_outputs.nNodes; i++)
        {
            if (final_outputs.Nodes[i]==max)
                printf("[%4.2f]", final_outputs.Nodes[i]);
            else
                printf(" %4.2f ", final_outputs.Nodes[i]);
        }
    }
    // Destructor -------------------------------------------------------------
    ~neuralNetwork() {}
};

#endif
