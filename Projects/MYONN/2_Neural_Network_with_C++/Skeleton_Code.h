//
// Make Your Own Neural Network, Part 2
//  C++ Version of "Skeleton_Code.py"
// Filename: Skeleton_Code.h
//
#ifndef __SKELETON_CODE_H_
#define __SKELETON_CODE_H_

#include <stdio.h>
#include <stdlib.h>

class Skeleton_Code
{
public:
    int     inodes, hnodes, onodes;
    float   lr;
    float   **wih, **who;
    float   *hidden_inputs, *hidden_outputs;
    float   *final_inputs, *final_outputs;
    float   *hidden_errors, *output_errors;

    // Constructor -----------------------------------------------------------
    Skeleton_Code(int i_nodes, int h_nodes, int o_nodes, float learningrate)
    {
        // set number of nodes in each input, hidden, output layer
        inodes = i_nodes;
        hnodes = h_nodes;
        onodes = o_nodes;
        lr = learningrate;

        // link weight matrices, wih and who
        //  weights inside the arrays are w_i_j,
        //  where link is from node i to node j in the next layer
        //      w11 w21
        //      w12 w22 etc

        wih = (float**)malloc(hnodes*sizeof(float*));           // Rows
        for (int row = 0; row < hnodes; row++)
            wih[row] = (float*)malloc(inodes * sizeof(float));  // Cols

        who = (float**)malloc(onodes * sizeof(float*));         // Rows
        for (int row = 0; row < onodes; row++)
            who[row] = (float*)malloc(hnodes * sizeof(float));  // Cols

        // Hidden Layer's Nodes
        hidden_inputs  = (float*)malloc(hnodes * sizeof(float));
        hidden_outputs = (float*)malloc(hnodes * sizeof(float));

        // Final Layer's Nodes
        final_inputs  = (float*)malloc(onodes * sizeof(float));
        final_outputs = (float*)malloc(onodes * sizeof(float));

        // Errors
        hidden_errors = (float*)malloc(hnodes * sizeof(float));
        output_errors = (float*)malloc(onodes * sizeof(float));
    }

    // Query -----------------------------------------------------------------
    virtual void query(float* inputs, float* targets) = 0;

    // Train -----------------------------------------------------------------
    virtual void train(float* inputs, float* targets) = 0;

    // Helper functions ------------------------------------------------------
    void Print_Weight(float **Wt, int fromNodes, int toNodes)
    {
        for (int row=0; row<toNodes; row++)
        {
            for (int col=0; col<fromNodes; col++)
                printf("%6.3f ", Wt[row][col]);
            printf("\n");
        }
    }

    void Print_Layer(float* pLayer, int nNodes)
    {
        float   fMax = 0.0;
        int     nMax = -1;

        for (int n=0; n<nNodes; n++)
        {
            if (pLayer[n]>=fMax)
            {
                fMax = pLayer[n];
                nMax = n;
            }
        }

        for (int n=0; n<nNodes; n++)
        {
            if (nMax>=0 && nMax==n)
                printf("[%5.3f]", pLayer[n]);
            else
                printf(" %5.3f ", pLayer[n]);
        }
        printf("\n");
    }

    void Print_Error(float* pLayer, int nNodes)
    {
        for (int n=0; n<nNodes; n++)
            printf("%6.3f ", pLayer[n]);
        printf("\n");
    }

    void Print_Network(float* inputs, float* targets)
    {
        printf("Weight matrix from input layer to hidden layer:\n");
        Print_Weight(wih, inodes, hnodes);
        printf("Weight matrix from hidden layer to output layer:\n");
        Print_Weight(who, hnodes, onodes);

        printf("Input:\n");
        Print_Layer(inputs, inodes);

        printf("Target:\n");
        Print_Layer(targets, onodes);

        printf("Hidden Input:\n");
        Print_Layer(hidden_inputs, hnodes);
        printf("Hidden Output:\n");
        Print_Layer(hidden_outputs, hnodes);

        printf("Final Input:\n");
        Print_Layer(final_inputs, onodes);
        printf("Final Output:\n");
        Print_Layer(final_outputs, onodes);

        printf("Output Error:\n");
        Print_Error(output_errors, onodes);

        printf("Hidden Error:\n");
        Print_Error(hidden_errors, hnodes);
    }

    // Destructor ------------------------------------------------------------
    ~Skeleton_Code()
    {
        free(hidden_inputs);
        free(hidden_outputs);
        free(final_inputs);
        free(final_outputs);
        free(hidden_errors);
        free(output_errors);
        for (int row = 0; row < hnodes; row++)  free(wih[row]);
        free(wih);
        for (int row = 0; row < onodes; row++)  free(who[row]);
        free(who);
    }
};

#endif
