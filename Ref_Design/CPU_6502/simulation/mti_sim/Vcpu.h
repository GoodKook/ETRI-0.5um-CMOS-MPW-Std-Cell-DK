/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: Vcpu.h
Purpose: SC wrapper for Verilog 6502 CPU
Revision History: Jan. 5, 2024
*******************************************************************************/
#ifndef _VCPU_H_
#define _VCPU_H_

#include "systemc.h"
#include "CPU_6502.h"

/*******************************************************************************
Purpose: SystemC interface wrapper compatible with VERILATOR generated SC module
*******************************************************************************/
SC_MODULE(Vcpu)
{
    sc_in<bool>         clk;
    sc_in<bool>         reset;
    sc_in<uint32_t>     DI;
    sc_out<uint32_t>    DO;
    sc_out<bool>        WE;
    sc_in<bool>         IRQ;
    sc_in<bool>         NMI;
    sc_in<bool>         RDY;
    sc_out<uint32_t>    AB;

    sc_signal<bool>         _clk;
    sc_signal<bool>         _reset;
    sc_signal<sc_bv<16> >   _AB;
    sc_signal<sc_bv<8> >    _DI;
    sc_signal<sc_bv<8> >    _DO;
    sc_signal<bool>         _WE;
    sc_signal<bool>         _IRQ;
    sc_signal<bool>         _NMI;
    sc_signal<bool>         _RDY;

    CPU_6502*   u_CPU_6502;

    void eval()
    {
        _clk = clk.read();
        _reset = reset.read();
        
        _DI = DI.read();
        DO.write(sc_uint<32>(_DO));
        WE.write(_WE);
        AB.write(sc_uint<32>(_AB));

        _IRQ = IRQ.read();
        _NMI = NMI.read();
        _RDY = RDY.read();
    }
    
    SC_CTOR(Vcpu) : // constructor
        clk("clk"),
        reset("reset"),
        AB("AB"),
        DI("DI"),
        DO("DO"),
        WE("WE"),
        IRQ("IRQ"),
        NMI("NMI"),
        RDY("RDY")
    {
        SC_METHOD(eval);
        sensitive << clk;
        sensitive << reset;
        sensitive << DI;
        sensitive << IRQ;
        sensitive << NMI;
        sensitive << RDY;
        sensitive << _AB;
        sensitive << _DO;
        sensitive << _WE;

        // Verilog model instantiation
        u_CPU_6502 = new CPU_6502("u_CPU_6502");
        // Binding
        u_CPU_6502->clk(_clk);
        u_CPU_6502->reset(_reset);
        u_CPU_6502->DI(_DI);
        u_CPU_6502->DO(_DO);
        u_CPU_6502->WE(_WE);
        u_CPU_6502->IRQ(_IRQ);
        u_CPU_6502->NMI(_NMI);
        u_CPU_6502->RDY(_RDY);
        u_CPU_6502->AB(_AB);
    }
};

#endif
