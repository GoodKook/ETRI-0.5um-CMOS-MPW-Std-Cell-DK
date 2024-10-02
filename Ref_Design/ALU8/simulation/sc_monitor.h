/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_monitor.h
Purpose: Output monitor for 8-bit ALU_wrapper
Revision History: Dec 15 2023,
*******************************************************************************/
#ifndef _SC_MONITOR_H_
#define _SC_MONITOR_H_

#include "VALU_wrapper.h"
#include "def_commands.h"

SC_MODULE(sc_Monitor)
{
    sc_in<bool>     clk;
    sc_in<bool>     reset;
    sc_in<uint32_t> ABCmd;
    sc_in<bool>     LoadA;
    sc_in<bool>     LoadB;
    sc_in<bool>     LoadCmd;
    sc_in<uint32_t> ACC;
    sc_in<bool>     Done;

    sc_signal<sc_uint<8> >      regA;
    sc_signal<sc_uint<8> >      regB;
    sc_signal<sc_uint<8*4> >    regOP;
    sc_signal<sc_uint<8> >      regACC;
    sc_signal<sc_uint<8*5> >    regFLAG;
    sc_signal<sc_uint<16> >     regMUL;

    sc_signal<bool>         cMUL;
    sc_signal<bool>         cBCD;
    sc_signal<bool>         cSHR;
    sc_signal<bool>         cCI;
    
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
        
    void Monitor_Thread()
    {
        sc_uint<8> rA, rB, rCmd, rACC, rFLAG;
        bool _Done = false, _LoadA = false, _LoadB = false, _LoadCmd = false;
        char szOP[16], szFLAG[16];
        
        while(true)
        {
            wait(clk.posedge_event());

            if (Done.read())    // Accumulator out
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
                regACC.write(ACC.read());
                regMUL.write((sc_uint<16>)ACC.read());  // Least Byte of Multipler
                // Output Check
                if (ACC.read() == (unsigned)rACC)
                    printf("\tAcc=0x%02X[0x%02X] OK", ACC.read(), (unsigned)rACC);
                else
                    printf("\tAcc=0x%02X[0x%02X] ERROR", ACC.read(), (unsigned)rACC);
            }
            else if (_Done)  // Flag out
            {
                _Done = false;

                rFLAG = ACC.read();
                szFLAG[0] = (rFLAG & 0x10)? 'C':'-';
                szFLAG[1] = (rFLAG & 0x08)? 'V':'-';
                szFLAG[2] = (rFLAG & 0x04)? 'Z':'-';
                szFLAG[3] = (rFLAG & 0x02)? 'N':'-';
                szFLAG[4] = (rFLAG & 0x01)? 'H':'-';

                regFLAG.write((sc_uint<5*8>)szFLAG[0]<<32|szFLAG[1]<<24|szFLAG[2]<<16|szFLAG[3]<<8|szFLAG[4]);
                regMUL.write(regMUL.read()|(sc_uint<16>)rFLAG<<8);  // Most Byte of Multipler

                // oACC = { 3'b000, CO, AV, AZ, AN, HC};
                printf("\tFlag=0x%02X {%c%c%c%c%c}\n",
                                (int)rFLAG, (rFLAG & 0x10)? 'C':'-', (rFLAG & 0x08)? 'V':'-',
                                (rFLAG & 0x04)? 'Z':'-', (rFLAG & 0x02)? 'N':'-', (rFLAG & 0x01)? 'H':'-');
            }

            if (LoadA.read())   _LoadA = true;  // Load A Register
            else if (_LoadA)
            {
                _LoadA = false;
                rA = ABCmd.read();
                regA.write(rA);
                printf("Reg.A=0x%02X\n", (unsigned)rA);
            }

            if (LoadB.read())   _LoadB = true;    // Load B Register
            else if (_LoadB)
            {
                _LoadB = false;
                rB = ABCmd.read();
                regB.write(rB);
                printf("Reg.B=0x%02X\n", (unsigned)rB);
            }

            if (LoadCmd.read()) _LoadCmd = true;    // Execute & Load
            else if (_LoadCmd)
            {
                _LoadCmd = false;
                rCmd = ABCmd.read();
                // rCmd = { MUL, BCD, shr, CI, op[3:0] }
                printf("  CMD={%s %s %s %s %s}",
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

    SC_CTOR(sc_Monitor) :   // Constructor
        clk("clk"),
        reset("reset"),
        ABCmd("ABCmd"),
        LoadA("LoadA"),
        LoadB("LoadB"),
        LoadCmd("LoadCmd"),
        ACC("ACC"),
        Done("Done")
    {
        SC_THREAD(Monitor_Thread);
        sensitive << clk;
    }
        
    // Destructor
    ~sc_Monitor()
    {}
};

#endif  // _SC_MONITOR_H_
