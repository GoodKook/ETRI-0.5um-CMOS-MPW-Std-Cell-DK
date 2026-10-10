//
// Filename: sc_glcd128x64_TLM.cpp
//

#include <unistd.h>
#include "sc_glcd128x64_TLM.h"

void sc_glcd128x64_TLM::Button_Thread(void)
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
                //std::cout << "Key pressed: " << SDL_GetKeyName(event.key.keysym.sym) << std::endl;
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
                //std::cout << "Key released: " << SDL_GetKeyName(event.key.keysym.sym) << std::endl;
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
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
    sc_stop();
}

void sc_glcd128x64_TLM::Display_Thread(void)
{
    int x, y;

    while(true)
    {
        wait(clk.posedge_event());

        x = lcd_x.read();
        y = lcd_y.read();
        if (lcd_data.read())
            SDL_SetRenderDrawColor(renderer,255,255,255,SDL_ALPHA_OPAQUE);
        else
            SDL_SetRenderDrawColor(renderer,0,0,0,SDL_ALPHA_OPAQUE);

        SDL_RenderDrawPoint(renderer, x, y);

        if (x==127 && y==63)
            SDL_RenderPresent(renderer);                
    }
}
