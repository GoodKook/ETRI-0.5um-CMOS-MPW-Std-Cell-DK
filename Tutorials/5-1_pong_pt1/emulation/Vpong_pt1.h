/**********************************************************************
Filename: Vpong_pt1.h
Purpose : FPGA CA-Emulation driver for "pong_pt1"
Author  : goodkook@gmail.com
History : Feb. 2025, First release
***********************************************************************/

#ifndef _VPONG_PT1_H_
#define _VPONG_PT1_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Vpong_pt1)
{
    sc_in<bool>         clk;
    sc_in<bool>         reset;
    sc_in<bool>         enable;
    sc_in<bool>         up;
    sc_in<bool>         down;
    sc_out<bool>        p_tick;
    sc_out<bool>        hsync;
    sc_out<bool>        vsync;
    sc_out<uint32_t>    rgb;    // 12-bits

#define N_TX    1
#define N_RX    2

    void dut_thread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];

        while(true)
        {
            // Positive edge Clock
            wait(clk.posedge_event());

            // DUT input bitmap
            txPacket[0] = (uint8_t) (
                            (reset.read()?  0x08:0x00) |
                            (enable.read()? 0x04:0x00) |
                            (up.read()?     0x02:0x00) |
                            (down.read()?   0x01:0x00));

            // Send to Emulator
            for (int i=0; i<N_TX; i++)
            {
                x = txPacket[i];
                //printf("Sending byte...\n");
                while(write(fd, &x, 1)<=0)  usleep(1);
            }
#ifdef EMULATION_CA
            // Receive from Emulator
            for (int i=0; i<N_RX; i++)
            {
                //printf("Receiving byte...\n");
                while(read(fd, &y, 1)<=0)   usleep(1);
                rxPacket[i] = y;
            }

            // DUT input bitmap
            p_tick.write( (rxPacket[1] & 0x40)? true : false);
            hsync.write(  (rxPacket[1] & 0x20)? true : false);
            vsync.write(  (rxPacket[1] & 0x10)? true : false);
            rgb.write(  // 12-bits
                    (uint32_t)(rxPacket[1] & 0x0F) << 8 |
                    (uint32_t)(rxPacket[0] & 0xFF) );
#endif
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(Vpong_pt1): clk("clk")
    {
        SC_THREAD(dut_thread);
        sensitive << clk;

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
    
    ~Vpong_pt1(void)
    {
    }
};

#endif

