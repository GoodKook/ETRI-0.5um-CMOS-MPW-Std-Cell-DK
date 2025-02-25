/**********************************************************************
Filename: EALU8_Mult.h
Purpose : PSCE-MI driver
Author  : goodkook@gmail.com
History : Feb. 2025, First release
***********************************************************************/

#ifndef _EALU8_MULT_H_
#define _EALU8_MULT_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(EALU8_Mult)
{
    sc_in<bool>         clk;
    sc_in<bool>         reset;
    sc_in<uint32_t>     ABCmd_i;
    sc_in<bool>         LoadA_i;
    sc_in<bool>         LoadB_i;
    sc_in<bool>         LoadCmd_i;
    sc_in<bool>         MulL_i;
    sc_in<bool>         MulH_i;
    sc_in<bool>         Flag_i;
    sc_out<uint32_t>    ACC_o;

#define N_TX    2   // # of byte to DUT
#define N_RX    1   // # of byte from DUT

    void dut_thread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];

        while(true)
        {
            // Positive edge Clock
            wait(clk.posedge_event());
            txPacket[0] =  (uint8_t)(
                            (reset.read()?       0x01 : 0x00) |
                            (LoadA_i.read()?     0x02 : 0x00) |
                            (LoadB_i.read()?     0x04 : 0x00) |
                            (LoadCmd_i.read()?   0x08 : 0x00) |
                            (MulL_i.read()?      0x10 : 0x00) |
                            (MulH_i.read()?      0x20 : 0x00) |
                            (Flag_i.read()?      0x40 : 0x00));
            txPacket[1] = (uint8_t)ABCmd_i.read();

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

            ACC_o.write((uint32_t)rxPacket[0]);
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(EALU8_Mult):
        clk("clk"),
        reset("reset"),
        ABCmd_i("ABCmd_i"),
        LoadA_i("LoadA_i"),
        LoadB_i("LoadB_i"),
        LoadCmd_i("LoadCmd_i"),
        MulL_i("MulL_i"),
        MulH_i("MulH_i"),
        Flag_i("Flag_i"),
        ACC_o("ACC_o")
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
    
    ~EALU8_Mult(void)
    {
    }
};

#endif
