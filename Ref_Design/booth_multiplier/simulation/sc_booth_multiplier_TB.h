/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_booth_multiplier_TB.h
Purpose: Testbench for 8bit booth_multiplier
Revision History: Jul. 1, 2024
*******************************************************************************/
#ifndef _SC_BOOTH_MULTIPLIER_TB_H_
#define _SC_BOOTH_MULTIPLIER_TB_H_

#include <systemc.h>
#include "Vbooth_multiplier.h"
#ifdef CO_EMULATION
#include "booth_multiplier.h"
#endif

SC_MODULE(sc_booth_multiplier_TB)
{
    // Verilator treats all Verilog's vector as <uint32_t>
    sc_clock                clk;
    sc_signal<bool>         select;
    sc_signal<uint32_t>     multIn;     // input
    sc_signal<uint32_t>     product;        // output

    sc_signal<bool>         Error;
    
    // Verilated DUT or Foreign Verilog
    Vbooth_multiplier*      u_Vbooth_multiplier;
    
#ifdef CO_EMULATION
    booth_multiplier*       u_booth_multiplier;
    sc_signal<sc_uint<8> >  multIn_emu;
    sc_signal<sc_uint<16> > product_emu;
#endif

    // Convert to exact DUT ports' vector width
    sc_signal<sc_uint<8> >  multIn_dut;
    sc_signal<sc_uint<16> > product_dut;
    // Convert Verilator's ports to DUT's ports
    void conv_method()
    {
        multIn_dut.write((sc_uint<8>)multIn.read());
        product_dut.write((sc_uint<16>)product.read());
#ifdef CO_EMULATION
        multIn_emu.write((sc_uint<8>)multIn.read());
#endif
    }

    void test_generator();
    void monitor();
    
    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_booth_multiplier_TB) :   // Constructor
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false),
        select("select"), multIn("multIn"), product("product")
    {
        SC_THREAD(test_generator);
        sensitive << clk;

        SC_THREAD(monitor);
        sensitive << clk;

        SC_METHOD(conv_method);
        sensitive << multIn << product;

        // DUT Instantiation
        u_Vbooth_multiplier = new Vbooth_multiplier("u_Vbooth_multiplier");
        // Binding
        u_Vbooth_multiplier->clk(clk);
        u_Vbooth_multiplier->select(select);
        u_Vbooth_multiplier->multIn(multIn);
        u_Vbooth_multiplier->product(product);
#ifdef CO_EMULATION
        u_booth_multiplier = new booth_multiplier("u_booth_multiplier");
        // Binding
        u_booth_multiplier->clk(clk);
        u_booth_multiplier->select(select);
        u_booth_multiplier->multIn(multIn_emu);
        u_booth_multiplier->product(product_emu);
#endif

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_booth_multiplier_TB");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk,           "clk");
        sc_trace(fp, multIn_dut,    "multIn_dut");
        sc_trace(fp, select,        "select");
        sc_trace(fp, product_dut,   "product_dut");
        sc_trace(fp, Error,         "Error");
#ifdef CO_EMULATION
        sc_trace(fp, multIn_emu,    "multIn_emu");
        sc_trace(fp, product_emu,   "product_emu");
#endif
    }

    // Destructor
    ~sc_booth_multiplier_TB()
    {}

};

#endif
