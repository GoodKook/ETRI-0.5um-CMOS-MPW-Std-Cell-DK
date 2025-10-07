/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_pong_pt1_TB.cpp
Purpose: Testbench
Revision History: Sep. 2025
*******************************************************************************/
#include "sc_pong_pt1_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

//
// Cycle-Accurate Test Generator
//
void sc_pong_pt1_TB::Test_Gen()
{
    reset.write(1);
    up.write(0);
    down.write(0);

    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());

    reset.write(0);

    SDL_Event event;
    bool quit = false;

    while(!quit)
    {
        wait(hsync.posedge_event());

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
                        down.write(true);
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
                        down.write(false);
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
    }

    EXIT:
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
    sc_stop();
}
//
// Cycle-Accurate(CA) Output Monitor
//
#if defined(CA)
void sc_pong_pt1_TB::Test_Mon_CA()
{
    int     x = 0, y = 0, nHSync = 0, nVSync = 0;
    bool    _rgb;
    uint8_t R, G, B;
    
    enable.write(true);

    while(true)
    {
        while (!vsync.read())   wait(clk.posedge_event());
        while (vsync.read())    wait(clk.posedge_event());

        nHSync = 0;
        nVSync++;
        SDL_RenderPresent(renderer);

        x = y = 0;
        while(true)
        {
            wait(clk.posedge_event());

            if (p_tick.read())
            {
                _rgb = rgb.read();
                R = _rgb? 0x0F:0x00;
                G = _rgb? 0x0F:0x00;
                B = _rgb? 0x0F:0x00;
                SDL_SetRenderDrawColor(renderer, R*16, G*16, B*16, SDL_ALPHA_OPAQUE);
                SDL_RenderDrawPoint(renderer, x*2,   y*2);
                SDL_RenderDrawPoint(renderer, x*2+1, y*2);
                SDL_RenderDrawPoint(renderer, x*2,   y*2+1);
                SDL_RenderDrawPoint(renderer, x*2+1, y*2+1);
                x++;
            }
            else if (hsync.read())
            {
                while (hsync.read())    wait(clk.posedge_event());
                printf("nVSync[%d] nHSync[%d]\r", nVSync, nHSync++);
                fflush(stdout);

                x = 0;
                y++;
            }
            else if (vsync.read())
            {
                wait(3135, SC_NS);
                enable.write(false);
                wait(103073, SC_NS);   // Wait for Video refresh(Fake)
                enable.write(true);
                break;
            }
        }
    }
}
//
// System-Accurate(SA) Output Monitor
//
#elif defined(SA)
void sc_pong_pt1_TB::Test_Mon_SA()
{
    int     x = 0, y = 0, addrPixelBuff = 0;
    bool    _rgb;
    uint8_t R, G, B, Mask = 0x01;
    
    enable.write(true);

    while(true)
    {
        wait(clk.posedge_event());

        x = y = addrPixelBuff = 0;

        //printf("Start Rendering...\n");
        SDL_RenderPresent(renderer);

        while(y<64)
        {
            Mask = 0x01;
            for (int n_pack=0; n_pack<8; n_pack++)
            {
                //printf(".(%d,%d)", x, y);
                //printf("[%02X]",u_pong_pt1->PixelBuff[addrPixelBuff]);
                _rgb = (u_pong_pt1->PixelBuff[addrPixelBuff] & Mask)? true:false;
                R = _rgb? 0x0F:0x00;
                G = _rgb? 0x0F:0x00;
                B = _rgb? 0x0F:0x00;
                SDL_SetRenderDrawColor(renderer, R*16, G*16, B*16, SDL_ALPHA_OPAQUE);
                SDL_RenderDrawPoint(renderer, x*2,   y*2);
                SDL_RenderDrawPoint(renderer, x*2+1, y*2);
                SDL_RenderDrawPoint(renderer, x*2,   y*2+1);
                SDL_RenderDrawPoint(renderer, x*2+1, y*2+1);
                Mask = (uint8_t)(0x01<<n_pack);
                x++;
            }
            addrPixelBuff++;

            if (x>=128)
            {
                x = 0;
                y++;
            }
        }
    }
}
#endif

