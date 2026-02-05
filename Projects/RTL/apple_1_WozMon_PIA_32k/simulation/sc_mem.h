/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_mem.h
Purpose: Sync. Memory model for Verilog-6502 CPU
Revision History: Jan. 1, 2024
*******************************************************************************/
#ifndef _SC_MEM_H_
#define _SC_MEM_H_

#include "systemc.h"
#include "kbhit.h"

#define HEX_FILE_LOAD 0xD016
#define BIN_FILE_LOAD 0xD018

#define APPLE2_TEXT 0x0400

SC_MODULE(sc_mem)
{
    sc_in<bool>             clk;    // Clock for Synchronous Memory model

    sc_in<bool>             emu_load_bin;
    sc_in<bool>             emu_load_hex;

    sc_out<bool>            emu_en; // Memory emulation
    sc_out<bool>            emu_clk;
    sc_out<bool>            emu_we;
    sc_out<sc_uint<8> >     emu_di;
    sc_in<sc_uint<8> >      emu_do;
    sc_out<sc_uint<15> >    emu_addr;

    void mem_Thread();
    kbhit       kbd;

    // Util
    int ReadHEX(char* Hex_Filename);
    int ReadBIN(char* BIN_Filename, int nOffset);

    SC_CTOR(sc_mem) :   // Constructor
        clk("clk") // Clock
    {
        SC_THREAD(mem_Thread);
        sensitive << clk;
    }

    ~sc_mem()
    {
    }
};

#endif

