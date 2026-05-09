//
// Make Your Own Neural Network, Part 2
//  C++ Version of "part2_neural_network_mnist_dataset.py"
// Filename: part2_neural_network_mnist_dataset.h
// Build: g++ -o part2_neural_network part2_neural_network.cpp -lm
//
#include <limits.h> // Filename length

#include "neuralNetwork_mnist.h"


// Number of Nodes
#define N_INPUT     28*28
#define N_HIDDEN    200
#define N_FINAL     10
#define LEARN_RATE  0.1

#define TRAIN_CSV   "mnist_dataset/mnist_train_100.csv"
#define TEST_CSV    "mnist_dataset/mnist_test_10.csv"
//#define TRAIN_EPOCH 20

int main(int argc, char** argv)
{
    FILE *fpSample = fopen("Sample.csv", "a");

    char    szTrainFile[NAME_MAX];
    char    szTestFile[NAME_MAX];
    int     nEpoch = TRAIN_EPOCH;
    bool    bOnLine = false;

    if (argc==4)
    {
        strcpy(szTrainFile, argv[1]);
        strcpy(szTestFile, argv[3]);
        nEpoch = atoi(argv[2]);
    }
    else if (argc==3)
    {
        strcpy(szTrainFile, argv[1]);
        strcpy(szTestFile, "");
        nEpoch = atoi(argv[2]);
        bOnLine = true;
    }
    else
    {
        printf("\nUsage:\n");
        printf("\tneural_network_mnist <Train CSV> <Epoch> <Test CSV>\n");
        printf("\t\t-OR-\n");
        printf("\tneural_network_mnist <Train CSV> <Epoch>\n");
        printf("\n");
        printf("\tTrain CSV: %s\n", TRAIN_CSV);
        printf("\tTest CSV : %s\n", TEST_CSV);
        printf("\n");
        exit(0);
    }
    printf("\n");
    printf("\tTrain CSV: %s\n", szTrainFile);
    printf("\tEpoch    : %d\n", nEpoch);
    printf("\tTest CSV : %s\n", szTestFile);
    printf("\n");

    uint8_t nImageBuff[28*28+1];
    float   *inputs  = (float*)malloc(N_INPUT * sizeof(float));
    float   *targets = (float*)malloc(N_FINAL * sizeof(float));

    // Instantiate Neural Network
    neuralNetwork_mnist n( N_INPUT, N_HIDDEN, N_FINAL, (float)LEARN_RATE);

    printf("Neural network Config.-----------------------------------------------\n");
    printf("\tInput Nodes=%d Hiddel Nodes=%d Output Nodes=%d\n",
            n.network_inputs.nNodes, n.hidden_inputs.nNodes, n.final_inputs.nNodes );

    printf("Train(epoch=%d)------------------------------------------------------\n", nEpoch);
    printf("Train Data: %s\n", szTrainFile);
    for (int i=0; i<nEpoch; i++)
    {
        printf("Epoch=%d-------------------------------------------------------------\n", i);
        fflush(stdout);

        int nData = 1;
        while(n.ParseCSV_MNIST(szTrainFile, nData, nImageBuff))
        {
            n.Conv_Image_to_Float(nImageBuff, inputs, targets);
            fprintf(stderr,".");
            n.train(inputs, targets);
            nData++;
        }
    }

    n.Print_Network();

    int nImage = 1;

    if (bOnLine)
    {
        while(n.Capture_Image(nImageBuff))
        {
            printf("\nQuery Test %2d ---------------------------------------------------------------", nImage++);

            n.Conv_Image_to_Float(nImageBuff, inputs, targets);
            n.query(inputs, targets);
            n.print();
            printf("\nPress [SPACE] or [t]");
            fflush(stdout);

            if((nImageBuff[0]=n.Show_Charater_Image(nImage-1, nEpoch, nImageBuff))!=0xFF)
            {
                n.Conv_Image_to_Float(nImageBuff, inputs, targets);
                n.train(inputs, targets);

                fprintf(stderr, " ---> The Image trained as %d, Press [SPACE]", nImageBuff[0]);
                n.Show_Charater_Image(nImage, 1, nImageBuff);

                for (int i=0; i<28*28; i++)
                    fprintf(fpSample, "%d,", nImageBuff[i]);
                fprintf(fpSample, "%d\n", nImageBuff[28*28]);
            }
        }
    }
    else
    {
        while (n.ParseCSV_MNIST(szTestFile, nImage++, nImageBuff))
        {
            printf("\nQuery Test %2d ---------------------------------------------------------------", nImage-1);

            n.Conv_Image_to_Float(nImageBuff, inputs, targets);
            n.query(inputs, targets);
            n.print();
            printf("\nPress [SPACE]");
            fflush(stdout);

            n.Show_Charater_Image(nImage, nEpoch, nImageBuff);
        }
    }
    
    free(inputs);
    free(targets);
    fclose(fpSample);

    printf("\nBye Bye...\n");
}
