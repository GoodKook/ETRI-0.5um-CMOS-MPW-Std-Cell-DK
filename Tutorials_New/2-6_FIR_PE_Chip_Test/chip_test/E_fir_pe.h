/**********************************************************************
Filename: E_fir_pe.h
Purpose : FPGA Emulated PE of Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _E_FIR_PE_H_
#define _E_FIR_PE_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(E_fir_pe)
{
    sc_in<bool>             clk;
    sc_in<bool>             Rdy;
    sc_out<bool>            Vld;
    sc_in<sc_uint<7> >      Cin;
    sc_in<sc_uint<4> >      Xin;
    sc_out<sc_uint<4> >     Xout;
    sc_in<sc_uint<4> >      Yin;
    sc_out<sc_uint<4> >     Yout;

#define N_TX    3
#define N_RX    2

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +---------------+                       +-------+-------+
//  [0] |7|6 5 4 3 2 1 0|                   [0] |7 6 5 4|3 2 1 0|
//      +-------+-------+                       +-------+-------+
//              |                                   |        |
//              +---------Cin[6:0]                  |        +-----Xout[3:0]
//      +-------+-------+                           +--------------Yout[3:0]
//  [1] |7 6 5 4|3 2 1 0|                       +-------------+-+
//      +-------+-------+                   [1] |7 6 5 4 3 2 1|0|
//          |       |                           +-------------+-+
//          |       +-----Xin[3:0]                             |
//          +-------------Yin[3:0]                             +---Vld
//      +-----------+-+-+
//  [2] |7 6 5 4 3 2|1|0|
//      +-----------+-+-+
//                   | |
//                   | +----Rdy
//                   +------clk
//
inline void _EMU_IO_(void)
    {
        uint8_t x, y, txPacket[N_TX], rxPacket[N_RX];

        txPacket[0] = (uint8_t)Cin.read();      // Cin
        txPacket[1] = (uint8_t)(Yin.read())<<4 | (uint8_t)(Xin.read()); // Yin | Xin
        txPacket[2] = (uint8_t)Rdy.read()? 0x01:0x00;
        txPacket[2]|= (uint8_t)clk.read()? 0x02:0x00;

        // Send to Emulator
        for (int i=0; i<N_TX; i++)
        {
            x = txPacket[i];
            while(write(fd, &x, 1)<=0)  usleep(1);
        }

        // Receive from Emulator
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &y, 1)<=0)   usleep(1);
            rxPacket[i] = y;
        }

        Yout.write((sc_uint<4>)(rxPacket[0]>>4));
        Xout.write((sc_uint<4>)(rxPacket[0] & 0x0F));
        Vld.write(rxPacket[1]? true:false);
    }

    void pe_method(void)
    {
        _EMU_IO_();
    }

    void pe_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();
            wait(clk.negedge_event());
            _EMU_IO_();
        }
    }

#ifdef LA_FIFO
inline void _LA_IO_(void)
    {
        uint8_t la;

        la  = clk.read()? 0x02:0x00;
        la |= Rdy.read()? 0x01:0x00;
        la |= Vld.read()? 0x04:0x00;
        la |= (Yout.read() & 0x01)? 0x10:0x00;
        la |= (Yout.read() & 0x02)? 0x20:0x00;
        la |= (Yout.read() & 0x04)? 0x40:0x00;
        la |= (Yout.read() & 0x08)? 0x80:0x00;

        if((nWrite = write(la_fifo, &la, 1)) < 1)
            fprintf(stderr,"la_fifo: write error\n");
        else
            fflush(0);
    }

    void la_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _LA_IO_();
            wait(clk.negedge_event());
            _LA_IO_();
        }
    }
#endif

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file
#ifdef LA_FIFO
	int la_fifo, nWrite;
#endif

    SC_CTOR(E_fir_pe):
        clk("clk"),
        Cin("Cin"), Xin("Xin"), Xout("Xout"),
        Yin("Yin"), Yout("Yout")
    {
        SC_METHOD(pe_method);
        sensitive << clk << Rdy << Cin << Xin << Yin;
        //SC_THREAD(pe_thread);
        //sensitive << clk;

#ifdef LA_FIFO
        SC_THREAD(la_thread);
        sensitive << clk;   // << Rdy << Vld << Yout;
#endif

        // Arduino DUT
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            return;
        }
        // Set up serial port
        options.c_cflag = B115200 | CS8 | CLOCAL | CREAD;
        options.c_iflag = IGNPAR;
        options.c_oflag = 0;
        options.c_lflag = 0;
        // Apply the settings
        tcflush(fd, TCIFLUSH);
        tcsetattr(fd, TCSANOW, &options);

        // Establish Contact
        int len = 0;
        char rx;
        while(!len)
            len = read(fd, &rx, 1);
        if (rx=='A')
            write(fd, &rx, 1);
        printf("Connection established...\n");

#ifdef LA_FIFO
        la_fifo = open("la_fifo", O_WRONLY);
        if(la_fifo<0)
            fprintf(stderr,"la_fifo: open error\n");
#endif

        // WAVE
        fp = sc_create_vcd_trace_file("E_fir_pe");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk, "clk");
        sc_trace(fp, Cin,  "Cin");
        sc_trace(fp, Xin,  "Xin");
        sc_trace(fp, Xout, "Xout");
        sc_trace(fp, Yin,  "Yin");
        sc_trace(fp, Yout, "Yout");
        sc_trace(fp, Rdy,  "Rdy");
        sc_trace(fp, Vld,  "Vld");
    }
    
    ~E_fir_pe(void)
    {
    }
};

#endif

