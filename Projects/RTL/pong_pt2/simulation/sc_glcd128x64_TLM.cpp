//
// Filename: sc_glcd128x64_TLM.cpp
//

#include <unistd.h>
#include "sc_glcd128x64_TLM.h"

void sc_glcd128x64_TLM::Button_Thread(void)
{
    SDL_Event event;
    bool quit = false;

    up.write(false);
    dn.write(false);
    lt.write(false);
    rt.write(false);

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
                    case SDLK_UP:
                        up.write(true);
                        break;
                    case SDLK_DOWN:
                        dn.write(true);
                        break;
                    case SDLK_LEFT:
                        lt.write(true);
                        break;
                    case SDLK_RIGHT:
                        rt.write(true);
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
                    case SDLK_UP:
                        up.write(false);
                        break;
                    case SDLK_DOWN:
                        dn.write(false);
                        break;
                    case SDLK_LEFT:
                        lt.write(false);
                        break;
                    case SDLK_RIGHT:
                        rt.write(false);
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
    while(true)
    {
        wait(p_tick.posedge_event());
        wait(p_tick.negedge_event());

        if (pixel.read())
            SDL_SetRenderDrawColor(renderer,255,255,255,SDL_ALPHA_OPAQUE);
        else
            SDL_SetRenderDrawColor(renderer,0,0,0,SDL_ALPHA_OPAQUE);

        SDL_RenderDrawPoint(renderer, cnt_p_tick%128, cnt_p_tick/128);

        cnt_p_tick++;
    }
}

void sc_glcd128x64_TLM::V_Sync_Thread(void)
{
    int nFrame = 0;

    while(true)
    {
        wait(v_sync.posedge_event());

        SDL_RenderPresent(renderer);
        cnt_p_tick = 0;

        fprintf(stderr, "Frame[%d]\r", nFrame++);
    }
}
