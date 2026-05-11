//
// Make Your Own Neural Network, Part 2
//  C++ Version of "part2_neural_network.py"
// Filename: part2_neural_network.h
//
#ifndef __NEURALNETWORK_H_
#define __NEURALNETWORK_H_

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "Skeleton_Code.h"

class neuralNetwork: public Skeleton_Code
{
public:
    // Constructor -----------------------------------------------------------
    neuralNetwork(int i_nodes, int h_nodes, int o_nodes, float learningrate):   // Derived Class
                    Skeleton_Code(i_nodes, h_nodes, o_nodes, learningrate)      // Base Class
    {
        // Initial Weights
        for (int row = 0; row<hnodes; row++)
            for (int col = 0; col<inodes; col++)
                wih[row][col] = gen_gaussian(0.0, 1.0/sqrt((float)(inodes)));

        for (int row = 0; row<onodes; row++)
            for (int col = 0; col<hnodes; col++)
                who[row][col] = gen_gaussian(0.0, 1.0/sqrt((float)(hnodes)));
    }

    // Query -----------------------------------------------------------------
    void query(float* inputs, float* targets)
    {
        // calculate signals into hidden layer
        dot_product(wih, inodes, hnodes, inputs, hidden_inputs);
        // calculate the signals emerging from hidden layer
        activation_function(hidden_inputs, hnodes, hidden_outputs);

        // calculate signals into final output layer
        dot_product(who, hnodes, onodes, hidden_outputs, final_inputs);
        // calculate the signals emerging from final output layer
        activation_function(final_inputs, onodes, final_outputs);

        // output layer error is the (target - actual)
        for (int i=0; i<onodes; i++)
            output_errors[i] = targets[i] - final_outputs[i];
    }

    // Train -----------------------------------------------------------------
    void train(float* inputs, float* targets)
    {
        // Forward ------------------------------------------------------------------------------
        // calculate signals into hidden layer
        dot_product(wih, inodes, hnodes, inputs, hidden_inputs);
        // calculate the signals emerging from hidden layer
        activation_function(hidden_inputs, hnodes, hidden_outputs);
        
        // calculate signals into final output layer
        dot_product(who, hnodes, onodes, hidden_outputs, final_inputs);
        // calculate the signals emerging from final output layer
        activation_function(final_inputs, onodes, final_outputs);

        // Error Calc. -------------------------------------------------------------------------
        // output layer error is the (target - actual)
        for (int i=0; i<onodes; i++)
            output_errors[i] = targets[i] - final_outputs[i];
        // hidden layer error is the output_errors, split by weights, recombined at hidden nodes
        dot_product_T(who, hnodes, onodes, output_errors, hidden_errors);

        // Update Weight ------------------------------------------------------------------------
        // update the weights for the links between the hidden and output layers
        Update_Weight(who, hnodes, onodes, output_errors, final_outputs, hidden_outputs);
        
        // update the weights for the links between the input and hidden layers
        Update_Weight(wih, inodes, hnodes, hidden_errors, hidden_outputs, inputs);
    }

    // activation function is the sigmoid function
    void activation_function(float* x, int nNodes, float* y)
    {
        for (int n=0; n<nNodes; n++)
            y[n] = (1.0 / (1.0 + exp(-x[n])));
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

    // Dot Product
    void dot_product(float** Wt, int nCol, int nRow, float* pInVect, float* pOutVect)
    {
        for (int row=0; row<nRow; row++)
        {
            pOutVect[row] = 0.0;
            for (int col=0; col<nCol; col++)
                pOutVect[row] += Wt[row][col]*pInVect[col];
        }
    }

    // Dot Product with Transposed Weight matrix
    void dot_product_T(float** Wt, int nCol, int nRow, float* pInVect, float* pOutVect)
    {
        for (int col=0; col<nCol; col++)
        {
            pOutVect[col] = 0.0;
            for (int row=0; row<nRow; row++)
                pOutVect[col] += Wt[row][col]*pInVect[row];
        }
    }

    // update the weights for the links between the input and output layers
    //  nCol equals number of inputs' node
    //  nRow equals number of outputs' node
    void Update_Weight(float** Wt, int nCol, int nRow, float* o_errors, float* outputs, float* inputs)
    {
        float*  dW = (float*)malloc(nRow * sizeof(float));

        activation_function(outputs, nRow, dW);
        for (int k=0; k<nRow; k++)
            dW[k] = o_errors[k] * dW[k] * (1.0 - dW[k]);

        // Update
        for (int j=0; j<nCol; j++)
            for (int k=0; k<nRow; k++)
                Wt[k][j] += (lr * dW[k] * inputs[j]);

        free(dW);
    }

    // Destructor -------------------------------------------------------------
    ~neuralNetwork() {}
};

#endif
