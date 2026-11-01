//
// Filename: sc_keyboard.cpp
//

#include <unistd.h>
#include "sc_keyboard.h"

void sc_keyboard::Button_Thread(void)
{
    SDL_Event event;
    bool quit = false;

    btn_left.write(false);
    btn_right.write(false);
    btn_fire.write(false);

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
                std::cout << "Key pressed: " << SDL_GetKeyName(event.key.keysym.sym) << std::endl;
                switch( event.key.keysym.sym )
                {
                    case SDLK_LEFT:
                        btn_left.write(true);
                        break;
                    case SDLK_RIGHT:
                        btn_right.write(true);
                        break;
                    case SDLK_SPACE:
                        btn_fire.write(true);
                        break;
                    case SDLK_r:
                        goto EXIT;
                        break;
                    default:
                        break;
                }
                //SDL_FlushEvents(SDL_KEYDOWN, SDL_KEYUP);
                break;
            case SDL_KEYUP:
                std::cout << "Key released: " << SDL_GetKeyName(event.key.keysym.sym) << std::endl;
                switch( event.key.keysym.sym )
                {
                    case SDLK_LEFT:
                        btn_left.write(false);
                        break;
                    case SDLK_RIGHT:
                        btn_right.write(false);
                        break;
                    case SDLK_SPACE:
                        btn_fire.write(false);
                        break;
                    default:
                        break;
                }
                //SDL_FlushEvents(SDL_KEYDOWN, SDL_KEYUP);
                break;
            default:
                break;
            }
        }
        else
            wait(100, SC_NS);
    }

    EXIT:
    SDL_Quit();
    sc_stop();
}

