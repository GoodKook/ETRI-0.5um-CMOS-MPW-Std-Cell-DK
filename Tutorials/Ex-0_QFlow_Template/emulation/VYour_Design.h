/**********************************************************************
Filename: VYour_Design.h
Purpose : FPGA CA-Emulation driver for "your_design"
Author  : goodkook@gmail.com
History : Feb. 2025, First release
***********************************************************************/

#ifndef _VYOUR_DESIGN_H_
#define _VYOUR_DESIGN_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(VYour_Design)
{
    sc_in<bool>     clk;
    sc_in<bool>     reset;
    sc_in<bool>     enable;
    sc_in<bool>     up;
    sc_in<bool>     down;
    sc_out<bool>    p_tick;
    sc_out<bool>    hsync;
    sc_out<bool>    vsync;
    sc_out<bool>    pixel;

#define N_TX    1
#define N_RX    1

    void dut_thread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];
        bool _up=false, _down=false;

        while(true)
        {
            // Positive edge Clock
            wait(clk.posedge_event());

#if defined(EMULATION_SA)
            if (up.read()!=_up || down.read()!=_down)
            {
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
                    while(write(fd, &x, 1)<=0)  usleep(1);
                }
                _up = up.read();
                _down = down.read();
            }
#elif defined(EMULATION_CA)
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
            // Receive from Emulator
            for (int i=0; i<N_RX; i++)
            {
                //printf("Receiving byte...\n");
                while(read(fd, &y, 1)<=0)   usleep(1);
                rxPacket[i] = y;
            }

            // DUT output bitmap
            p_tick.write((rxPacket[0] & 0x08)? true : false);
            hsync.write( (rxPacket[0] & 0x04)? true : false);
            vsync.write( (rxPacket[0] & 0x02)? true : false);
            pixel.write( (rxPacket[0] & 0x01)? true : false);
#else
#error "EMULATION Mode(CA|SA) NOT defined"
#endif
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(VYour_Design): clk("clk")
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
    
    ~VYour_Design(void)
    {
    }
};

#endif

