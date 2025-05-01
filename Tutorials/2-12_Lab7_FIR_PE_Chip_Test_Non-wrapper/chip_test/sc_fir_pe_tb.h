/**********************************************************************
Filename: sc_fir_pe_tb.h
Purpose : Testbench
          Chip Test of FIR PE (MyChip 2024-2)
Author  : goodkook@gmail.com
History : Jan. 2025, First release
***********************************************************************/

#ifndef _SC_FIR_PE_TB_H_
#define  _SC_FIR_PE_TB_H_

#include <systemc.h>
#include "sc_fir_pe.h"

SC_MODULE(sc_fir_pe_tb)
{
    sc_clock                clk;
    sc_signal<sc_uint<8> >  Cin;
    sc_signal<sc_uint<4> >  Xin;
    sc_signal<sc_uint<4> >  Xout;
    sc_signal<sc_uint<4> >  Yin;
    sc_signal<sc_uint<4> >  Yout;
    sc_signal<bool>         Vld;
    sc_signal<bool>         Rdy;

    sc_fir_pe*                u_sc_fir_pe;

    uint16_t    Test_Cin[5] = {0, 0, 0, 0, 0};
    uint16_t    Test_Xin[5] = {0, 0, 0, 0, 0};
    uint16_t    Test_Yin[5] = {0, 0, 0, 0, 0};
    uint8_t     Test_Xout = 0;
    uint16_t    Test_Yout = 0;

    // Test utilities
    void Test_Gen()
    {
        Cin.write(0x00);
        Xin.write(0x00);
        Yin.write(0x00);
        Rdy.write(false);

        // INIT
        for (int i=0; i<10; i++)
            wait(clk.posedge_event());
        wait(clk.posedge_event());
        Rdy.write(true);
        wait(clk.posedge_event());
        Rdy.write(false);
        for (int i=0; i<10; i++)
            wait(clk.posedge_event());

        Cin.write(Test_Cin[0]);
        Xin.write(0x00);
        Yin.write(0x00);
        Rdy.write(false);

        while(true)
        {
            Cin.write(Test_Cin[0] & 0x007F);    // Cin: 7-Bits
            wait(clk.posedge_event());
            Rdy.write(true);
            wait(clk.posedge_event());
            Rdy.write(false);
            Xin.write(Test_Xin[0] & 0x000F);    // Xin: 4-Bits
            Yin.write(Test_Yin[0] & 0x000F);    // Yin: 4-Bits
            wait(clk.posedge_event());
            Xin.write(Test_Xin[0] >> 4);
            Yin.write((Test_Yin[0] >> 4) & 0x000F);     // Yin: 4-Bits
            wait(clk.posedge_event());
            Yin.write((Test_Yin[0] >> 8) & 0x000F);     // Yin: 4-Bits
            wait(clk.posedge_event());
            Yin.write((Test_Yin[0] >> 12) & 0x000F);    // Yin: 4-Bits
            wait(clk.posedge_event());
            //printf("Cin = %04d Xin = %04d Yin = %06d ---> ", Test_Cin[0], Test_Xin[0], Test_Yin[0]);

            Test_Xin[4] = Test_Xin[3];  Test_Xin[3] = Test_Xin[2];  Test_Xin[2] = Test_Xin[1];  Test_Xin[1] = Test_Xin[0];
            Test_Yin[4] = Test_Yin[3];  Test_Yin[3] = Test_Yin[2];  Test_Yin[2] = Test_Yin[1];  Test_Yin[1] = Test_Yin[0];
            Test_Cin[4] = Test_Cin[3];  Test_Cin[3] = Test_Cin[2];  Test_Cin[2] = Test_Cin[1];  Test_Cin[1] = Test_Cin[0];

#if defined(TEST_MULTIPLIER_C)
            Test_Cin[0]++;
            if (Test_Cin[0]>127)
            {
                Test_Cin[0] = 0;
                Test_Xin[0]++;
                if (Test_Xin[0]>255)
                    sc_stop();
            }
#elif defined(TEST_MULTIPLIER_X)
            Test_Xin[0]++;
            if (Test_Xin[0]>255)
            {
                Test_Xin[0] = 0;
                Test_Cin[0]++;
                if (Test_Cin[0]>127)
                    sc_stop();
            }
#elif defined(TEST_ADDER_X)
            Test_Cin[0] = 1;
            Test_Xin[0]++;
            if (Test_Xin[0]>255)
            {
                Test_Xin[0] = 0;
                Test_Yin[0]++;
                if (Test_Yin[0]>1000)
                    sc_stop();
            }
#elif defined(TEST_ADDER_Y)
            Test_Cin[0] = 1;
            Test_Yin[0]++;
            if (Test_Yin[0]>255)
            {
                Test_Yin[0] = 0;
                Test_Xin[0]++;
                if (Test_Xin[0]>255)
                    sc_stop();
            }
#elif defined(TEST_ADDER_R)
            Test_Cin[0] = 1;
            Test_Xin[0] = (uint16_t)rand() & 0x00FF;    // Xin: unsigned 8-bit
            Test_Yin[0] = (uint16_t)rand() & 0xFFFF;    // Yin: unsigned 16-bit
#else   // RAND (default)
            Test_Cin[0] = (uint16_t)rand() & 0x007F;    // Cin: unsigned 7-bit
            Test_Xin[0] = (uint16_t)rand() & 0x00FF;    // Xin: unsigned 8-bit
            Test_Yin[0] = (uint16_t)rand() & 0xFFFF;    // Yin: unsigned 16-bit
#endif            
        }
    }

    void Test_Mon()
    {
        uint16_t    Yout_Expected = 0;

        while(true)
        {
            wait(clk.posedge_event());
            if (Vld.read())
            {
                wait(clk.posedge_event());
                wait(clk.posedge_event());
                Test_Xout = (uint8_t)Xout.read();
                Test_Yout = (uint16_t)Yout.read();
                wait(clk.posedge_event());
                Test_Xout |= (uint8_t)Xout.read() << 4;
                Test_Yout |= (uint16_t)Yout.read() << 4;
                wait(clk.posedge_event());
                Test_Yout |= (uint16_t)Yout.read() << 8;
                wait(clk.posedge_event());
                Test_Yout |= (uint16_t)Yout.read() << 12;
                printf("[Cin=%03d] * [Xin=%03d] + [Yin=%05d] ---> ",
#if defined(TEST_ADDER_X) || defined(TEST_ADDER_Y) || defined(TEST_ADDER_R) || defined(RAND)
                        Test_Cin[3], Test_Xin[3], Test_Yin[3]);
                Yout_Expected = (Test_Cin[3]*Test_Xin[3]+Test_Yin[3]);
#else
                        Test_Cin[2], Test_Xin[2], Test_Yin[2]);
                Yout_Expected = (Test_Cin[2]*Test_Xin[2]+Test_Yin[2]);
#endif
                printf("Xout = %03d Yout = %05d", Test_Xout, Test_Yout);
                if (Test_Yout!=Yout_Expected)
                    printf(":ERROR, Expected Yout = %05d\n", Yout_Expected);
                else
                    printf("\n");
            }
        }
    }

