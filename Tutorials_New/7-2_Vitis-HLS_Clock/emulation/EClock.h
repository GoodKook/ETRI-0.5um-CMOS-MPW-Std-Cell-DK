/**********************************************************************
Filename: EClock.h
Purpose : FPGA CA-Emulation driver for "Clock"
Author  : goodkook@gmail.com
History : Aug. 2025, First release
***********************************************************************/

#ifndef _VCLOCK_H_
#define _VCLOCK_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(EClock)
{
    sc_in<bool>         ap_clk;
    sc_in<bool>         ap_rst;
    sc_in<bool>         reset;
    sc_in<bool>         start_r;
    sc_out<sc_uint<8> > hh;
    sc_out<sc_uint<8> > mm;
    sc_out<sc_uint<8> > ss;

#define N_TX    1
#define N_RX    3

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                   DUT's output bitmap
//      +-------+-+-+-+-+                    +-----+-+-+-+-+-+
//  [0] |       |3|2|1|0|                [0] |     |4 3 2 1 0|
//      +-------+-+-+-+-+                    +-----+-+-+-+-+-+
//               | | | |                              hh
//               | | | +---start_r           +---+-----------+
//               | | +-----reset         [1] |   |5 4 3 2 1 0|
//               | +-------ap_rst            +---+-----------+
//               +---------ap_clk                     mm
//                                           +---+-+-+-+-+-+-+
//                                       [2] |   |5 4 3 2 1 0|
//                                           +---+-+-+-+-+-+-+
//                                                    ss
//

    inline void _EMU_IO_(void)
    {
        uint8_t x, y, txPacket[N_TX], rxPacket[N_RX];

        txPacket[0] = (uint8_t)(
                        (start_r.read()? 0x01:0x00) |
                        (reset.read()?   0x02:0x00) |
                        (ap_rst.read()?  0x04:0x00) |
                        (ap_clk.read()?  0x08:0x00));
        // [Send to Emulator]
        //printf("Sending: %02X %02X\n", txPacket[0], txPacket[1]);
        for (int i=0; i<N_TX; i++)
        {
            x = txPacket[i];
            while(write(fd, &x, 1)<=0)  usleep(1);
        }
        //---------------------------------------------------------
        // [Receive from Emulator]
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &y, 1)<=0)   usleep(1);
            rxPacket[i] = y;
        }
        //printf("Received: %02X %02X %02X\n", rxPacket[0], rxPacket[1], rxPacket[2]);
        hh.write( (sc_uint<8>)rxPacket[0]);
        mm.write( (sc_uint<8>)rxPacket[1]);
        ss.write( (sc_uint<8>)rxPacket[2]);
    }

    void dut_method()
    {
        _EMU_IO_();
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(EClock): ap_clk("ap_clk")
    {
        SC_METHOD(dut_method);
        sensitive << ap_clk << ap_rst << reset << start_r;

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
    
    ~EClock(void)
    {
    }
};

#endif

