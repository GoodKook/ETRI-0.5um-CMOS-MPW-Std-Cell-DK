//
// Make Your Own Neural Network, Part 2
//  Gentle Start with C++
// Filename: nnActivation_Func.h
//
#ifndef __NN_ACTIVATION_FUNC_H_
#define __NN_ACTIVATION_FUNC_H_

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

class Activation_Func
{
public:
    //------------------------------------------------------------------------
    // activation function is the sigmoid function
#if defined(SIGMOID)
    inline static float Sigmoid(float x) { return (1.0 / (1.0 + exp(-x))); }
#endif

    void activation_function(Layer<float> *x, Layer<float> *y)
    {
        for (int n=0; n<(x->nNodes); n++)
        {
#if defined(RELU)
            if (x->Nodes[n]>0.0)        y->Nodes[n] = 0.5*x->Nodes[n];
            else if (x->Nodes[n]<0.0)   y->Nodes[n] = 0.0001*x->Nodes[n];
            else                        y->Nodes[n] = 0.0;
#elif defined(SIGMOID)
            y->Nodes[n] = Sigmoid(x->Nodes[n]);
#else
#error "Activation Function NOT Defined!"
#endif
        }
    }

    static void del_activation_function(Layer<float> *x, Layer<float> *y)
    {
        for (int n=0; n<(x->nNodes); n++)
        {
#if defined(RELU)
            if (x->Nodes[n]>0.0)        y->Nodes[n] = 0.5;
            else if (x->Nodes[n]<0.0)   y->Nodes[n] = 0.0001;
            else                        y->Nodes[n] = 0.0;
#elif defined(SIGMOID)
            y->Nodes[n] = Sigmoid(x->Nodes[n]) * (1-Sigmoid(x->Nodes[n]));
#else
#error "Del_Activation Function NOT Defined!"
#endif
        }
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
};

#endif
