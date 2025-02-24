/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_monitor.h
Purpose: Output monitor for 8-bit ALU8_Mult
Revision History:
    Dec 15 2023,
    Feb. 2025
*******************************************************************************/
#ifndef _SC_MONITOR_H_
#define _SC_MONITOR_H_

#include <systemc.h>
#include "def_commands.h"

SC_MODULE(sc_Monitor)
{
    sc_in<bool>     clk;
    sc_in<bool>     reset;
    sc_in<uint32_t> ABCmd;
    sc_in<bool>     LoadA;
    sc_in<bool>     LoadB;
    sc_in<bool>     LoadCmd;
    sc_in<bool>     MulL;
    sc_in<bool>     MulH;
    sc_in<bool>     Flag;
    sc_in<uint32_t> ACC;

    sc_signal<uint8_t>  rA, rB, rCmd;
    sc_signal<uint8_t>  rFLAG, rACC;

    sc_signal<sc_uint<8*4> >    regOP;      // char[4]
    sc_signal<sc_uint<8*5> >    regFLAG;    // char[5]
    sc_signal<sc_uint<16> >     regMUL;

    char* decode_op(uint8_t op)
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
        char szOP[16], szFLAG[16];

        uint8_t _rACC;
        uint16_t    MulVal;

        while(true)
        {
            wait(clk.posedge_event());

            if (LoadA.read())   rA.write((uint8_t)ABCmd.read());
            if (LoadB.read())   rB.write((uint8_t)ABCmd.read());
            if (LoadCmd.read())
            {
                rCmd.write((uint8_t)ABCmd.read());
                strcpy(szOP, decode_op((uint8_t)ABCmd.read()));
                regOP.write((uint32_t)szOP[0]<<24|szOP[1]<<16|szOP[2]<<8|szOP[3]);
            }
            if (Flag.read())
            {
                wait(clk.posedge_event());
                rFLAG.write((uint8_t)ACC.read());

                szFLAG[0] = ((uint8_t)rFLAG.get_new_value() & 0x10)? 'C':'-';
                szFLAG[1] = ((uint8_t)rFLAG.get_new_value() & 0x08)? 'V':'-';
                szFLAG[2] = ((uint8_t)rFLAG.get_new_value() & 0x04)? 'Z':'-';
                szFLAG[3] = ((uint8_t)rFLAG.get_new_value() & 0x02)? 'N':'-';
                szFLAG[4] = ((uint8_t)rFLAG.get_new_value() & 0x01)? 'H':'-';
                szFLAG[5] = '\0';
                regFLAG.write((sc_uint<5*8>)szFLAG[0]<<32|szFLAG[1]<<24|szFLAG[2]<<16|szFLAG[3]<<8|szFLAG[4]);

                wait(clk.posedge_event());
                rACC.write((uint8_t)ACC.read());

                switch ((uint8_t)rCmd & 0x0F)
                {
                    case FUNC_ADD:  _rACC = rA + rB; break;
                    case FUNC_SUB:  _rACC = rA - rB; break;
                    case FUNC_OR:   _rACC = rA | rB; break;
                    case FUNC_AND:  _rACC = rA & rB; break;
                    case FUNC_XOR:  _rACC = rA ^ rB; break;
                    case FUNC_NON:  _rACC = rA;      break;
                    default:        _rACC = rACC;    break;
                }
                
                if (_rACC!=(uint8_t)rACC.get_new_value())
                    printf("Error:");
                else
                    printf("Pass :");
                printf("A=0x%02X B=0x%02X CMD=%s FLAG=0x%02X{%s} ACC=0x%02X\n", \
                                (uint8_t)rA, (uint8_t)rB, decode_op((uint8_t)rCmd), (uint8_t)rFLAG, szFLAG, (uint8_t)rACC.get_new_value());
            }
            if (MulL.read())
            {
                wait(clk.posedge_event());
                MulVal = (uint16_t)ACC.read();
                wait(clk.posedge_event());
                MulVal |= (uint16_t)ACC.read() << 8;
                regMUL.write(MulVal);
                
                if (MulVal!=(uint16_t)((uint8_t)rA * (uint8_t)rB))
                    printf("Error:");
                else
                    printf("Pass :");
                printf("A=0x%02X B=0x%02X CMD=%s Mult=0x%04X\n", (uint8_t)rA, (uint8_t)rB, "MUL", MulVal);
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
        MulL("MulL"),
        MulH("MulH"),
        Flag("Flag"),
        ACC("ACC")
    {
        SC_THREAD(Monitor_Thread);
        sensitive << clk;
    }
        
    // Destructor
    ~sc_Monitor()
    {}
};

#endif  // _SC_MONITOR_H_
