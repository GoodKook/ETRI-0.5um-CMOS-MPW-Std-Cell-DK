/**********************************************************************
Filename: Ebasic_loops.h
Purpose : FPGA CA-Emulation driver for "basic_loops"
Author  : goodkook@gmail.com
History : Aug. 2025, First release
***********************************************************************/

#ifndef _VBASIC_LOOPS_H_
#define _VBASIC_LOOPS_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Ebasic_loops)
{
    sc_in<bool>             ap_clk;
    sc_in<bool>             ap_rst;
    sc_in<bool>             ap_start;
    sc_out<bool>            ap_done;
    sc_out<bool>            ap_idle;
    sc_out<bool>            ap_ready;
    sc_out<sc_uint<4> >     A_address0;
    sc_out<bool>            A_ce0;
    sc_in<sc_uint<8> >      A_q0;
    sc_out<sc_uint<13> >    ap_return;

#define N_TX    2
#define N_RX    3

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                   DUT's output bitmap
//      +---------+-+-+-+                    +-------+-+-+-+-+
//  [0] |         |2|1|0|                [0] |7 6 5 4|3|2|1|0|
//      +---------+-+-+-+                    +----+--+-+-+-+-+
//                 | | |                          |   | | | |
//                 | | +---ap_rst                 |   | | | +---ap_done
//                 | +-----ap_start               |   | | +-----ap_idle
//                 +-------ap_clk                 |   | +-------ap_ready
//      +---------------+                         |   +---------A_ce0
//  [1] |7 6 5 4 3 2 1 0|                         +-------------A_address0[3:0]
//      +-------+-------+                    +---------------+
//              |                        [1] |7 6 5 4 3 2 1 0|
//              +---------A_q0[7:0]          +-------+-------+
//                                                   |
//                                                   +---------ap_return[7:0]
//                                           +-----+---------+
//                                       [2] |     |4 3 2 1 0|
//                                           +-----+----+----+
//                                                      |
//                                                      +------ap_return[12:8]

    inline void _EMU_IO_(void)
    {
        uint8_t x, y, txPacket[N_TX], rxPacket[N_RX];

        txPacket[0] = (uint8_t)(
                        (ap_rst.read()?   0x01:0x00) |
                        (ap_start.read()? 0x02:0x00) |
                        (ap_clk.read()?   0x04:0x00));
        txPacket[1] = (sc_uint<8>)A_q0.read();
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
        ap_done.write( (rxPacket[0] & 0x01)? true:false);
        ap_idle.write( (rxPacket[0] & 0x02)? true:false);
        ap_ready.write((rxPacket[0] & 0x04)? true:false);
        A_ce0.write(   (rxPacket[0] & 0x08)? true:false);
        A_address0.write((sc_uint<4>)(rxPacket[0]>>4));
        ap_return.write((sc_uint<13>)(((uint16_t)rxPacket[1] | (uint16_t)rxPacket[2]<<8) & 0x01FFF));
    }

    void dut_thread(void)
    {
        while(true)
        {
            // Positive edge Clock --------------------------------------
            wait(ap_clk.posedge_event());
            _EMU_IO_();

            // Negative edge Clock ----------------------------------------------
            wait(ap_clk.negedge_event());
            _EMU_IO_();
        }
    }

    void dut_method()
    {
        _EMU_IO_();
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(Ebasic_loops): ap_clk("ap_clk")
    {
        //SC_THREAD(dut_thread);
        //sensitive << ap_clk;

        SC_METHOD(dut_method);
        sensitive << ap_clk << ap_rst << ap_start << A_q0;

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
    
    ~Ebasic_loops(void)
    {
    }
};

#endif

