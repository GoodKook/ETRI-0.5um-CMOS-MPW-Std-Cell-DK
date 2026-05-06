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
#include "nnLayer.h"

class neuralNetwork: public Weight<float>, Layer<float>
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
        who.transpose();
        who.dot_product(final_errors.Nodes, hidden_errors.Nodes);   // Back-Propage Error
        who.transpose();

        // Update Weight ------------------------------------------------------------------------
        // update the weights for the links between the hidden and output layers
        Update_Weight( &who, final_errors, final_outputs, hidden_outputs);
        
        // update the weights for the links between the input and hidden layers
        Update_Weight( &wih, hidden_errors, hidden_outputs, network_inputs);
    }

    //------------------------------------------------------------------------
    // activation function is the sigmoid function
    void activation_function(Layer<float> *x, Layer<float> *y)
    {
        for (int n=0; n<(x->nNodes); n++)
            y->Nodes[n] = (1.0 / (1.0 + exp(-(x->Nodes[n]))));
    }

    // Normal Distributed Random number
    double gen_gaussian(double mean, double std_dev)
    {
        static int have_spare = 0;
        static double spare;

        if (have_spare)
        {
            have_spare = 0;
            return mean + std_dev * spare;
        }

        have_spare = 1;
        double u, v, s;
        do {
            u = (rand() / ((double)RAND_MAX)) * 2.0 - 1.0;
            v = (rand() / ((double)RAND_MAX)) * 2.0 - 1.0;
            s = u * u + v * v;
        } while (s >= 1.0 || s == 0.0);

        s = sqrt(-2.0 * log(s) / s);
        spare = v * s;
        return mean + std_dev * (u * s);
    }

    // update the weights for the links between the input and output layers
    //  nCol equals number of inputs' node
    //  nRow equals number of outputs' node
    void Update_Weight(Weight<float> *Wt, Layer<float> oErr, Layer<float> oLayer, Layer<float> iLayer)
    {
        Weight<float>   dW("Delta Weight", iLayer.nNodes, oLayer.nNodes);
        Layer<float>    Sigmoid("Sigmoid", oLayer.nNodes);

        activation_function(&oLayer, &Sigmoid);

        for (int k=0; k<oLayer.nNodes; k++)
            for (int j=0; j<iLayer.nNodes; j++)
                dW.Wt[j][k] = lr*oErr.Nodes[k]*Sigmoid.Nodes[k]*(1.0-Sigmoid.Nodes[k])*iLayer.Nodes[j];

        for (int k=0; k<oLayer.nNodes; k++)
            for (int j=0; j<iLayer.nNodes; j++)
                Wt->Wt[j][k] += dW.Wt[j][k];

        dW._free();
        Sigmoid._free();
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

    // Destructor -------------------------------------------------------------
    ~neuralNetwork() {}
};

#endif
