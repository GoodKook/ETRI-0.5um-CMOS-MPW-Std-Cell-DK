//
//
//

#ifndef _SC_GLCD128x64_TB_H_
#define _SC_GLCD128x64_TB_H_

#include <systemc.h>
#include "sc_glcd128x64.h"      // SDL2
#include "glcd128x64_defs.h"

SC_MODULE(sc_glcd128x64_TB)
{
    sc_signal<bool>         RS; // Register Mode Select: Instruction(L), Data(H)
    sc_signal<bool>         RW; // Read(H), Write(L)
    sc_signal<bool>         E;  // Enable @ Posedge
    sc_signal<sc_uint<8> >  DBi; // Data Bus (Input)
    sc_signal<sc_uint<8> >  DBo; // Data Bus (Output)
    sc_signal<bool>         CS1;    // Chip-Select #1
    sc_signal<bool>         CS2;    // Chip-Select #2
    sc_signal<bool>         RST;    // Reset(L)

    sc_glcd128x64*  u_sc_glcd128x64;

    void Test_Gen(void);

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_glcd128x64_TB)
    {
        SC_THREAD(Test_Gen);

        // DUT
        u_sc_glcd128x64 = new sc_glcd128x64("u_sc_glcd128x64");
        u_sc_glcd128x64->RS(RS);    // Register Mode Select: Instruction(L), Data(H)
        u_sc_glcd128x64->RW(RW);    // Read(H), Write(L)
        u_sc_glcd128x64->E(E);      // Enable @ Posedge
        u_sc_glcd128x64->DBi(DBi);  // Data Bus
        u_sc_glcd128x64->DBo(DBo);  // Data Bus
        u_sc_glcd128x64->CS1(CS1);  // Chip-Select #1
        u_sc_glcd128x64->CS2(CS2);  // Chip-Select #2
        u_sc_glcd128x64->RST(RST);  // Reset(L)

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_glcd128x64_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, RS,  "RS");
        sc_trace(fp, RW,  "RW");
        sc_trace(fp, E,   "E");
        sc_trace(fp, DBi, "DBi");
        sc_trace(fp, DBo, "DBo");
        sc_trace(fp, CS1, "CS1");
        sc_trace(fp, CS2, "CS2");
        sc_trace(fp, RST, "RST");
    }
};

#endif