#ifdef VCD_TRACE_YES
    sc_trace_file* fp;  // VCD file
#endif

    SC_CTOR(sc_fir_pe_tb):
        clk("clk", 100, SC_NS, 0.5, 0.0, SC_NS, false),
        Vld("Vld"),
        Rdy("Rdy"),
        Xin("Xin"),
        Xout("Xout"),
        Yin("Yin"),
        Yout("Yout")
    {
        SC_THREAD(Test_Gen);
        sensitive << clk;

        SC_THREAD(Test_Mon);
        sensitive << clk;
        
        // Instaltiate FIR8
        u_sc_fir_pe = new sc_fir_pe("u_sc_fir_pe");
        u_sc_fir_pe->clk(clk);
        u_sc_fir_pe->Cin(Cin);
        u_sc_fir_pe->Xin(Xin);
        u_sc_fir_pe->Xout(Xout);
        u_sc_fir_pe->Yin(Yin);
        u_sc_fir_pe->Yout(Yout);
        u_sc_fir_pe->Rdy(Rdy);
        u_sc_fir_pe->Vld(Vld);

#if VCD_TRACE_YES
        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir_pe_tb");
        sc_trace(fp, clk, "clk");
        sc_trace(fp, Cin,  "Cin");
        sc_trace(fp, Xin,  "Xin");
        sc_trace(fp, Xout, "Xout");
        sc_trace(fp, Yin,  "Yin");
        sc_trace(fp, Yout, "Yout");
        sc_trace(fp, Rdy,  "Rdy");
        sc_trace(fp, Vld,  "Vld");
#endif
    }
    
    ~sc_fir_pe_tb(void)
    {
    }
};

#endif

