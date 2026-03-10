//
// Filename: sc_glcd128x64_TLM.cpp
//

#include <unistd.h>
#include "sc_glcd128x64_TLM.h"

void sc_glcd128x64_TLM::Display_Thread(void)
{
    int x, y;

    busy.write(false);

    while(true)
    {
        // SDL QUIT event
        if (SDL_PollEvent(&event) && (event.type == SDL_QUIT))
        {
            SDL_DestroyRenderer(renderer);
            SDL_DestroyWindow(window);
            SDL_Quit();
            sc_stop();
        }

        wait(p_tick.posedge_event());

        busy.write(true);

        wait(p_tick.negedge_event());

        x = x_pos.read();
        y = y_pos.read();
        if (pixel.read())
            SDL_SetRenderDrawColor(renderer,255,255,255,SDL_ALPHA_OPAQUE);
        else
            SDL_SetRenderDrawColor(renderer,0,0,0,SDL_ALPHA_OPAQUE);

        SDL_RenderDrawPoint(renderer, x, y);

        if (x==127 && y==63)
            SDL_RenderPresent(renderer);                

        busy.write(false);
    }
}
