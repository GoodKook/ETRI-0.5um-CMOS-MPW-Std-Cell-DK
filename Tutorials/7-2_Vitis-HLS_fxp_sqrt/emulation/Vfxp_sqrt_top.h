/**********************************************************************
Filename: Vfxp_sqrt_top.h
Purpose : FPGA CA-Emulation driver for "fxp_sqrt_top"
Author  : goodkook@gmail.com
History : Feb. 2025, First release
***********************************************************************/

#ifndef _Vfxp_sqrt_top_H_
#define _Vfxp_sqrt_top_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Vfxp_sqrt_top)
{
    sc_in<bool>         ap_clk;
    sc_in<bool>         ap_rst;
    sc_in<bool>         ap_start;
    sc_out<bool>        ap_done;
    sc_out<bool>        ap_idle;
    sc_out<bool>        ap_ready;
    sc_in<uint32_t>     in_val;
    sc_out<uint32_t>    ap_return;

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

    void dut_thread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];
        uint32_t    _ap_return;

        while(true)
        {
            // Positive edge Clock --------------------------------------
            wait(ap_clk.posedge_event());

            txPacket[0] = (uint8_t)(
                            (ap_rst.read()?      0x01:0x00) |
                            (ap_start.read()?    0x02:0x00) |
                            (ap_clk.read()?      0x08:0x00));
            txPacket[1] = (uint8_t)(in_val.read()       & 0x0000FF);
            txPacket[2] = (uint8_t)(in_val.read() >> 8  & 0x0000FF);
            txPacket[3] = (uint8_t)(in_val.read() >> 16 & 0x0000FF);
            // [Send to Emulator]
            for (int i=0; i<N_TX; i++)
            {
                x = txPacket[i];
                //printf("Sending byte...\n");
                while(write(fd, &x, 1)<=0)  usleep(1);
            }
            // [Receive from Emulator]
            for (int i=0; i<N_RX; i++)
            {
                //printf("Receiving byte...\n");
                while(read(fd, &y, 1)<=0)   usleep(1);
                rxPacket[i] = y;
            }
            _ap_return  = ((uint32_t)rxPacket[0]);
            _ap_return |= ((uint32_t)rxPacket[1] << 8);
            _ap_return |= ((uint32_t)rxPacket[2] << 16);
            _ap_return |= ((uint32_t)rxPacket[3] << 24);
            ap_return.write(_ap_return & 0x0FFFFFFF);   // 28-bits
            ap_done.write( (rxPacket[3] & 0x10)? true:false);
            ap_idle.write( (rxPacket[3] & 0x20)? true:false);
            ap_ready.write((rxPacket[3] & 0x40)? true:false);

            // Negative edge Clock ----------------------------------------------
            wait(ap_clk.negedge_event());

            txPacket[0] = (uint8_t)(
                (ap_rst.read()?      0x01:0x00) |
                (ap_start.read()?    0x02:0x00) |
                (ap_clk.read()?      0x08:0x00));
            txPacket[1] = (uint8_t)(in_val.read()       & 0x0000FF);
            txPacket[2] = (uint8_t)(in_val.read() >> 8  & 0x0000FF);
            txPacket[3] = (uint8_t)(in_val.read() >> 16 & 0x0000FF);
            // [Send to Emulator]
            for (int i=0; i<N_TX; i++)
            {
                x = txPacket[i];
                //printf("Sending byte...\n");
                while(write(fd, &x, 1)<=0)  usleep(1);
            }
            // [Receive from Emulator]
            for (int i=0; i<N_RX; i++)
            {
                //printf("Receiving byte...\n");
                while(read(fd, &y, 1)<=0)   usleep(1);
                rxPacket[i] = y;
            }
            _ap_return  = ((uint32_t)rxPacket[0]);
            _ap_return |= ((uint32_t)rxPacket[1] << 8);
            _ap_return |= ((uint32_t)rxPacket[2] << 16);
            _ap_return |= ((uint32_t)rxPacket[3] << 24);
            ap_return.write(_ap_return & 0x0FFFFFFF);   // 28-bits
            ap_done.write( (rxPacket[3] & 0x10)? true:false);
            ap_idle.write( (rxPacket[3] & 0x20)? true:false);
            ap_ready.write((rxPacket[3] & 0x40)? true:false);
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(Vfxp_sqrt_top): ap_clk("ap_clk")
    {
        SC_THREAD(dut_thread);
        sensitive << ap_clk;

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
    }
    
    ~Vfxp_sqrt_top(void)
    {
    }
};

#endif

