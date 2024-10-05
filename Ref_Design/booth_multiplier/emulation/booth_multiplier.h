/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: booth_multiplier.h
Purpose: Emulation Wrapper, Modeling Interface for booth_multiplier
Revision History: Jun. 1, 2024
*******************************************************************************/
#ifndef _BOOTH_MULTIPLIER_H_
#define _BOOTH_MULTIPLIER_H_

#include "systemc"

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(booth_multiplier)
{
    // PORTS
    sc_in<bool>             clk;
    sc_in<bool>             select;
    sc_in<sc_uint<8> >      multIn;
    sc_out<sc_uint<16> >    product;

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

#define N_TX    2
#define N_RX    2

    void booth_multiplier_thread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];
        int nTx, nRx;
        
        while(true)
        {
            //-------------------------------------------------------
            wait(clk.posedge_event());
            // Assemble bitmap for emulator input byte. Refer to Verilog wrapper
            //  stimIn[0] = multiIn
            //  stimIn[1][0] = select
            txPacket[0] = (uint8_t)(multIn.read());
            txPacket[1] = (uint8_t)(select.read() & 0x01);

            // Send to Emulator
            for (int i=0; i<N_TX; i++)
            {
                x = txPacket[i];
                while(write(fd, &x, 1)<=0)  usleep(100);
            }
            // Receive from Emulator
            for (int i=0; i<N_RX; i++)
            {
                while(read(fd, &y, 1)<=0)   usleep(100);
                rxPacket[i] = y;
            }

            // Dis-assemble emulator output byte to Verilog wrapper
            product.write((uint16_t)rxPacket[1]<<8 | (uint16_t)rxPacket[0]);
        }
    }

    SC_CTOR(booth_multiplier) :   // Constructor
        clk("clk")
    {
        SC_THREAD(booth_multiplier_thread);
        sensitive << clk;

        //--------------------------------------------------------------
        // Set-up serial port communicating Arduino DUE USB-UART
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

};

#endif

