//
// Filename: sc_glcd128x64.cpp
//

#include "sc_glcd128x64.h"
#include "glcd128x64_defs.h"

//#define DEBUG_MSG

void sc_glcd128x64::Renderer_Thread(void)
{
    sc_uint<8>  DataBus;
    sc_uint<6>  x0_address, y0_address, z0_address;
    sc_uint<6>  x1_address, y1_address, z1_address;
    bool        opWrite;
    bool        opInst;
    bool        opCS1, opCS2;

    SDL_Event event;

    while(true)
    {
        wait(E.value_changed_event());    //E.posedge_event() | E.negedge_event());

        // SDL QUIT event
        if (SDL_PollEvent(&event) && (event.type == SDL_QUIT))
        {
            SDL_DestroyRenderer(renderer);
            SDL_DestroyWindow(window);
            SDL_Quit();
            sc_stop();
        }

        if (E.read())   // Pos-Edge ------------------------------------------------
        {
            opWrite = RW.read()?  false:true;
            opInst  = RS.read()?  false:true;
            opCS1   = CS1.read()? false:true;
            opCS2   = CS2.read()? false:true;
        }
        else            // Neg-Edge ------------------------------------------------
        {
            if (opWrite)  // Write Operation
            {
                DataBus = DBi.read();

                if (opInst)  // Instruction Write
                {
                    switch(DataBus & 0xC0)
                    {
                        case (INST_DISPLAY & 0xC0):
                            if (!DataBus[0])        // DISPLAY OFF
                            {
                                #ifdef DEBUG_MSG
                                fprintf(stdout, "%llu: Display OFF\n", (sc_time_stamp().value()));
                                #endif
                                SDL_SetRenderDrawColor(renderer, 0, 0, 0, SDL_ALPHA_OPAQUE);
                                SDL_RenderClear(renderer);
                            }
                            else                    // DISPLAY ON
                            {
                                #ifdef DEBUG_MSG
                                fprintf(stdout, "%llu: Display ON\n", (sc_time_stamp().value()));
                                #endif
                                for(int x=0; x<64; x++)
                                {
                                    for(int y=0; y<128; y++)
                                    {
                                        int cs    = y/64;
                                        int page  = x/8;
                                        int y_pos = y%64;
                                        int x_pos = x%8;
                                        if (gMemory[cs][page][y_pos] & (0x01<<x_pos))
                                            SDL_SetRenderDrawColor(renderer, 255, 255, 255, SDL_ALPHA_OPAQUE);
                                        else
                                            SDL_SetRenderDrawColor(renderer, 0, 0, 0, SDL_ALPHA_OPAQUE);
                                        SDL_RenderDrawPoint(renderer, x, y);
                                    }
                                }
                                #ifdef DEBUG_MSG
                                fprintf(stdout, "%llu: Draw SCREEN\n", (sc_time_stamp().value()));
                                #endif
                                SDL_RenderPresent(renderer);
                            }
                            break;
                        case (INST_SET_Y_ADDRESS & 0xC0):  // SET Y_ADDRESS(X-Coordinate)
                            if (opCS1)
                            {
                                y0_address = DataBus.range(5,0);
                                #ifdef DEBUG_MSG
                                fprintf(stdout, "%llu: Set Y0 Address=%d\n", (sc_time_stamp().value()), (int)y0_address);
                                #endif
                            }
                            if (opCS2)
                            {
                                y1_address = DataBus.range(5,0);
                                #ifdef DEBUG_MSG
                                fprintf(stdout, "%llu: Set Y1 Address=%d\n", (sc_time_stamp().value()), (int)y1_address);
                                #endif
                            }
                            break;
                        case (INST_SET_X_ADDRESS & 0xC0):  // SET X_ADDRESS(Y-Coordinate)
                            if (opCS1)
                            {
                                x0_address = DataBus.range(2,0);
                                #ifdef DEBUG_MSG
                                fprintf(stdout, "%llu: Set X0 Address=%d\n", (sc_time_stamp().value()), (int)x0_address);
                                #endif
                            }
                            if (opCS2)
                            {
                                x1_address = DataBus.range(2,0);
                                #ifdef DEBUG_MSG
                                fprintf(stdout, "%llu: Set X1 Address=%d\n", (sc_time_stamp().value()), (int)x1_address);
                                #endif
                            }
                            break;
                        case (INST_SET_Z_ADDRESS & 0xC0):  // SET Z_ADDRESS(Start Line)
                            if (opCS1)
                            {
                                z0_address = DataBus.range(5,0);
                                #ifdef DEBUG_MSG
                                fprintf(stdout, "%llu: Set Z0 Address=%d\n", (sc_time_stamp().value()), (int)z0_address);
                                #endif
                            }
                            if (opCS2)
                            {
                                z1_address = DataBus.range(5,0);
                                #ifdef DEBUG_MSG
                                fprintf(stdout, "%llu: Set Z1 Address=%d\n", (sc_time_stamp().value()), (int)z1_address);
                                #endif
                            }
                            break;
                    }
                }
                else            // Data Write Operation
                {
                    if (opCS1)
                    {
                        gMemory[0][x0_address][y0_address] = DataBus;
                        #ifdef DEBUG_MSG
                        fprintf(stdout, "%llu: Write GD RAM[0][%d][%d]=%d\n", (sc_time_stamp().value()), (int)y0_address, (int)x0_address, (int)DataBus);
                        #endif
                        y0_address++;
                    }
                    if (opCS2)
                    {
                        gMemory[1][x1_address][y1_address] = DataBus;
                        #ifdef DEBUG_MSG
                        fprintf(stdout, "%llu: Write GD RAM[1][%d][%d]=%d\n", (sc_time_stamp().value()), (int)y1_address, (int)x1_address, (int)DataBus);
                        #endif
                        y1_address++;
                    }
                }
            }
            else            // Read Operation
            {
                if (opCS1)
                {
                    DBo.write((sc_uint<8>)gMemory[0][x0_address][y0_address]);
                    #ifdef DEBUG_MSG
                    fprintf(stdout, "%llu: Read GD RAM[0][%d][%d]=%d\n", (sc_time_stamp().value()), (int)y0_address, (int)x0_address, (int)gMemory[0][x0_address][y0_address]);
                    #endif
                    y0_address++;
                }
                if (opCS2)
                {
                     DBo.write((sc_uint<8>)gMemory[1][x1_address][y1_address]);
                    #ifdef DEBUG_MSG
                    fprintf(stdout, "%llu: Read GD RAM[1][%d][%d]=%d\n", (sc_time_stamp().value()), (int)y1_address, (int)x1_address, (int)gMemory[1][x1_address][y1_address]);
                    #endif
                    y1_address++;
                }
            }
        }
    }
}
