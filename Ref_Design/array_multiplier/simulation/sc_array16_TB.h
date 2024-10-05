/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_array16_TB.h
Purpose: Testbench for 16bit array multiplier
Revision History: Jul. 1, 2024
*******************************************************************************/
#ifndef _SC_ARRAY16_TB_H_
#define _SC_ARRAY16_TB_H_

#include <systemc.h>
#include "Varray16.h"
#ifdef CO_EMULATION
#include "array16.h"
#endif

SC_MODULE(sc_array16_TB)
{
    // Verilator treats all Verilog's vector as <uint32_t>
    sc_signal<uint32_t>     a;  // input
    sc_signal<uint32_t>     b;  // input
    sc_signal<uint32_t>     c;  // output

    // Verilated DUT or Foreign Verilog
    Varray16*               u_Varray16;
    
#ifdef CO_EMULATION
    array16*                u_array16;
    sc_signal<sc_uint<16> > a_emu;
    sc_signal<sc_uint<16> > b_emu;
    sc_signal<sc_uint<32> > c_emu;
#endif

    // Convert to exact DUT ports' vector width
    sc_signal<sc_uint<16> > a_dut;
    sc_signal<sc_uint<16> > b_dut;
    sc_signal<sc_uint<32> > c_dut;
    // Convert Verilator's ports to DUT's ports
    void conv_method()
    {
        a_dut.write((sc_uint<16>)a.read());
        b_dut.write((sc_uint<16>)b.read());
        c_dut.write((sc_uint<32>)c.read());
#ifdef CO_EMULATION
        a_emu.write((sc_uint<16>)a.read());
        b_emu.write((sc_uint<16>)b.read());
        //c_emu.write((sc_uint<32>)c.read());
#endif
    }

    void test_generator();
    void monitor();
    
    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_array16_TB) :   // Constructor
        a("a"), b("b"), c("c")
    {
        SC_THREAD(test_generator);

        SC_METHOD(monitor);
        sensitive << c_dut;

        SC_METHOD(conv_method);
        sensitive << a << b << c;

        // DUT Instantiation
        u_Varray16 = new Varray16("u_Varray");
        // Binding
        u_Varray16->a(a);
        u_Varray16->b(b);
        u_Varray16->c(c);
#ifdef CO_EMULATION
        u_array16 = new array16("u_array16");
        // Binding
        u_array16->a(a_emu);
        u_array16->b(b_emu);
        u_array16->c(c_emu);
#endif

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_array16_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, a_dut, "a_dut");
        sc_trace(fp, b_dut, "b_dut");
        sc_trace(fp, c_dut, "c_dut");
#ifdef CO_EMULATION
        sc_trace(fp, a_emu, "a_emu");
        sc_trace(fp, b_emu, "b_emu");
        sc_trace(fp, c_emu, "c_emu");
#endif
    }

    // Destructor
    ~sc_array16_TB()
    {}

};

#endif
