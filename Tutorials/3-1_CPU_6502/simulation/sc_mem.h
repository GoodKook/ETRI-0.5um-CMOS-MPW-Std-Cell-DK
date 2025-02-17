/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_mem.h
Purpose: Sync. Memory model for Verilog-6502 CPU
Revision History: Jan. 1, 2024
*******************************************************************************/
#ifndef _SC_MEM_H_
#define _SC_MEM_H_

#include "systemc.h"
#include <unistd.h>     // sleep()

// Select ROM image
#define APPLE1_WOZ
//#define APPLE2_ROM

//#define KEYBOARD_SEQUENCE

#define PIA_KBD_REG 0xD010
#define PIA_KBD_CTL 0xD011
#define PIA_DSP_REG 0xD012
#define PIA_DSP_CTL 0xD013

#define KEYBOARD_LOAD 0xD014
#define HEX_FILE_LOAD 0xD016
#define BIN_FILE_LOAD 0xD018

#define APPLE2_TEXT 0x0400

SC_MODULE(sc_mem)
{
    sc_in<bool>         clk;    // Clock for Synchronous Memory model
    sc_in<uint32_t>     AB;     // Address Bus
    sc_in<uint32_t>     DI;     // Data In
    sc_out<uint32_t>    DO;     // Data Out
    sc_in<bool>         WE;     // Write Enable

    void mem_Thread();
    uint32_t* mem;

    // Util
    int ReadHEX(char* Hex_Filename);
    int ReadBIN(char* BIN_Filename, int nOffset);
    int ReadKEY_Seq(char* Keyboard_Filename, int nLines);

    SC_CTOR(sc_mem) :   // Constructor
        clk("clk"),
        AB("AB"),
        DI("DI"),
        DO("DO"),
        WE("WE")
    {
        SC_THREAD(mem_Thread);
        sensitive << clk;

        mem = new uint32_t[65536];
        // Memory Init.
        for (int i = 0; i < 65536; i++)
            mem[i] = 0x00;

#if defined(APPLE2_ROM)
        ReadBIN((char*)"APPLE2.ROM", 0xC000);
#elif defined(APPLE1_WOZ)
        ReadBIN((char*)"./Apple-1/wozmon.bin", 0xFF00);
#else
        cout << "NO ROM Loaded" << endl;
#endif
    }

    ~sc_mem()
    {
        delete mem;
    }
};

#endif

