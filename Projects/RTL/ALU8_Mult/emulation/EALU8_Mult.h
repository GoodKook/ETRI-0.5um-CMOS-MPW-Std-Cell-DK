/**********************************************************************
Filename: EALU8_Mult.h
Purpose : Wrapper for FPGA Emulated ALU8_Mult
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _EALU8_Mult_H_
#define _EALU8_Mult_H_

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
    sc_in<sc_uint<8> >  ABCmd_i;
    sc_in<bool>         LoadA_i;
    sc_in<bool>         LoadB_i;
    sc_in<bool>         LoadCmd_i;
    sc_out<sc_uint<8> > ACC_o;
    sc_out<bool>        Done_o;

#define N_TX    2
#define N_RX    2

// Emulation Transactor ----------------------------------------
// ALU8_Mult
// DUT's input bitmap             DUT's output bitmap
//      +-----+-+-+-+-+-+             +-------------+-+
//  [0] |7 6 5|4|3|2|1|0|         [0] |7 6 5 4 3 2 1|0|
//      +-----+-+-+-+-+-+             +-------------+-+
//             | | | | |                             |
//             | | | | +---clk                       +---Done_o
//             | | | +---reset
//             | | +---LoadA_i
//             | +---LoadB_i
//             +---LoadCmd_i
//      +---------------+             +---------------+
//  [1] |7 6 5 4 3 2 1 0|         [1] |7 6 5 4 3 2 1 0|
//      +---------------+             +---------------+
//              |                             |
//              +---ABCmd_i[7:0]              +---ACC_o[7:0]
//
    inline void _EMU_IO_(void)
    {
        uint8_t _Rx_, _Tx_, _txPacket_[N_TX], _rxPacket_[N_RX];

        _txPacket_[0] =
            ((uint8_t)(clk.read()?       0x01:0x00))|
            ((uint8_t)(reset.read()?     0x02:0x00))|
            ((uint8_t)(LoadA_i.read()?   0x04:0x00))|
            ((uint8_t)(LoadB_i.read()?   0x08:0x00))|
            ((uint8_t)(LoadCmd_i.read()? 0x10:0x00));
        _txPacket_[1] = (uint8_t)(ABCmd_i.read());

        // Send to Emulator
        for (int i=0; i<N_TX; i++)
        {
            _Tx_ = _txPacket_[i];
            while(write(fd, &_Tx_, 1)<=0)  usleep(1);
        }
        // Receive from Emulator
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &_Rx_, 1)<=0)   usleep(1);
            _rxPacket_[i] = _Rx_;
        }

        Done_o.write((_rxPacket_[0]&0x01)? true:false);
        ACC_o.write((sc_uint<8>)_rxPacket_[1]);
    }

    void ALU8_Mult_method(void)
    {
        _EMU_IO_();
    }

    void ALU8_Mult_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file

    SC_CTOR(EALU8_Mult):
        clk("clk")
    {
//        SC_THREAD(ALU8_Mult_thread);
//        sensitive << clk;

        SC_METHOD(ALU8_Mult_method);
        sensitive
            << clk
            << reset
            << ABCmd_i
            << LoadA_i
            << LoadB_i
            << LoadCmd_i;

        // WAVE ----------------------------------------------------------
        fp = sc_create_vcd_trace_file("EALU8_Mult");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, reset,     "reset");
        sc_trace(fp, ABCmd_i,   "ABCmd_i");
        sc_trace(fp, LoadA_i,   "LoadA_i");
        sc_trace(fp, LoadB_i,   "LoadB_i");
        sc_trace(fp, LoadCmd_i, "LoadCmd_i");
        sc_trace(fp, ACC_o,     "ACC_o");
        sc_trace(fp, Done_o,    "Done_o");

        // Connecting Arduino DUT -----------------------------------------
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
    
    ~EALU8_Mult(void)
    {
    }
};

#endif

