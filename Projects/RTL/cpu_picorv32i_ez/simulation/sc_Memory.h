/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_Memory.h
Purpose: Sync. Memory model for picorv32 CPU
            Verilog RTL available at https://github.com/YosysHQ/picorv32.git
Revision History: Feb. 2024
*******************************************************************************/
#ifndef _SC_MEMORY_H_
#define _SC_MEMORY_H_

#include <systemc.h>

SC_MODULE(sc_Memory)
{
    sc_in<bool>         clk;
    sc_out<bool>        ready;
    sc_in<bool>         valid;
    sc_in<sc_uint<32> > addr;
    sc_in<sc_uint<32> > wdata;
    sc_in<sc_uint<4> >  wstrb;
    sc_out<sc_uint<32>> rdata;

    sc_signal<bool>     bProcessing;
    void mem_Thread();
    uint32_t* mem;

    // Memory Utility
    int ReadHEX(char* Hex_Filename);
    
    SC_CTOR(sc_Memory) :   // Constructor
        clk("clk"),
        ready("ready"),
        valid("valid"),
        addr("addr"),
        wdata("wdata"),
        wstrb("wstrb"),
        rdata("rdata")
    {
        SC_THREAD(mem_Thread);
        sensitive << clk;

        mem = new uint32_t[1024*1024];  // Memory size: 1M words (000000:0FFFFF)
        memset(mem, 0x0, (1024*1024) * sizeof(uint32_t));
        
		//mem[0] = 0x3fc00093; //       li      x1,1020
		//mem[1] = 0x0000a023; //       sw      x0,0(x1)
		//mem[2] = 0x0000a103; // loop: lw      x2,0(x1)
		//mem[3] = 0x00110113; //       addi    x2,x2,1
		//mem[4] = 0x0020a023; //       sw      x2,0(x1)
		//mem[5] = 0xff5ff06f; //       j       <loop>
        
        ReadHEX((char*)"./firmware/firmware.hex");
    }

    ~sc_Memory()
    {
        delete mem;
    }
};

#endif

