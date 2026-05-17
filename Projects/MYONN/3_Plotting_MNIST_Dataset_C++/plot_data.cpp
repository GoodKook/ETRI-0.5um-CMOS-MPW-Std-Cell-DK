//
// Plot hand written image with CSV(Comma Separated Value)
// Filename: plot_data.cpp
//

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <SDL2/SDL.h>
#include <unistd.h> // sleep()
#include <string.h>

#define CSV_FILENAME    "mnist_dataset/mnist_test_10.csv"
#define SIZE_OF_BOX     10

bool ParseCSV_MNIST(char* FileName, int nLine, uint8_t* image)
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
    else                return true;
}

bool Draw_Charater( const char* Filename, SDL_Renderer* renderer, SDL_Window* window, int nImage)
{
    uint8_t image[28*28+1];
    if(!ParseCSV_MNIST((char*)CSV_FILENAME, nImage, image)) // CSV to Image
        return false;

    char szTitle[32];
    sprintf(szTitle, "%d-th Data [%d]", nImage, image[0]);
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
            SDL_SetRenderDrawColor(renderer, image[n], image[n], image[n],SDL_ALPHA_OPAQUE);
            SDL_RenderFillRect(renderer, &rect);
            rect.x += SIZE_OF_BOX;  // X position
            n++;
        }
        rect.x = 0;
        rect.y = SIZE_OF_BOX*(n/28);  // Y position
    }
 
    SDL_RenderPresent(renderer);                
    return true;
}

int main()
{
    // SDL2-----------------------------------------------------------------
    SDL_Window*     window = NULL;
    SDL_Renderer*   renderer = NULL;
    SDL_Event       event;

    fprintf(stderr, "Plottig MNIST dataset. Use Arrow keys.....");
    
    if (SDL_Init(SDL_INIT_VIDEO) < 0)
    {
        fprintf(stderr, "SDL Initialization Fail: %s\n", SDL_GetError());
        return -1;
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
        return -1;
    }

    SDL_SetWindowResizable(window, SDL_FALSE);
    renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);

    // Event Loop --------------------------------------------------------------
    uint8_t image[28*28+1];
    int     nImage = 1;
    bool    quit = false;

    while(!quit)
    {
        if(SDL_PollEvent(&event))
        {
            switch (event.type)
            {
                case SDL_QUIT:
                    quit = true;
                    break;
                case SDL_KEYDOWN:
                    switch( event.key.keysym.sym )
                    {
                        case SDLK_ESCAPE:
                            quit = true;
                            break;
                        case SDLK_UP:
                        case SDLK_LEFT:
                            //nImage--;
                            break;
                        case SDLK_DOWN:
                        case SDLK_RIGHT:
                            //nImage++;
                            break;
                        default:
                            break;
                    }
                    break;
                case SDL_KEYUP:
                    switch( event.key.keysym.sym )
                    {
                        case SDLK_UP:
                        case SDLK_LEFT:
                            if (Draw_Charater( CSV_FILENAME, renderer, window, nImage))
                                nImage--;
                            else
                                quit = true;
                            break;
                        case SDLK_DOWN:
                        case SDLK_RIGHT:
                            if (Draw_Charater( CSV_FILENAME, renderer, window, nImage))
                                nImage++;
                            else
                                quit = true;
                            break;
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

    EXIT:
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}
