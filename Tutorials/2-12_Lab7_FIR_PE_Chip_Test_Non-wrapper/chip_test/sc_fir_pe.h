/**********************************************************************
Filename: sc_fir_pe.h
Purpose : Test wrapper
          Chip Test of FIR PE (MyChip 2024-2)
Author  : goodkook@gmail.com
History : Jan. 2025, First release
***********************************************************************/

#ifndef _SC_FIR_PE_H_
#define _SC_FIR_PE_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(sc_fir_pe)
{
    sc_in<bool>             clk;
    sc_in<bool>             Rdy;
    sc_out<bool>            Vld;
    sc_in<sc_uint<8> >      Cin;
    sc_in<sc_uint<4> >      Xin;
    sc_out<sc_uint<4> >     Xout;
    sc_in<sc_uint<4> >      Yin;
    sc_out<sc_uint<4> >     Yout;

#define N_TX    3
#define N_RX    2

    void transact(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];

        txPacket[0] = ((uint8_t)Xin.read()<<4) | ((uint8_t)Yin.read() & 0x0F);
        txPacket[1] = ((uint8_t)(Cin.read()) & 0x7F);
        txPacket[2] = (((uint8_t)Rdy.read())? 0x01:0x00) | (((uint8_t)clk.read())? 0x02:0x00);

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

        Xout.write((sc_uint<4>)(rxPacket[0]>>4));
        Yout.write((sc_uint<4>)(rxPacket[0] & 0x0F));
        Vld.write(rxPacket[1]? true:false);

#ifdef LA_FIFO
        x  = txPacket[2]  & 0x02;       // clk
        x |= txPacket[2]  & 0x01;       // Rdy
        x |= rxPacket[1]?   0x04:0x00;  // Vld
        x |= (rxPacket[0]  & 0x01)<<4;  // Yout0
        x |= (rxPacket[0]  & 0x02)<<4;  // Yout1
        x |= (rxPacket[0]  & 0x04)<<4;  // Yout2
        x |= (rxPacket[0]  & 0x08)<<4;  // Yout3
        if((nWrite = write(la_fifo, &x, 1)) < 1)
            fprintf(stderr,"la_fifo: write error\n");
        else
            fflush(0);
#endif
    }
    
    void pe_thread(void)
    {

        while(true)
        {
            wait(clk.posedge_event());
            transact();
            wait(clk.negedge_event());
            transact();
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

#ifdef LA_FIFO
	int la_fifo, nWrite;
#endif

    SC_CTOR(sc_fir_pe):
        clk("clk"),
        Cin("Cin"), Xin("Xin"), Xout("Xout"),
        Yin("Yin"), Yout("Yout")
    {
        SC_THREAD(pe_thread);
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

#ifdef LA_FIFO
        la_fifo = open("la_fifo", O_WRONLY);
        if(la_fifo<0)
            fprintf(stderr,"la_fifo: open error\n");
#endif
    }
    
    ~sc_fir_pe(void)
    {
    }
};

#endif
