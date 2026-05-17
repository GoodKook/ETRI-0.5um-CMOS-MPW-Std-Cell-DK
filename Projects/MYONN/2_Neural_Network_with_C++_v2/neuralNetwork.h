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
    float       lr;                     // Learning Rate
    // Weight Matrix ------------------------------------------------------
    Weight<float>   wih;    //  input layer to hidden layer
    Weight<float>   who;    //  hidden layer to final layer
    // Vectors to the nodes -----------------------------------------------
    Layer<float>    network_inputs;
    Layer<float>    hidden_inputs, hidden_outputs, hidden_errors;
    Layer<float>    final_inputs,  final_outputs,  final_errors;

    // Constructor -----------------------------------------------------------
    neuralNetwork(int i_nodes, int h_nodes, int o_nodes, float learningrate):   // Derived Class
        wih("Wih", i_nodes, h_nodes),                       // Weights between Input & Hidden Layer
        who("Who", h_nodes, o_nodes),                       // Weights between Hidden & Final Layer
        network_inputs("Input  Layer's inputs ", i_nodes),  // Input Layer
        hidden_inputs ("Hidden Layer's inputs ", h_nodes),  // Instantiate Hidden layer
        hidden_outputs("Hidden Layer's outputs", h_nodes),
        hidden_errors ("Hidden Layer's errors ", h_nodes),
        final_inputs  ("Final  Layer's inputs ", o_nodes),  // Instantiate Final layer
        final_outputs ("Final  Layer's outputs", o_nodes),
        final_errors  ("Final  Layer's errors ", o_nodes)
    {
        // Learning Rate
        lr = learningrate;

        // Initialize Weights
        for (int i = 0; i<network_inputs.nNodes; i++)
            for (int j = 0; j<hidden_inputs.nNodes; j++)
                wih.Wt[i][j] = gen_gaussian(0.0, 1.0/sqrt((float)(network_inputs.nNodes)));

        for (int i = 0; i<hidden_inputs.nNodes; i++)
            for (int j = 0; j<final_inputs.nNodes; j++)
                who.Wt[i][j] = gen_gaussian(0.0, 1.0/sqrt((float)(hidden_inputs.nNodes)));
    }

    // Query -----------------------------------------------------------------
    void query(float* inputs, float* targets)
    {
        // Set Input Layer
        for (int i = 0; i<network_inputs.nNodes; i++)
            network_inputs.Nodes[i] = inputs[i];

        // calculate signals into hidden layer
        wih.dot_product(network_inputs.Nodes, hidden_inputs.Nodes);
        // calculate the signals emerging from hidden layer
        activation_function(&hidden_inputs, &hidden_outputs);

        // calculate signals into hidden layer
        who.dot_product(hidden_outputs.Nodes, final_inputs.Nodes);
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
        // calculate signals into hidden layer
        wih.dot_product(network_inputs.Nodes, hidden_inputs.Nodes);
        // calculate the signals emerging from hidden layer
        activation_function(&hidden_inputs, &hidden_outputs);

        // calculate signals into hidden layer
        who.dot_product(hidden_outputs.Nodes, final_inputs.Nodes);
        // calculate the signals emerging from hidden layer
        activation_function(&final_inputs, &final_outputs);

        // Error Calc. -------------------------------------------------------------------------
        // output layer error is the (target - actual)
        for (int i=0; i<final_outputs.nNodes; i++)
            final_errors.Nodes[i] = targets[i] - final_outputs.Nodes[i];

        // hidden layer error is the output_errors, split by weights, recombined at hidden nodes
        who.dot_product_T(final_errors.Nodes, hidden_errors.Nodes);   // Back-Propage Error

        // Update Weight ------------------------------------------------------------------------
        // update the weights for the links between the hidden and output layers
        who.Update(lr, del_activation_function, final_errors, final_outputs, hidden_outputs);

        // update the weights for the links between the input and hidden layers
        wih.Update(lr, del_activation_function, hidden_errors, hidden_outputs, network_inputs);
    }

    void _free()
    {
        wih._free();
        who._free();
        network_inputs._free();
        hidden_inputs._free();
        hidden_outputs._free();
        hidden_errors._free();
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
