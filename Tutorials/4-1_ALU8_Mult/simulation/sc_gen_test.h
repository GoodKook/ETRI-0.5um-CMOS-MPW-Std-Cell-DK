/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_gen_test.h
Purpose: Test generator for 8-bit ALU8_Mult
Revision History: Dec 15 2023,
        Feb. 2024, Multiplier, FSM for I/O
        Feb. 2025
*******************************************************************************/
#ifndef _SC_GEN_TEST_H_
#define _SC_GEN_TEST_H_

#include "systemc.h"
#include "VALU8_Mult.h"
#include "def_commands.h"

SC_MODULE(sc_Gen_Test)
{
    sc_in<bool>         clk;
    sc_out<bool>        reset;
    sc_out<uint32_t>    ABCmd;
    sc_out<bool>        LoadA;
    sc_out<bool>        LoadB;
    sc_out<bool>        LoadCmd;
    sc_out<bool>        MulL;
    sc_out<bool>        MulH;
    sc_out<bool>        Flag;

    void Gen_Test_Thread()
    {
        int nSim = 0;
        uint32_t    regA_Val, regB_Val;

        uint32_t Test_Ops[] =
        {
            FUNC_NON,
            FUNC_OR |FUNC_CI,
            FUNC_AND,
            FUNC_XOR|FUNC_CI,
            FUNC_ADD,
            FUNC_SUB|FUNC_CI,
            FUNC_MUL,
            FUNC_NON
        };

        regA_Val = 0xAA;
        regB_Val = 0x55;

    REPEAT:
        // Initialize
        ABCmd.write(0);
        LoadA.write(false);
        LoadB.write(false);
        LoadCmd.write(false);
        MulL.write(false);
        MulH.write(false);
        Flag.write(false);
        reset.write(true);
        wait(clk.posedge_event());
        wait(clk.posedge_event());

        reset.write(false);
        wait(clk.posedge_event());

        // Load A Reg.
        LoadA.write(true);
        LoadB.write(false);
        ABCmd.write(regA_Val);
        wait(clk.posedge_event());

        // Load B Reg.
        LoadA.write(false);
        LoadB.write(true);
        ABCmd.write(regB_Val);
        wait(clk.posedge_event());

        // Load Cmd Reg.
        for (int i=0; i<(sizeof(Test_Ops) / sizeof(uint32_t)); i++)
        {
            LoadA.write(false);
            LoadB.write(false);
            Flag.write(false);
            MulL.write(false);
            MulH.write(false);

            // Load Command
            LoadCmd.write(true);
            ABCmd.write(Test_Ops[i]);
            wait(clk.posedge_event());
            LoadCmd.write(false);

            // Execute
            if (Test_Ops[i] & FUNC_MUL)
            {
                MulL.write(true);
                wait(clk.posedge_event());
                MulL.write(false);
                MulH.write(true);
                wait(clk.posedge_event());
                MulH.write(false);
                wait(clk.posedge_event());
            }
            else
            {
                Flag.write(true);
                wait(clk.posedge_event());
                Flag.write(false);
                wait(clk.posedge_event());
                wait(clk.posedge_event());
            }
        }
        
        nSim++;
        regA_Val+=3;
        regB_Val+=7;
        if (nSim<80)
            goto REPEAT;
        else
            sc_stop();
    }

    SC_CTOR(sc_Gen_Test) :   // Constructor
        clk("clk"),
        reset("reset"),
        ABCmd("ABCmd"),
        LoadA("LoadA"),
        LoadB("LoadB"),
        LoadCmd("LoadCmd")
    {
        SC_THREAD(Gen_Test_Thread);
        sensitive << clk;
    }
        
    // Destructor
    ~sc_Gen_Test()
    {}
};

#endif  // _SC_GEN_TEST_H_
