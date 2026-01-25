/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_apple_1_WozMon_PIA_TB.cpp
Purpose: Testbench
Revision History: Sep. 2025
*******************************************************************************/
#include "sc_apple_1_WozMon_PIA_TB.h"
#include "kbhit.h"
//
// Environment: Reset/RDY/IRQ/MNI
//
void sc_apple_1_WozMon_PIA_TB::reset_generator(void)
{
    kbhit kbd;

    kbd_rdy.write(0);
    dsp_ack.write(0);

    IRQ.write(0);
    NMI.write(0);
    RDY.write(0);
    reset.write(1);
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    RDY.write(1);
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.negedge_event());  // avoid setup violation when timing sim.
    reset.write(0);

    //----------------------------------------------------------
    // Terminal
    while(true)
    {
        wait(clk.posedge_event());
        if (dsp_rdy.read())
        {
            if ((uint8_t)dsp_data.read())
            {
                if ((uint8_t)dsp_data.read()==0x0D)
                    fprintf(stderr, "\n");
                else
                    fprintf(stderr, "%c", (uint8_t)dsp_data.read());
            }
            dsp_ack.write(1);
            wait(clk.posedge_event());
            dsp_ack.write(0);
            while (dsp_rdy.read())  wait(clk.posedge_event());
        }
        if (kbd._kbhit())
        {
            int ch = kbd._getch();
            //kbd._putch(ch);
            if (ch==0x0A)   ch = 0x0D;

            while(kbd_ack.read())    wait(clk.posedge_event());
            kbd_rdy.write(1);
            kbd_data.write((sc_uint<7>)ch);
            wait(clk.posedge_event());
            kbd_rdy.write(0);
        }
    }
}

