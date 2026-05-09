//
// Make Your Own Neural Network, Part 2
//  C++ Version of "part2_neural_network_mnist_dataset.py"
// Filename: part2_neural_network_mnist_dataset.h
//
#ifndef __NEURALNETWORK_MNIST_H_
#define __NEURALNETWORK_MNIST_H_

#include "neuralNetwork.h"

#include <stdint.h>
#include <cstring>
#include <unistd.h> // sleep()
#include <SDL2/SDL.h>

#define SIZE_OF_BOX     10
#define IMAGE_THRESHOLD 100

class neuralNetwork_mnist: public neuralNetwork
{
    // SDL2-----------------------------------------------------------------
    SDL_Window*     window = NULL;
    SDL_Renderer*   renderer = NULL;
    SDL_Surface*    surface = NULL;
    SDL_Event       event;
public:
    // Constructor -----------------------------------------------------------
    neuralNetwork_mnist(int i_nodes, int h_nodes, int o_nodes, float learningrate):     // Derived Class
                            neuralNetwork(i_nodes, h_nodes, o_nodes, learningrate)      // Base Class
    {
        // SDL2-----------------------------------------------------------------
        if (SDL_Init(SDL_INIT_VIDEO) < 0)
        {
            fprintf(stderr, "SDL Initialization Fail: %s\n", SDL_GetError());
            exit(-1);
        }

        window = SDL_CreateWindow("Plotting Data",
                                  SDL_WINDOWPOS_UNDEFINED,
                                  SDL_WINDOWPOS_UNDEFINED,
                                  28*SIZE_OF_BOX, 28*SIZE_OF_BOX,
                                  SDL_WINDOW_SHOWN);
        if (!window)
        {
            fprintf(stderr, "SDL Initialization Fail: %s\n", SDL_GetError());
            SDL_Quit();
            exit(-1);
        }

        SDL_SetWindowResizable(window, SDL_FALSE);
        renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);

