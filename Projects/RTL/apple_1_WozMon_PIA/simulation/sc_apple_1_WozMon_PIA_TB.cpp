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
void print_help()
{
    printf("CPU_6502 Keyboard/Screen server for Apple-1 Woz Monitor\n");
    printf("\t      Command           Description\n");
    printf("\t      ---------------   ------------------------------------------------------\n");
    printf("\t      [Addr]R           Runs a program starting at the specified address.\n");
    printf("\t      [Addr]:           Puts the system into a data deposit mode, starting at the given address.\n");
    printf("\t      [Addr].[Addr]     Displays memory contents from the specified address.\n");
    printf("\t      [Addr].[Addr]W    Writes bytes into a memory range.\n");
    printf("\t      [Addr].[Addr]R    Runs a program from the specified address range.\n");
    printf("\t- Test Program: Type as follows,\n");
    printf("\t      0:A9 0 AA 20 EF FF E8 8A 4C 2 0(RET)\n");
    printf("\t      0.A(RET)\n");
    printf("\t      R(RET)\n");
    printf("\t- Useful routines in monitor which can be accessed by user programs:\n");
    printf("\t    GETLINE: location FF1F, Line buffer address=$0200\n");
    printf("\t    ECHO:    location FFEF, Echo a char. in ACC register\n");
    printf("\t    PRBYTE:  location FFDC, Print one byte(HEX) in ACC register\n");
    printf("\t    PRHEX:   location FFE5, Print least 4-bit(HEX) in ACC register\n");
    printf("\t    ENTRY:   location FF00, Monitor Entry\n");
    printf("\t- Load user programs:\n");
    printf("\t    D016 : Load HEX file at ./Apple-1/program.hex\n");
    printf("\t    D018 : Load BIN file at ./Apple-1/program.bin\n");
    printf("\t    * Op-code: JSR=$20 / LDA=$A9\n");
    printf("\t               JSR $<PCH><PCL>\t; User code\n");
    printf("\t\t             JSR $FF00\t; Monitor Entry\n");
    printf("\t \'h\' - help\n");
    printf("\t\'^C\' - quit\n");
}
//
// Environment: Reset/RDY/IRQ/MNI
//
void sc_apple_1_WozMon_PIA_TB::Keyboard_Thread(void)
{
    kbhit kbd;

    kbd_rdy.write(0);

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

        // PIA; Keyboard Handshake -----------------------------------
        if (kbd._kbhit())
        {
            int ch = kbd._getch();
            //kbd._putch(ch);
            if (ch==0x0A)   ch = 0x0D;
            else if (ch=='h')
            {
                print_help();
                continue;
            }

            kbd_rdy.write(1);
            kbd_data.write((sc_uint<7>)ch);
//            fprintf(stderr, "KBD RDY");

            do {
//                fprintf(stderr, "-");
                wait(clk.posedge_event());
            } while(!kbd_ack.read());
//            fprintf(stderr, "ACK");

            kbd_rdy.write(0);
            do {
//                fprintf(stderr, ".");
                wait(clk.posedge_event());
            } while(kbd_ack.read());
//            fprintf(stderr, "DONE\n");
        }
    }
}

void sc_apple_1_WozMon_PIA_TB::Display_Thread(void)
{
    dsp_ack.write(0);

    //----------------------------------------------------------
    // Terminal
    while(true)
    {
        wait(clk.posedge_event());

        // PIA; Display Handshake -----------------------------------
        if (dsp_rdy.read())
        {
//            fprintf(stderr, "DSP RDY-");
            if ((uint8_t)dsp_data.read())
            {
                if ((uint8_t)dsp_data.read()==0x0D)
                    fprintf(stderr, "\n");
                else
                    fprintf(stderr, "%c", (uint8_t)dsp_data.read());
            }

            dsp_ack.write(1);
//            fprintf(stderr, "ACK-");
            do {
//                fprintf(stderr, "-");
                wait(clk.posedge_event());
            } while (dsp_rdy.read());

            dsp_ack.write(0);
//            fprintf(stderr, "DONE\n");
        }
    }
}

