/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_ALU8_Mult_TB.cpp
Purpose: Testbench
Revision History: Sep. 2025
*******************************************************************************/
#include "sc_ALU8_Mult_TB.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

#include <stdlib.h>
#include <time.h>
#include <math.h>

#include "def_commands.h"

//
// Cycle-Accurate Test Generator
//
void sc_ALU8_Mult_TB::Test_Gen()
{
    int         nSim = 0;
    uint32_t    regA_Val, regB_Val;
    uint32_t    Test_Ops[] =
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
    ABCmd_i.write(0);
    LoadA_i.write(false);
    LoadB_i.write(false);
    LoadCmd_i.write(false);
    reset.write(true);
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    reset.write(false);
    wait(clk.posedge_event());

    // Load A Reg.
    LoadA_i.write(true);
    wait(clk.posedge_event());
    ABCmd_i.write(regA_Val);

    // Load B Reg.
    LoadA_i.write(false);
    LoadB_i.write(true);
    wait(clk.posedge_event());
    ABCmd_i.write(regB_Val);

    // Load Cmd Reg.
    for (int i=0; i<(sizeof(Test_Ops) / sizeof(uint32_t)); i++)
    {
        // Load Operation
        LoadA_i.write(false);
        LoadB_i.write(false);
        LoadCmd_i.write(true);
        wait(clk.posedge_event());
        ABCmd_i.write(Test_Ops[i]); // Test Operation
        // Save executed result to Accumulator
        //LoadCmd.write(false);
        //wait(clk.posedge_event());
        // Output to Flag
        LoadCmd_i.write(false);
        wait(clk.posedge_event());
    }
    LoadA_i.write(false);
    LoadB_i.write(false);
    LoadCmd_i.write(false);
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    
    nSim++;
    regA_Val+=3;
    regB_Val+=7;
    if (nSim<100)    goto REPEAT;
    else            sc_stop();
}

//
// Cycle-Accurate Output Monitor
//
char* decode_op(uint32_t op)
{
    switch (op & 0x0F)
    {
        case FUNC_ADD:  return (char*)"ADD";
        case FUNC_SUB:  return (char*)"SUB";
        case FUNC_OR:   return (char*)"OR ";
        case FUNC_AND:  return (char*)"AND";
        case FUNC_XOR:  return (char*)"XOR";
        default:        return (char*)"nop";
    }
    return (char*)"NIL";
}

void sc_ALU8_Mult_TB::Test_Mon()
{
    sc_uint<8>  rA, rB, rCmd, rACC, rFLAG;
    bool        _Done = false, _LoadA = false, _LoadB = false, _LoadCmd = false;
    char        szOP[16], szFLAG[16];
    
    while(true)
    {
        wait(clk.posedge_event());
        if (Done_o.read())    // Accumulator out
        {
            _Done = true;
            // Calc. Expected value
            if (rCmd & FUNC_MUL)
                rACC = (sc_uint<8>)(rA * rB);
            else
            {
                switch (rCmd & 0x0F)
                {
                    case FUNC_ADD:  rACC = rA + rB; break;
                    case FUNC_SUB:  rACC = rA - rB; break;
                    case FUNC_OR:   rACC = rA | rB; break;
                    case FUNC_AND:  rACC = rA & rB; break;
                    case FUNC_XOR:  rACC = rA ^ rB; break;
                    case FUNC_NON:  rACC = rA;      break;
                    default:        rACC = rACC;    break;
                }
            }
            // Capture RTL output
            regACC.write(ACC_o.read());
            regMUL.write((sc_uint<16>)ACC_o.read());  // Least Byte of Multipler
            // Output Check
            if (ACC_o.read() == (unsigned)rACC)
                printf("\tAcc=0x%02X[0x%02X] OK\n", (unsigned)ACC_o.read(), (unsigned)rACC);
            else
                printf("\tAcc=0x%02X[0x%02X] ERROR\n", (unsigned)ACC_o.read(), (unsigned)rACC);
        }
        else if (_Done)  // Flag out
        {
            _Done = false;
            rFLAG = ACC_o.read();
            szFLAG[0] = (rFLAG & 0x10)? 'C':'-';
            szFLAG[1] = (rFLAG & 0x08)? 'V':'-';
            szFLAG[2] = (rFLAG & 0x04)? 'Z':'-';
            szFLAG[3] = (rFLAG & 0x02)? 'N':'-';
            szFLAG[4] = (rFLAG & 0x01)? 'H':'-';
            regFLAG.write((sc_uint<5*8>)szFLAG[0]<<32|szFLAG[1]<<24|szFLAG[2]<<16|szFLAG[3]<<8|szFLAG[4]);
            regMUL.write(regMUL.read()|(sc_uint<16>)rFLAG<<8);  // Most Byte of Multipler
            printf("\tFlag=0x%02X {%c%c%c%c%c}\n",
                            (int)rFLAG, (rFLAG & 0x10)? 'C':'-', (rFLAG & 0x08)? 'V':'-',
                            (rFLAG & 0x04)? 'Z':'-', (rFLAG & 0x02)? 'N':'-', (rFLAG & 0x01)? 'H':'-');
        }
        if (LoadA_i.read())   _LoadA = true;  // Load A Register
        else if (_LoadA)
        {
            _LoadA = false;
            rA = ABCmd_i.read();
            regA.write(rA);
            printf("Reg.A=0x%02X\n", (unsigned)rA);
        }
        if (LoadB_i.read())   _LoadB = true;    // Load B Register
        else if (_LoadB)
        {
            _LoadB = false;
            rB = ABCmd_i.read();
            regB.write(rB);
            printf("Reg.B=0x%02X\n", (unsigned)rB);
        }
        if (LoadCmd_i.read()) _LoadCmd = true;    // Execute & Load
        else if (_LoadCmd)
        {
            _LoadCmd = false;
            rCmd = ABCmd_i.read();
            // rCmd = { MUL, BCD, shr, CI, op[3:0] }
            printf("  CMD=[%02X]{%s %s %s %s %s}", (unsigned)rCmd,
                            (rCmd & FUNC_MUL)? "MUL":"---",
                            (rCmd & FUNC_BCD)? "BCD":"---",
                            (rCmd & FUNC_SHR)? "SHR":"---",
                            (rCmd & FUNC_CI)?  " CI":"---",
                            decode_op(rCmd));
            cMUL.write((rCmd & FUNC_MUL)? true:false);
            cBCD.write((rCmd & FUNC_BCD)? true:false);
            cSHR.write((rCmd & FUNC_SHR)? true:false);
            cCI.write( (rCmd & FUNC_CI)?  true:false);
            if (rCmd & FUNC_MUL)
            {
                regOP.write((uint32_t)'M'<<24|'U'<<16|'L'<<8|0x00);
            }
            else
            {
                strcpy(szOP, decode_op(rCmd));
                regOP.write((uint32_t)szOP[0]<<24|szOP[1]<<16|szOP[2]<<8|szOP[3]);
            }
        }
    }
}


