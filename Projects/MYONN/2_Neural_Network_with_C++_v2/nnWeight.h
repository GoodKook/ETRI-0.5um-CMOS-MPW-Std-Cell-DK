//
// Neural Network's Weight Matrix
//  Wt[From][To]
// Filename: nnWeight.h
//
#ifndef __NN_WEIGHT_H__
#define __NN_WEIGHT_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

template <typename T>
class Weight
{
public:
    char    *szWt;
    T       **Wt;
    int     nFrom, nTo;
 
    // Constructor -----------------------------------------------------------
    Weight() {}
    Weight(const char *szName, int nFromLayer, int nToLayer):
        nFrom(nFromLayer), nTo(nToLayer)
    {
        szWt = (char*)new char[strlen(szName)];
        strcpy(szWt, szName);

        Wt = (T**)new T*[nFrom];        // From-Layer
        for (int i = 0; i < nFrom; i++)
            Wt[i] = (T*)new T[nTo];     // To-Layer
    }

    // Matrix operation -------------------------------------------------------
    void transpose()  // Transpose
    {
        T **_Wt;
        int _nFrom = nTo, _nTo = nFrom;
        _Wt = (T**)new T*[_nFrom];      // From-Layer
        for (int i = 0; i < _nFrom; i++)
            _Wt[i] = (T*)new T[_nTo];   // To-Layer

        for (int i=0; i<nFrom; i++)
            for (int j=0; j<nTo; j++)
                _Wt[j][i] = Wt[i][j];

        for (int i = 0; i < nFrom; i++)   free(Wt[i]);
        free(Wt);

        nFrom = _nFrom;
        nTo   = _nTo;
        Wt    = _Wt;
    }

    void dot_product(T* iVector, T* oVector)
    {
        for (int i=0; i<nTo; i++)
        {
            oVector[i] = (T)0;
            for (int j=0; j<nFrom; j++)
                oVector[i] += (Wt[j][i] * iVector[j]);
        }
    }

    void _free()
    {
        for (int i = 0; i < nFrom; i++) free(Wt[i]);
        free(Wt);
    }

    // Helper -----------------------------------------------------------------
    void print()
    {
        printf("%s[%d][%d]: Nodes on From-Layer=%d, To-Layer=%d\n",
                                        szWt, nFrom, nTo, nFrom, nTo);
        for (int j=0; j<nTo; j++)
        {
            for (int i=0; i<nFrom; i++)
            {
                printf("%6.2f", Wt[i][j]);
            }
            printf("\n");
        }
    }

    // Destructor
    ~Weight() {}
};

#endif
