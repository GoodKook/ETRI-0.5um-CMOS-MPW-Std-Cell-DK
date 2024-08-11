/**********************************************************************
Filename: sc_fir_pe.h
Purpose : PE of Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_FIR_PE_H_
#define _SC_FIR_PE_H_

#include <systemc.h>

SC_MODULE(sc_fir_pe)
{
    sc_in<bool>             clk;
    sc_in<sc_uint<8> >      Cin;
    sc_in<sc_uint<8> >      Xin;
    sc_out<sc_uint<8> >     Xout;
    sc_in<sc_uint<16> >     Yin;
    sc_out<sc_uint<16> >    Yout;

    sc_signal<sc_uint<16> > y;
    
    void pe_thread(void)
    {
        //sc_uint<16>     y=0;  // Beware! Do NOT use variable for F/F model
        
        while (true)
        {
            wait(clk.posedge_event());
            Xout.write(Xin.read());
            //y = Xin.read() * Cin.read() + Yin.read();
            Yout.write(y);
            y = Xin.read() * Cin.read() + Yin.read();
        }
    }

    SC_CTOR(sc_fir_pe):
        clk("clk"),
        Cin("Cin"),
        Xin("Xin"),
        Xout("Xout"),
        Yin("Yin"),
        Yout("Yout")
    {
        SC_THREAD(pe_thread);
        sensitive << clk;
    }
    
    ~sc_fir_pe(void)
    {
    }
};

#endif
