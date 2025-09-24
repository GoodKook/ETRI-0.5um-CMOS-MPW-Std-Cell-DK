/**********************************************************************
Filename: ETOP_MODULE.h
Purpose : Wrapper for FPGA Emulated TOP_MODULE
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _ETOP_MODULE_H_
#define _ETOP_MODULE_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(ETOP_MODULE)
{
    sc_in<bool>             clk;
    sc_in<bool>             Rdy;
    sc_out<bool>            Vld;
    sc_in<sc_uint<6> >      Cin;
    sc_in<sc_uint<4> >      Xin;
    sc_out<sc_uint<4> >     Xout;
    sc_in<sc_uint<4> >      Yin;
    sc_out<sc_uint<4> >     Yout;

#define N_TX    3
#define N_RX    2

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +---------------+                       +-------+-------+
//  [0] |7 6 5 4 3 2 1 0|                   [0] |7 6 5 4|3 2 1 0|
//      +-------+-------+                       +-------+-------+
//              |                                   |        |
//              +---------Cin[7:0]                  |        +-----Xout[3:0]
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

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file

    SC_CTOR(ETOP_MODULE):
        clk("clk"),
        Cin("Cin"), Xin("Xin"), Xout("Xout"),
        Yin("Yin"), Yout("Yout")
    {
        SC_METHOD(pe_method);
        sensitive << clk << Rdy << Cin << Xin << Yin;

        // WAVE ----------------------------------------------------------
        fp = sc_create_vcd_trace_file("ETOP_MODULE");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, Xin,   "Xin");
        sc_trace(fp, Xout,  "Xout");
        sc_trace(fp, Yin,   "Yin");
        sc_trace(fp, Yout,  "Yout");
        sc_trace(fp, Rdy,   "Rdy");
        sc_trace(fp, Vld,   "Vld");

        // Connecting Arduino DUT -----------------------------------------
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
        fprintf(stderr, "Request emulator connection......\n");
        unsigned char _rx, _tx = 'A';
        while(write(fd, &_tx, 1)<=0)  usleep(10);
        while(read(fd, &_rx, 1)<=0)   usleep(10);
        if (_rx=='A')
            fprintf(stderr, "Connection established...\n");
        else
        {
            fprintf(stderr, "Connection failed...\n");
            sc_stop();
        }
    }
    
    ~ETOP_MODULE(void)
    {
    }
};

#endif

