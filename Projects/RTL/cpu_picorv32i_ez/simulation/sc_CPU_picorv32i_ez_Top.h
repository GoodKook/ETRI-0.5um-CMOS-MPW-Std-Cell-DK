/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_CPU_picorv32i_ez_Top.h
Purpose: Sync. Memory model for picorv32 CPU
            Verilog RTL available at https://github.com/YosysHQ/picorv32.git
Revision History: Feb. 2024
*******************************************************************************/
#ifndef _SC_CPU_PICORV32_TOP_H_
#define _SC_CPU_PICORV32_TOP_H_

#include <systemc.h>
#ifdef VCD_TRACE_DUT_VERILOG
#include <verilated_vcd_sc.h>
#endif

#include "Vpicorv32i_ez.h"
#include "sc_Memory.h"
#include "defs.h"

SC_MODULE(sc_picorv32i_ez_TB)
{
    sc_clock                clk;
    sc_signal<bool>         resetn;
    sc_signal<bool>         trap;
    sc_signal<bool>         mem_valid;
    sc_signal<bool>         mem_instr;
    sc_signal<bool>         mem_ready;
    sc_signal<sc_uint<4> >  mem_wstrb;
    sc_signal<sc_uint<32> > mem_addr;
    sc_signal<sc_uint<32> > mem_wdata;
    sc_signal<sc_uint<32> > mem_rdata;

    // Submodule instance
    Vpicorv32i_ez*  u_picorv32i_ez; // Verilated picorv32i_ez or Foreign module
    sc_Memory*      u_sc_Memory;

    void Reset_Thread()
    {
        resetn.write(false);
        for (int i=0; i<100; i++)
            wait(clk.posedge_event());

        resetn.write(true);
        wait(clk.posedge_event());
    }

    void Monitor_Thread()
    {        
        while(true)
        {
            wait(clk.posedge_event());
            
            if (mem_valid && mem_ready)
            {
                if (mem_instr)
                    printf("ifetch %08X: %08X%c", (mem_addr.read()).to_uint(), (mem_rdata.read()).to_uint(), CR_LF);
                else if (mem_wstrb.read())
                    printf("write  %08X: %08X (wstrb=%X)%c", (mem_addr.read()).to_uint(), (mem_wdata.read()).to_uint(), (mem_wstrb.read()).to_uint(), CR_LF);
                else
                    printf("read   %08X: %08X%c", (mem_addr.read()).to_uint(), (mem_rdata.read()).to_uint(), CR_LF);
            }
        }
    }

#ifdef  VCD_TRACE_TEST_TB
    sc_trace_file* fp;  // VCD file
#endif
#ifdef VCD_TRACE_DUT_VERILOG
    VerilatedVcdSc*     tfp;    // Verilator VCD
#endif

    SC_CTOR(sc_picorv32i_ez_TB) :   // Constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false),
        resetn("resetn"),
        trap("trap"),
        mem_valid("mem_valid"),
        mem_instr("mem_instr"),
        mem_ready("mem_ready"),
        mem_wstrb("mem_wstrb"),
        mem_addr("mem_addr"),
        mem_wdata("mem_wdata"),
        mem_rdata("mem_rdata")
    {
        u_picorv32i_ez = new Vpicorv32i_ez("u_picorv32i_ez");
        u_picorv32i_ez->clk(clk);
        u_picorv32i_ez->resetn(resetn);
        u_picorv32i_ez->trap(trap);
        u_picorv32i_ez->mem_valid(mem_valid);
        u_picorv32i_ez->mem_instr(mem_instr);
        u_picorv32i_ez->mem_ready(mem_ready);
        u_picorv32i_ez->mem_wstrb(mem_wstrb);
        u_picorv32i_ez->mem_addr(mem_addr);
        u_picorv32i_ez->mem_wdata(mem_wdata);
        u_picorv32i_ez->mem_rdata(mem_rdata);

        // Memory Instantiation
        u_sc_Memory = new sc_Memory("u_sc_Memory");
        // Binding
        u_sc_Memory->clk(clk);
        u_sc_Memory->ready(mem_ready);
        u_sc_Memory->valid(mem_valid);
        u_sc_Memory->addr(mem_addr);
        u_sc_Memory->wdata(mem_wdata);
        u_sc_Memory->wstrb(mem_wstrb);
        u_sc_Memory->rdata(mem_rdata);

        SC_THREAD(Reset_Thread);
        sensitive << clk;

        SC_THREAD(Monitor_Thread);
        sensitive << clk;

#ifdef VCD_TRACE_TEST_TB
        // WAVE
        fp = sc_create_vcd_trace_file("sc_picorv32i_ez_TB");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, resetn,    "resetn");
        sc_trace(fp, trap,      "trap");
        sc_trace(fp, mem_valid, "mem_valid");
        sc_trace(fp, mem_instr, "mem_instr");
        sc_trace(fp, mem_ready, "mem_ready");
        sc_trace(fp, mem_wstrb, "mem_wstbr");
        sc_trace(fp, mem_addr,  "mem_addr");
        sc_trace(fp, mem_wdata, "mem_wdata");
        sc_trace(fp, mem_rdata, "mem_rdata");
#endif

#ifdef VCD_TRACE_DUT_VERILOG
        // Trace Verilated Verilog internals
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdSc;
        sc_start(SC_ZERO_TIME);
        u_picorv32i_ez->trace(tfp, 99);  // Trace levels of hierarchy
        tfp->open("Vpicorv32i_ez.vcd");
#endif
    }

    ~sc_picorv32i_ez_TB()
    {}

};

#endif
