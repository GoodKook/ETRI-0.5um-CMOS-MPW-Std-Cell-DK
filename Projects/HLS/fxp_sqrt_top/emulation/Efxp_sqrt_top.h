/**********************************************************************
Filename: Efxp_sqrt_top.h
Purpose : FPGA CA-Emulation driver for "fxp_sqrt_top"
Author  : goodkook@gmail.com
History : Aug. 2025, First release
***********************************************************************/

#ifndef _Efxp_sqrt_top_H_
#define _Efxp_sqrt_top_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Efxp_sqrt_top)
{
    sc_in<bool>         ap_clk;
    sc_in<bool>         ap_rst;
    sc_in<bool>         ap_start;
    sc_out<bool>        ap_done;
    sc_out<bool>        ap_idle;
    sc_out<bool>        ap_ready;

    sc_in<sc_uint<IN_BW> >   in_val;
    sc_out<sc_uint<OUT_BW> > ap_return;

#define N_TX    4
#define N_RX    4
// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +-------+-+-+-+-+                       +---------------+
//  [0] |       |3|2|1|0|                   [0] |7 6 5 4 3 2 1 0|
//      +-------+-+-+-+-+                       +-------+-------+
//               |   | |                                |
//               |   | +---ap_rst                       +----------ap_return[7:0]
//               |   +-----ap_start             +---------------+
//               |                          [1] |7 6 5 4 3 2 1 0|
//               +---------ap_clk               +-------+-------+
//      +---------------+                               |
//  [1] |7 6 5 4 3 2 1 0|                               +----------ap_return[15:8]
//      +-------+-------+                       +---------------+
//              |                           [2] |7 6 5 4 3 2 1 0|
//              +---------in_val[7:0]           +-------+-------+
//      +---------------+                               |
//  [2] |7 6 5 4 3 2 1 0|                               +----------ap_return[23:16]
//      +-------+-------+                       +-+-+-+-+-------+
//              |                           [3] | |6|5|4|3 2 1 0|
//              +---------in_val[15:8]          +-+-+-+-+---+---+
//      +---------------+                          | | |    |
//  [3] |7 6 5 4 3 2 1 0|                          | | |    +------ap_return[27:24]
//      +-------+-------+                          | | +-----------ap_done
//              |                                  | +-------------ap_idle
//              +---------in_val[23:16]            +---------------ap_ready
//
    inline void _EMU_IO_(void)
    {
        uint8_t _Tx_, _Rx_, _txPacket_[N_TX], _rxPacket_[N_RX];

        _txPacket_[0] = (uint8_t)(
                        (ap_rst.read()?     0x01:0x00) |
                        (ap_start.read()?   0x02:0x00) |
                        (ap_clk.read()?     0x08:0x00));
        _txPacket_[1] = (uint8_t)((sc_uint<IN_BW>)in_val);
        _txPacket_[2] = (uint8_t)((sc_uint<IN_BW>)in_val>>8);
        _txPacket_[3] = (uint8_t)((sc_uint<IN_BW>)in_val>>16);
        // [Send to Emulator]
        //printf("Sending: %02X %02X\n", _txPacket_[0], _txPacket_[1]);
        for (int i=0; i<N_TX; i++)
        {
            _Tx_ = _txPacket_[i];
            while(write(fd, &_Tx_, 1)<=0)  usleep(1);
        }
        //---------------------------------------------------------
        // [Receive from Emulator]
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &_Rx_, 1)<=0)   usleep(1);
            _rxPacket_[i] = _Rx_;
        }
        //printf("Received: %02X %02X %02X\n", _rxPacket_[0], _rxPacket_[1], _rxPacket_[2]);
        ap_return.write( 
            ((sc_uint<OUT_BW>)_rxPacket_[0])    |
            ((sc_uint<OUT_BW>)_rxPacket_[1]<<8) |
            ((sc_uint<OUT_BW>)_rxPacket_[2]<<16)|
            ((sc_uint<OUT_BW>)_rxPacket_[3]<<24));
        ap_done.write( (_rxPacket_[3] & 0x10)? true:false);
        ap_idle.write( (_rxPacket_[3] & 0x20)? true:false);
        ap_ready.write((_rxPacket_[3] & 0x40)? true:false);
    }

    void dut_method()
    {
        _EMU_IO_();
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(Efxp_sqrt_top): ap_clk("ap_clk")
    {
        SC_METHOD(dut_method);
        sensitive << ap_clk << ap_rst << ap_start << in_val;

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
    
    ~Efxp_sqrt_top(void)
    {
    }
};

#endif

