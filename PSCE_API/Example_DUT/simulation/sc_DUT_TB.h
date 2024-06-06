/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_DUT_TB.h
Purpose: Testbench for DUT
Revision History: Jun. 1, 2024
*******************************************************************************/
#ifndef _SC_DUT_TB_H_
#define _SC_DUT_TB_H_

#include <systemc.h>
#include "VDUT.h"
#ifdef CO_EMULATION
#include "DUT.h"
#endif

SC_MODULE(sc_DUT_TB)
{
    sc_clock                CLK;
    sc_signal<bool>         nCLR;
    sc_signal<bool>         nLOAD;
    sc_signal<bool>         ENP;
    sc_signal<bool>         ENT;
    sc_signal<bool>         RCO;

    // Verilator treats all Verilog's vector as <uint32_t>
    sc_signal<uint32_t>     Digit;
    sc_signal<uint32_t>     Din;
    sc_signal<uint32_t>     Dout;
    
    // Exact DUT ports' vector width
    sc_signal<sc_uint<2> >  Digit_n2;
    sc_signal<sc_uint<4> >  Din_n4;
    sc_signal<sc_uint<16> > Dout_n16;
    
    // Verilated DUT or Foreign Verilog
    VDUT*   u_VDUT;
    
#ifdef CO_EMULATION
    // Emulator DUT
    DUT*    u_DUT;
    sc_signal<sc_uint<16> > Dout_emu;
    sc_signal<bool>         RCO_emu;
#endif

    // Convert Verilator's ports to DUT's ports
    void conv_method()
    {
        Digit_n2.write((sc_uint<2>)Digit);
        Din_n4.write((sc_uint<4>)Din);
        Dout_n16.write((sc_uint<16>)Dout);
    }

    void test_generator();
    void monitor();
    
    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_DUT_TB) :   // Constructor
        CLK("CLK", 100, SC_NS, 0.5, 0.0, SC_NS, false)
    {

        SC_THREAD(test_generator);
        sensitive << CLK;

        SC_THREAD(monitor);
        sensitive << CLK;

        SC_METHOD(conv_method);
        sensitive << Din << Dout << Digit;

        // DUT Instantiation
        u_VDUT = new VDUT("u_VDUT");
        // Binding
        u_VDUT->CLK(CLK);
        u_VDUT->nCLR(nCLR);
        u_VDUT->nLOAD(nLOAD);
        u_VDUT->Digit(Digit);
        u_VDUT->ENP(ENP);
        u_VDUT->ENT(ENT);
        u_VDUT->Din(Din);
        u_VDUT->Dout(Dout);
        u_VDUT->RCO(RCO);

#ifdef CO_EMULATION
        u_DUT = new DUT("u_DUT");
        // Binding
        u_DUT->CLK(CLK);
        u_DUT->nCLR(nCLR);
        u_DUT->nLOAD(nLOAD);
        u_DUT->Digit(Digit_n2);
        u_DUT->Din(Din_n4);
        u_DUT->Dout(Dout_emu);
        u_DUT->RCO(RCO_emu);
#endif

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_DUT_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, CLK,       "CLK");
        sc_trace(fp, nCLR,      "nCLR");
        sc_trace(fp, nLOAD,     "nLOAD");
        sc_trace(fp, Digit_n2,  "Digit");
        sc_trace(fp, ENP,       "ENP");
        sc_trace(fp, ENT,       "ENT");
        sc_trace(fp, Din_n4,    "Din");
        sc_trace(fp, Dout_n16,  "Dout");
        sc_trace(fp, RCO,       "RCO");
#ifdef CO_EMULATION
        sc_trace(fp, Dout_emu,  "Dout_emu");
        sc_trace(fp, RCO_emu,   "RCO_emu");
#endif
    }

    // Destructor
    ~sc_DUT_TB()
    {}

};

#endif // _SC_DUT_H_
