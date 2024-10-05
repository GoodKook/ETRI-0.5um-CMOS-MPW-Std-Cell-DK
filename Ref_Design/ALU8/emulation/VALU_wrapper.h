/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: VALU_wrapper.h
Purpose: SC wrapper for Emulating ALU8
Revision History: May. 2024
*******************************************************************************/
#ifndef _VALU_WRAPPER_H_
#define _VALU_WRAPPER_H_

#include "systemc.h"

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

/*******************************************************************************
Purpose: SystemC interface wrapper to emulate
*******************************************************************************/
SC_MODULE(VALU_wrapper)
{
    sc_in<bool>         clk;
    sc_in<bool>         reset;
    sc_in<uint32_t>     ABCmd_i;
    sc_in<bool>         LoadA_i;
    sc_in<bool>         LoadB_i;
    sc_in<bool>         LoadCmd_i;
    sc_out<uint32_t>    ACC_o;
    sc_out<bool>        Done_o;

#define N_TX    2
#define N_RX    2

    void emul_thread()
    {
        // Test-vector to DUT's Input ports
        uint8_t     txPacket[N_TX];
        // txPacket[0]: x|x|x|LoadA_i|LoadB_i|LoadCmd_i|RESET|CLK
        // txPacket[1]: ABCmd_i
        
        // Result-vector from DUT's output ports
        uint8_t     rxPacket[N_RX];
        // rxPacket[0]: x|x|x|x|x|x|x|Done_o
        // rxPacket[1]: ACC_o

        uint8_t     x, y;

        while(true)
        {
            //--------------------------------------------------------------
            wait(clk.posedge_event());
            
            txPacket[0] = (uint8_t)(clk.read()?      1:0) << 0 |
                          (uint8_t)(reset.read()?    1:0) << 1 |
                          (uint8_t)(LoadCmd_i.read()?1:0) << 2 |
                          (uint8_t)(LoadB_i.read()?  1:0) << 3 |
                          (uint8_t)(LoadA_i.read()?  1:0) << 4;
            txPacket[1] = (uint8_t)(ABCmd_i.read());

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

            Done_o.write((rxPacket[0] & 0x01)? true:false);
            ACC_o.write((uint32_t)rxPacket[1]);

            //--------------------------------------------------------------
            wait(clk.negedge_event());
            
            txPacket[0] = (uint8_t)(clk.read()?      1:0) << 0 |
                          (uint8_t)(reset.read()?    1:0) << 1 |
                          (uint8_t)(LoadCmd_i.read()?1:0) << 2 |
                          (uint8_t)(LoadB_i.read()?  1:0) << 3 |
                          (uint8_t)(LoadA_i.read()?  1:0) << 4;
            txPacket[1] = (uint8_t)(ABCmd_i.read());

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

            Done_o.write((rxPacket[0] & 0x01)? true:false);
            ACC_o.write((uint32_t)rxPacket[1]);
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(VALU_wrapper) : // constructor
        clk("clk"),
        reset("reset"),
        ABCmd_i("ABCmd_i"),
        ACC_o("ACC_o"),
        LoadA_i("LoadA_i"),
        LoadB_i("LoadB_i"),
        LoadCmd_i("LoadCmd_i"),
        Done_o("Done_o")
    {
        SC_THREAD(emul_thread);
        sensitive << clk;
 
        // Initialize emulator(Arduino on Serial port)
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            //return -1;
        }
        // Set up serial port
        options.c_cflag = B9600 | CS8 | CLOCAL | CREAD;
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
