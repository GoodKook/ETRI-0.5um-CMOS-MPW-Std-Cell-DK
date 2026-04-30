//
// Gentle start of C++
// Filename: plotting_arrays.cpp
//
#include <stdio.h>
#include <stdlib.h>
#include <SDL2/SDL.h>
#include <unistd.h> // sleep()

#define N_COLS  3
#define N_ROWS  5

#define SCALE  100

void Draw_Arrays(SDL_Renderer* renderer)
{
    // Draw Array of Box with random color
    SDL_Rect rect;
    rect.x = 0;  // X position
    rect.y = 0;  // Y position
    rect.w = SCALE; // Width
    rect.h = SCALE; // Height

    for (int row=0; row<N_ROWS; row++)
    {
        for (int col=0; col<N_COLS; col++)
        {
            SDL_SetRenderDrawColor(renderer, (rand() % 256), (rand() % 256), (rand() % 256),SDL_ALPHA_OPAQUE);
            SDL_RenderFillRect(renderer, &rect);
            rect.x += SCALE;  // X position
        }
        rect.x = 0;
        rect.y += SCALE;  // Y position
    }
    SDL_RenderPresent(renderer);                
}

int main()
{
    // SDL2--------------------------
    SDL_Window*     window = NULL;
    SDL_Renderer*   renderer = NULL;
    SDL_Event       event;

    if (SDL_Init(SDL_INIT_VIDEO) < 0)
    {
        fprintf(stderr, "SDL Initialization Fail: %s\n", SDL_GetError());
        return -1;
    }

    window = SDL_CreateWindow("Plotting Arrays",
                              SDL_WINDOWPOS_UNDEFINED,
                              SDL_WINDOWPOS_UNDEFINED,
                              N_COLS*SCALE, N_ROWS*SCALE,
                              SDL_WINDOW_SHOWN);
    if (!window)
    {
        fprintf(stderr, "SDL Initialization Fail: %s\n", SDL_GetError());
        SDL_Quit();
        return -1;
    }

    SDL_SetWindowResizable(window, SDL_FALSE);
    renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);

    // Draw Array of Box with random color
    SDL_Rect rect;
    rect.x = 0;  // X position
    rect.y = 0;  // Y position
    rect.w = SCALE; // Width
    rect.h = SCALE; // Height

    srand(SDL_GetTicks()); // Use SDL's timer as a seed
    Draw_Arrays(renderer);

    // Event Loop
    bool quit = false;

    while(!quit)
    {
        if (SDL_PollEvent(&event))
        {
            switch (event.type)
            {
                case SDL_QUIT:
                    quit = true;
                    break;
                case SDL_KEYDOWN:
                    switch( event.key.keysym.sym )
                    {
                        case SDLK_SPACE:
                            Draw_Arrays(renderer);
                            break;
                        default:
                            break;
                    }
                    break;
                case SDL_KEYUP:
                    switch( event.key.keysym.sym )
                    {
                        case SDLK_SPACE:
                            SDL_RenderPresent(renderer);
                            break;
                        default:
                            break;
                    }
                    break;
                default:
                    break;
            }
        }
    }

    EXIT:
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}
