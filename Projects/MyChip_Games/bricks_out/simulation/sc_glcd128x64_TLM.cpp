//
// Filename: sc_glcd128x64_TLM.cpp
//

#include <unistd.h>
#include "sc_glcd128x64_TLM.h"

void sc_glcd128x64_TLM::Button_Thread(void)
{
    SDL_Event event;
    bool quit = false;

    fprintf(stderr, "\nPress [ENTER] to Start Game\n");

    btn_left.write(true);
    btn_right.write(true);

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
                    case SDLK_SPACE:
                    case SDLK_UP:
                        break;
                    case SDLK_DOWN:
                        break;
                    case SDLK_LEFT:
                        btn_left.write(false);
                        break;
                    case SDLK_RIGHT:
                        btn_right.write(false);
                        break;
                    case SDLK_RETURN:
                        game_new.write(false);
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
                    case SDLK_SPACE:
                    case SDLK_UP:
                        break;
                    case SDLK_DOWN:
                        break;
                    case SDLK_LEFT:
                        btn_left.write(true);
                        break;
                    case SDLK_RIGHT:
                        btn_right.write(true);
                        break;
                    case SDLK_RETURN:
                        game_new.write(true);
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
    while(true)
    {
        wait(v_sync.posedge_event());

        SDL_RenderPresent(renderer);
        cnt_p_tick = 0;

        fprintf(stderr, "Frame[%ld]\r", nFrame++);
    }
}

void sc_glcd128x64_TLM::Game_Over_Thread(void)
{
    while(true)
    {
        //fprintf(stderr, "Press [ENTER] to Start Game\n");
        wait(game_over.posedge_event());

        fprintf(stderr, "*** Game Over[%d/%ld] ***\r", nTry++, nFrame);
        fprintf(stderr, "\nPress [ENTER] to Continue Game\n");
    }
}

void sc_glcd128x64_TLM::Game_Complete_Thread(void)
{
    while(true)
    {
        wait(game_complete.posedge_event());

        fprintf(stderr, "*** Game Finished ***\n");
        fprintf(stderr, "Try=%d Frames=%ld\n", nTry, nFrame);
        fprintf(stderr, "Press [r] to Stop Game\n");
        nFrame = 0;
    }
}
