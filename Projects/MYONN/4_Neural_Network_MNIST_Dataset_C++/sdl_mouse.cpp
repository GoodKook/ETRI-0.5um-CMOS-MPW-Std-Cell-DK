//
// Filename: sdl_mouse.cpp
//
#include <iostream>
#include <SDL2/SDL.h>

#define SCALE       8
#define THICKNESS   2

const int WIDTH = 28*SCALE, HEIGHT = 28*SCALE;

extern uint32_t usample[25*32]; // Un-Packed

int sdl_mouse(SDL_Window *window, SDL_Renderer *renderer)
{
    uint32_t    sample[32][32];

    for (int i=0; i<32; i++)
        for (int j=0; j<32; j++)
            sample[i][j] = 1;

    SDL_Event event;

    bool bPenDown = false;
    while ( true )
    {
        if ( SDL_PollEvent( &event ) )
        {
            if ( SDL_QUIT == event.type )
            { exit(0); break; }

            if ( SDL_MOUSEMOTION == event.type )
            {
                if (bPenDown)
                {
                    int x, y;
                    SDL_GetMouseState( &x, &y );

                    for (int i=0; i<THICKNESS; i++)
                        for (int j=0; j<THICKNESS; j++)
                            sample[y/SCALE+i][x/SCALE+j] = 0;

                    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255); // Sets the color
                    SDL_Rect myBox = {x, y, SCALE, SCALE}; // x, y, width, height
                    SDL_RenderFillRect(renderer, &myBox);
                    //SDL_RenderDrawPoint(renderer, x, y);
                    SDL_RenderPresent(renderer);
                }
            }

            if ( SDL_MOUSEBUTTONDOWN == event.type )
            {
                if ( SDL_BUTTON_LEFT == event.button.button )
                {
                    std::cout << "Left mouse button is down" << std::endl;
                    bPenDown = true;
                }
                else if ( SDL_BUTTON_RIGHT == event.button.button )
                {
                    std::cout << "Right mouse button is down" << std::endl;
                    break;
                }
                else if ( SDL_BUTTON_MIDDLE == event.button.button )
                { std::cout << "Middle mouse button is down" << std::endl; }
            }

            if ( SDL_MOUSEBUTTONUP == event.type )
            {
                if ( SDL_BUTTON_LEFT == event.button.button )
                {
                    std::cout << "Left mouse button is up" << std::endl;
                    bPenDown = false;
                }
                else if ( SDL_BUTTON_RIGHT == event.button.button )
                { std::cout << "Right mouse button is up" << std::endl; }
                else if ( SDL_BUTTON_MIDDLE == event.button.button )
                { std::cout << "Middle mouse button is up" << std::endl; }
            }

            if ( SDL_MOUSEWHEEL == event.type )
            {
                if ( event.wheel.y > 0 ) // scroll up
                { std::cout << "Mouse wheel is scrolling up" << std::endl; }
                else if ( event.wheel.y < 0 ) // scroll down
                { std::cout << "Mouse wheel is scrolling down" << std::endl; }

                if ( event.wheel.x > 0 ) // scroll right
                { std::cout << "Mouse wheel is scrolling right" << std::endl; }
                else if ( event.wheel.x < 0 ) // scroll left
                { std::cout << "Mouse wheel is scrolling left" << std::endl; }
            }

            if ( SDL_KEYDOWN == event.type )
            {
                //std::cout << "Key is down" << std::endl;

                if ( SDLK_a == event.key.keysym.sym )
                { std::cout << "A is down - Move left" << std::endl; }
                else if ( SDLK_s == event.key.keysym.sym )
                { std::cout << "S is down - Move down" << std::endl; }
                else if ( SDLK_d == event.key.keysym.sym )
                { std::cout << "D is down - Move right" << std::endl; }
                else if ( SDLK_w == event.key.keysym.sym )
                { std::cout << "W is down - Move up" << std::endl; }
            }
            else if ( SDL_KEYUP == event.type )
            {
                //std::cout << "Key is up" << std::endl;
                if ( SDLK_a == event.key.keysym.sym )
                { std::cout << "A is up - Stop moving left" << std::endl; }
                else if ( SDLK_s == event.key.keysym.sym )
                { std::cout << "S is up - Stop moving down" << std::endl; }
                else if ( SDLK_d == event.key.keysym.sym )
                { std::cout << "D is up - Stop moving right" << std::endl; }
                else if ( SDLK_w == event.key.keysym.sym )
                { std::cout << "W is up - Stop moving up" << std::endl; }
            }
        }
    }

    SDL_DestroyWindow( window );
    SDL_Quit( );

    int k = 0;
    for (int y=0; y<28; y++)
    {
        for (int x=0; x<28; x++)
        {
            if (sample[y][x])   { printf("1"); usample[k] = 1; }
            else                { printf("0"); usample[k] = 0; }
            k++;
        }
        printf("\n");
    }

    for (int i=0; i<16; i++)    usample[k++] = 0;

    return EXIT_SUCCESS;
}
