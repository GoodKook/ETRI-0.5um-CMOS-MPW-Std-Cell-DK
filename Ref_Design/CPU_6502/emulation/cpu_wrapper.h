/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: cpu_wrapper.h
Purpose: SC wrapper for Verilog 6502 CPU
Revision History: Jan. 5, 2024
*******************************************************************************/
#ifndef _CPU_WRAPPER_H_
#define _CPU_WRAPPER_H_

#include "systemc.h"

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

/*******************************************************************************
Purpose: SystemC/Emouator wrapper for Arlet's Verilog-6502
*******************************************************************************/
SC_MODULE(cpu_wrapper)
{
    sc_in<bool>         clk;
    sc_in<bool>         reset;
    sc_out<sc_bv<16> >  AB;
    sc_in<sc_bv<8> >    DI;
    sc_out<sc_bv<8> >   DO;
    sc_out<bool>        WE;
    sc_in<bool>         IRQ;
    sc_in<bool>         NMI;
    sc_in<bool>         RDY;

#define N_TX    2
#define N_RX    4

    void cpu_thread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];

        while(true)
        {
            //-------------------------------------------------------
            wait(clk.posedge_event());
            txPacket[0] = (uint8_t)(clk.read()?   0x10:0x00) |
                          (uint8_t)(RDY.read()?   0x08:0x00) |
                          (uint8_t)(NMI.read()?   0x04:0x00) |
                          (uint8_t)(IRQ.read()?   0x02:0x00) |
                          (uint8_t)(reset.read()? 0x01:0x00) ;
            txPacket[1] = (uint8_t)((sc_uint<8>)(DI.read()));

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

            AB.write((sc_bv<16>)((uint16_t)rxPacket[0]<<8 | (uint16_t)rxPacket[1]));
            DO.write((sc_bv<8>)rxPacket[2]);
            WE.write((rxPacket[3]&0x01)? true:false);

            //-------------------------------------------------------
            wait(clk.negedge_event());
            txPacket[0] = (uint8_t)(clk.read()?   0x10:0x00) |
                          (uint8_t)(RDY.read()?   0x08:0x00) |
                          (uint8_t)(NMI.read()?   0x04:0x00) |
                          (uint8_t)(IRQ.read()?   0x02:0x00) |
                          (uint8_t)(reset.read()? 0x01:0x00) ;
            txPacket[1] = (uint8_t)((sc_uint<8>)(DI.read()));
            
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
            
            AB.write((sc_bv<16>)((uint16_t)rxPacket[0]<<8 | (uint16_t)rxPacket[1]));
            DO.write((sc_bv<8>)rxPacket[2]);
            WE.write((rxPacket[3]&0x01)? true:false);
        }
    }

    sc_trace_file* fp;  // VCD file

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(cpu_wrapper):
        clk("clk"),
        reset("reset"),
        AB("AB"),
        DI("DI"),
        DO("DO"),
        WE("WE"),
        IRQ("IRQ"),
        NMI("NMI"),
        RDY("RDY")
    {
        SC_THREAD(cpu_thread);
        sensitive << clk;

        // VCD Trace
        fp = sc_create_vcd_trace_file("sc_cpu_wrapper_Emul");
        fp->set_time_unit(100, SC_PS);
        sc_trace(fp, clk, "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, DI, "DI");
        sc_trace(fp, DO, "DO");
        sc_trace(fp, WE, "WE");
        sc_trace(fp, IRQ, "IRQ");
        sc_trace(fp, NMI, "NMI");
        sc_trace(fp, RDY, "RDY");
        sc_trace(fp, AB, "AB");

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
    ~cpu_wrapper()
    {}

};

#endif