        surface = SDL_GetWindowSurface(window);
        if (surface == NULL)
        {
            fprintf(stderr, "SDL_GetWindowSurface failed: %s\n", SDL_GetError());
            exit(1);
        }
    }

    void Print_Network()
    {
        wih.print();
        who.print();

        network_inputs.print();

        hidden_inputs.print();
        hidden_outputs.print();
        hidden_errors.print();

        final_inputs.print();
        final_outputs.print();
        final_errors.print();

        fflush(stdout);
    }

    // CSV to Image ------------------------------------------------------------
    bool ParseCSV_MNIST(const char* FileName, int nLine, uint8_t* image)
    {
        FILE    *fp;
        char    *line = NULL;
        size_t  len = 0;
        ssize_t read;

        fp = fopen(FileName, "r");
        if (fp == NULL)
        {
            printf("Error Opening CSV file\n");
            return false;
        }


        do { nLine--; } while (((read = getline(&line, &len, fp)) != -1) && (nLine>0));
        if (nLine!=0)
        {
            printf("Line NOT found\n");
            return false;
        }

        char buff[8];
        int k=0;
        for (int j=0, i=0; i<strlen(line); i++)
        {
            if (line[i]>=0x30 && line[i]<= 0x39)
                buff[j++] = line[i];
            else if (line[i]==',' || line[i]=='\n')
            {
                buff[j] = 0x00;
                image[k++] = (uint8_t)atoi(buff);
                j = 0;
                if (k>(28*28+1))    break;
            }
        }

        free(line);
        fclose(fp);

        if (k!=(28*28+1))   return false;
        return true;
    }

    // Capture Image On-Line ---------------------------------------------------------
    bool Capture_Image(uint8_t* image)
    {
        SDL_Rect    myBox = {0, 0, 0, 0};
        bool        bPenDown = false;

        uint32_t    sample[28][28];
        for (int i=0; i<28; i++)
            for (int j=0; j<28; j++)
                sample[i][j] = 0;

        // Initialize window to all black
        SDL_FillRect(surface, NULL, SDL_MapRGB(surface->format, 0, 0, 0));
        SDL_UpdateWindowSurface(window);

        while ( true )
        {
            if (SDL_PollEvent( &event ))
            {
                switch (event.type)
                {
                    case SDL_QUIT:
                        return false;        //Terminate App
                        break;
                    case SDL_MOUSEBUTTONDOWN:
                        if (event.button.button == SDL_BUTTON_LEFT) bPenDown = true;
                        break;
                    case SDL_MOUSEBUTTONUP:
                        if (event.button.button == SDL_BUTTON_LEFT) bPenDown = false;
                        else if (event.button.button == SDL_BUTTON_RIGHT)
                        {
                            image[0] = 0xFF;
                            for (int k=1, y=0; y<28; y++)
                            {
                                for (int x=0; x<28; x++)
                                {
                                    image[k++] = sample[y][x];
                                }
                            }
                            fflush(stdout);
                            return true;
                        }
                        break;
                    case SDL_MOUSEMOTION:
                        if (bPenDown)
                        {
                            int x = event.motion.x;
                            int y = event.motion.y;

                            sample[y/SIZE_OF_BOX][x/SIZE_OF_BOX] = 255;
                            if (!sample[y/SIZE_OF_BOX-1][x/SIZE_OF_BOX-1])
                                sample[y/SIZE_OF_BOX-1][x/SIZE_OF_BOX-1] = rand()%IMAGE_THRESHOLD+IMAGE_THRESHOLD/2;
                            if (!sample[y/SIZE_OF_BOX-1][x/SIZE_OF_BOX-0])
                                sample[y/SIZE_OF_BOX-1][x/SIZE_OF_BOX+0] = rand()%IMAGE_THRESHOLD+IMAGE_THRESHOLD/2;
                            if (!sample[y/SIZE_OF_BOX-1][x/SIZE_OF_BOX+1])
                                sample[y/SIZE_OF_BOX-1][x/SIZE_OF_BOX+1] = rand()%IMAGE_THRESHOLD+IMAGE_THRESHOLD/2;
                            if (!sample[y/SIZE_OF_BOX-0][x/SIZE_OF_BOX-1])
                                sample[y/SIZE_OF_BOX-0][x/SIZE_OF_BOX-1] = rand()%IMAGE_THRESHOLD+IMAGE_THRESHOLD/2;
                            if (!sample[y/SIZE_OF_BOX-0][x/SIZE_OF_BOX+1])
                                sample[y/SIZE_OF_BOX-0][x/SIZE_OF_BOX+1] = rand()%IMAGE_THRESHOLD+IMAGE_THRESHOLD/2;
                            if (!sample[y/SIZE_OF_BOX+1][x/SIZE_OF_BOX-1])
                                sample[y/SIZE_OF_BOX+1][x/SIZE_OF_BOX-1] = rand()%IMAGE_THRESHOLD+IMAGE_THRESHOLD/2;
                            if (!sample[y/SIZE_OF_BOX+1][x/SIZE_OF_BOX+0])
                                sample[y/SIZE_OF_BOX+1][x/SIZE_OF_BOX+0] = rand()%IMAGE_THRESHOLD+IMAGE_THRESHOLD/2;
                            if (!sample[y/SIZE_OF_BOX+1][x/SIZE_OF_BOX+1])
                                sample[y/SIZE_OF_BOX+1][x/SIZE_OF_BOX+1] = rand()%IMAGE_THRESHOLD+IMAGE_THRESHOLD/2;

                            myBox = {x, y, SIZE_OF_BOX, SIZE_OF_BOX};  // x, y, width, height
                            SDL_FillRect(surface, (const SDL_Rect *)&myBox, SDL_MapRGB(surface->format, 255, 255, 255));
                            SDL_UpdateWindowSurface(window);
                        }
                        break;
                    default:
                        break;
                }

            }
            else
            {
                usleep(100);
            }
        }
    }

    bool Conv_Image_to_Float(uint8_t* nImage, float* fInput, float* fTarget)
    {
        // scale and shift the inputs
        for (int i=0; i<(28*28); i++)
            fInput[i] = ((float)nImage[i+1] / 255.0 * 0.99) + 0.01;
        
        // target
        for (int i=0; i<10; i++)
            fTarget[i] = 0.0;

        if (nImage[0]>=0 && nImage[0]<=9)
            fTarget[(int)nImage[0]] = 0.99;

        return true;
    }

    uint8_t Show_Charater_Image(int nImage, int nEpoch, uint8_t* ImageBuff)    // 28*28+1
    {
        char szTitle[64];
        sprintf(szTitle, "%d:Data [%d](Epoch=%d)", nImage, ImageBuff[0], nEpoch);
        SDL_SetWindowTitle(window, szTitle);

        // Draw Array of Box with random color
        SDL_Rect rect;
        rect.x = 0;  // X position
        rect.y = 0;  // Y position
        rect.w = SIZE_OF_BOX; // Width
        rect.h = SIZE_OF_BOX; // Height
        for (int n=1, row=0; row<28; row++)
        {
            for (int col=0; col<28; col++)
            {
                SDL_SetRenderDrawColor(renderer, ImageBuff[n], ImageBuff[n], ImageBuff[n],SDL_ALPHA_OPAQUE);
                SDL_RenderFillRect(renderer, &rect);
                rect.x += SIZE_OF_BOX;  // X position
                n++;
            }
            rect.x = 0;
            rect.y = SIZE_OF_BOX*(n/28);  // Y position
        }
    
        SDL_RenderPresent(renderer);                

        // Wait for SPACE Key to continue --------------------------------------------------------------
        while(true)
        {
            if(SDL_PollEvent(&event))
            {
                switch (event.type)
                {
                    case SDL_QUIT:
                        exit(1);
                        break;
                    case SDL_KEYDOWN:
                        switch( event.key.keysym.sym )
                        {
                            case SDLK_SPACE:
                                break;
                            default:
                                break;
                        }
                        break;
                    case SDL_KEYUP:
                        char ch;
                        switch( event.key.keysym.sym )
                        {
                            case SDLK_SPACE:
                                return(0xFF);
                                break;
                            case SDLK_t:
                                fprintf(stderr,"\nTrain?[0...9]");
                                break;
                            case SDLK_0:    ch = '0';   fprintf(stderr, "%c", ch);  return 0;   break;
                            case SDLK_1:    ch = '1';   fprintf(stderr, "%c", ch);  return 1;   break;
                            case SDLK_2:    ch = '2';   fprintf(stderr, "%c", ch);  return 2;   break;
                            case SDLK_3:    ch = '3';   fprintf(stderr, "%c", ch);  return 3;   break;
                            case SDLK_4:    ch = '4';   fprintf(stderr, "%c", ch);  return 4;   break;
                            case SDLK_5:    ch = '5';   fprintf(stderr, "%c", ch);  return 5;   break;
                            case SDLK_6:    ch = '6';   fprintf(stderr, "%c", ch);  return 6;   break;
                            case SDLK_7:    ch = '7';   fprintf(stderr, "%c", ch);  return 7;   break;
                            case SDLK_8:    ch = '8';   fprintf(stderr, "%c", ch);  return 8;   break;
                            case SDLK_9:    ch = '9';   fprintf(stderr, "%c", ch);  return 9;   break;
                            default:
                                break;
                        }
                        break;
                    default:
                        break;
                }
            }
            else
                usleep(100);
        }

        return 0xFF;
    }

    // Destructor -------------------------------------------------------------
    ~neuralNetwork_mnist()
    {
        SDL_DestroyRenderer(renderer);
        SDL_DestroyWindow(window);
        SDL_Quit();
    }
};

#endif
