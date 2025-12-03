/**********************************************************************
Filename: Eapple_1.h
Purpose : Wrapper for FPGA Emulated apple_1
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _Eapple_1_H_
#define _Eapple_1_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Eapple_1)
{
    sc_in<bool>             clk;
    sc_in<bool>             reset;
    sc_in<sc_uint<8> >      DI;
    sc_out<sc_uint<8> >     DO;
    sc_out<bool>            WE;
    sc_in<bool>             IRQ;
    sc_in<bool>             NMI;
    sc_in<bool>             RDY;
    sc_out<sc_uint<16> >    AB;
    sc_in<bool>             en_woz;

#define N_TX    2
#define N_RX    4

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +---+-+-+-+-+-+-+                       +-------------+-+
//  [0] |   |5|4|3|2|1|0|                   [0] |             |0|
//      +---+-+-+-+-+-+-+                       +-------------+-+
//           | | | | | |                                       |
//           | | | | | +---clk                                 +---WE
//           | | | | +---reset                  +---------------+
//           | | | +---IRQ                  [1] |7 6 5 4 3 2 1 0|
//           | | +---NMI                        +-------+-------+
//           | +---RDY                                  |
//           +---en_woz                                 +---DO[7:0]
//      +---------------+
//  [1] |7 6 5 4 3 2 1 0|                       +---------------+
//      +-------+-------+                   [2] |7 6 5 4 3 2 1 0|
//              |                               +-------+-------+
//              +-----DI[7:0]                           |
//                                                      +---AB[7:0]
//                                              +---------------+
//                                          [3] |7 6 5 4 3 2 1 0|
//                                              +-------+-------+
//                                                      |
//                                                      +---AB[15:8]
//
    inline void _EMU_IO_(void)
    {
        uint8_t _Rx_, _Tx_, _txPacket_[N_TX], _rxPacket_[N_RX];

        _txPacket_[0]  = (uint8_t)(clk.read()?   0x01:0x00);
        _txPacket_[0] |= (uint8_t)(reset.read()? 0x02:0x00);
        _txPacket_[0] |= (uint8_t)(IRQ.read()?   0x04:0x00);
        _txPacket_[0] |= (uint8_t)(NMI.read()?   0x08:0x00);
        _txPacket_[0] |= (uint8_t)(RDY.read()?   0x10:0x00);
        _txPacket_[0] |= (uint8_t)(en_woz.read()?0x20:0x00);
        _txPacket_[1] = (uint8_t)(DI.read());

        // Send to Emulator
        for (int i=0; i<N_TX; i++)
        {
            _Tx_ = _txPacket_[i];
            while(write(fd, &_Tx_, 1)<=0)  usleep(1);
        }
        // Receive from Emulator
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &_Rx_, 1)<=0)   usleep(1);
            _rxPacket_[i] = _Rx_;
        }

        WE.write((_rxPacket_[0]&0x01)? true:false);
        DO.write((sc_uint<8>)_rxPacket_[1]);
        AB.write((sc_uint<16>)_rxPacket_[2] | (sc_uint<16>)_rxPacket_[3]<<8);
    }

    void apple_1_method(void)
    {
        _EMU_IO_();
    }

    void apple_1_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file

    SC_CTOR(Eapple_1): clk("clk")
    {
//        SC_THREAD(apple_1_thread);
//        sensitive << clk;

        SC_METHOD(apple_1_method);
        sensitive << clk;   // << reset << RDY << NMI << IRQ << DI;

#ifdef VCD_TRACE_TEST_TB
        // WAVE ----------------------------------------------------------
        fp = sc_create_vcd_trace_file("Eapple_1");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, DI,    "DI");
        sc_trace(fp, DO,    "DO");
        sc_trace(fp, WE,    "WE");
        sc_trace(fp, IRQ,   "IRQ");
        sc_trace(fp, NMI,   "NMI");
        sc_trace(fp, RDY,   "RDY");
        sc_trace(fp, AB,    "AB");
        sc_trace(fp, en_woz,"en_woz");
#endif
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
    
    ~Eapple_1(void)
    {
    }
};

#endif

