//
// Neural Network's Weight Matrix
//  Nodes[]
// Filename: nnLayer.h
//
#ifndef __NN_LAYER_H__
#define __NN_LAYER_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

template <typename T>
class Layer
{
public:
    char    *szLayer;
    T       *Nodes;
    int     nNodes;
 
    // Constructor -----------------------------------------------------------
    Layer() {}
    Layer(const char *szName, int nNode): nNodes(nNode)
    {
        szLayer = (char*)new char[strlen(szName)];
        strcpy(szLayer, szName);

        Nodes = (T*)new T[nNodes];
    }

    void _free()
    {
        free(Nodes);
    }

    // Helper -----------------------------------------------------------------
    void print()
    {
        printf("%s[%d]:\t", szLayer, nNodes);
        for (int i=0; i<nNodes; i++)    printf("%6.2f", Nodes[i]);
        printf("\n");
    }

    // Destructor
    ~Layer() {}
};

#endif
