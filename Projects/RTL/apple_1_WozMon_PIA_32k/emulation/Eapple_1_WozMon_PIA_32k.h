/**********************************************************************
Filename: Eapple_1_WozMon_PIA_32k.h
Purpose : Wrapper for FPGA Emulated apple_1_WozMon_PIA_32k
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _Eapple_1_WozMon_PIA_32k_H_
#define _Eapple_1_WozMon_PIA_32k_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Eapple_1_WozMon_PIA_32k)
{
    sc_in<bool>             clk;
    sc_in<bool>             reset;
    sc_in<sc_uint<8> >      DI;
    sc_out<sc_uint<8> >     DO;
    sc_out<bool>            WE;
    sc_in<bool>             IRQ;
    sc_in<bool>             NMI;
    sc_in<bool>             RDY;
    sc_out<sc_uint<16> >    AB;
    sc_in<bool>             kbd_rdy;
    sc_in<bool>             dsp_ack;
    sc_in<sc_uint<7> >      kbd_data;   // ASCII
    sc_out<bool>            kbd_ack;
    sc_out<bool>            dsp_rdy;
    sc_out<sc_uint<7> >     dsp_data;   // ASCII
    sc_in<bool>             emu_en;
    sc_in<bool>             emu_clk;
    sc_in<bool>             emu_we;
    sc_in<sc_uint<8> >      emu_di;
    sc_out<sc_uint<8> >     emu_do;
    sc_in<sc_uint<15> >     emu_addr;

#define N_TX    7
#define N_RX    6

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +-+-+-+-+-+-+-+-+                       +---------+-+-+-+
//  [0] | |6|5|4|3|2|1|0|                   [0] |         |2|1|0|
//      +-+-+-+-+-+-+-+-+                       +---------+-+-+-+
//         | | | | | | |                                   | | |
//         | | | | | | +---clk                             | | +---WE
//         | | | | | +---reset                             | +---kbd_ack
//         | | | | +---IRQ                                 +---dsp_rdy
//         | | | +---NMI                        +---------------+
//         | | +---RDY                      [1] |7 6 5 4 3 2 1 0|
//         | +---kbd_rdy                        +-------+-------+
//         +---dsp_ack                                  |
//      +---------------+                               +---DO[7:0]
//  [1] |7 6 5 4 3 2 1 0|                       +---------------+
//      +-------+-------+                   [2] |7 6 5 4 3 2 1 0|
//              |                               +-------+-------+
//              +-----DI[7:0]                           |
//                                                      +---AB[7:0]
//      +-+-------------+                       +---------------+
//  [2] | |6 5 4 3 2 1 0|                   [3] |7 6 5 4 3 2 1 0|
//      +-+-----+-------+                       +-------+-------+
//              |                                       |
//              +---kbd_data[6:0]                       +---AB[15:8]
//                                              +-+-------------+
//                                          [4] | |6 5 4 3 2 1 0|
//                                              +-+-----+-------+
//                                                      |
//                                                      +---dsp_data[6:0]
//      +---------+-+-+-+                       +---------------+
//  [3] |         |2|1|0|                   [5] |7 6 5 4 3 2 1 0|
//      +---------+-+-+-+                       +-------+-------+
//                 | | |                                |
//                 | | +---emu_en                       +---emu_do[7:0]
//                 | +---emu_clk
//                 +---emu_we
//      +---------------+
//  [4] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[7:0]
//      +-+-------------+
//  [5] | |6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[14:8]
//      +---------------+
//  [6] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_di
//

    inline void _EMU_IO_(void)
    {
        uint8_t _Rx_, _Tx_, _txPacket_[N_TX], _rxPacket_[N_RX];

        _txPacket_[0]  = (uint8_t)(clk.read()?      0x01:0x00);
        _txPacket_[0] |= (uint8_t)(reset.read()?    0x02:0x00);
        _txPacket_[0] |= (uint8_t)(IRQ.read()?      0x04:0x00);
        _txPacket_[0] |= (uint8_t)(NMI.read()?      0x08:0x00);
        _txPacket_[0] |= (uint8_t)(RDY.read()?      0x10:0x00);
        _txPacket_[0] |= (uint8_t)(kbd_rdy.read()?  0x20:0x00);
        _txPacket_[0] |= (uint8_t)(dsp_ack.read()?  0x40:0x00);
        _txPacket_[1]  = (uint8_t)(DI.read());
        _txPacket_[2]  = (uint8_t)(kbd_data.read());
        _txPacket_[3]  = (uint8_t)(emu_en.read()?   0x01:0x00);
        _txPacket_[3] |= (uint8_t)(emu_clk.read()?  0x02:0x00);
        _txPacket_[3] |= (uint8_t)(emu_we.read()?   0x04:0x00);
        _txPacket_[4]  = (uint8_t)(emu_addr.read());
        _txPacket_[5]  = (uint8_t)(emu_addr.read()>>8);
        _txPacket_[6]  = (uint8_t)(emu_di.read());

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

        WE.write((_rxPacket_[0]&0x01)? true:false);
        kbd_ack.write((_rxPacket_[0]&0x02)? true:false);
        dsp_rdy.write((_rxPacket_[0]&0x04)? true:false);
        DO.write((sc_uint<8>)_rxPacket_[1]);
        AB.write((sc_uint<16>)_rxPacket_[2] | (sc_uint<16>)_rxPacket_[3]<<8);
        dsp_data.write((sc_uint<8>)_rxPacket_[4]);
        emu_do.write((sc_uint<8>)_rxPacket_[5]);
    }

    void apple_1_WozMon_PIA_32k_method(void)
    {
        _EMU_IO_();
    }

    void apple_1_WozMon_PIA_32k_thread(void)
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

    SC_CTOR(Eapple_1_WozMon_PIA_32k): clk("clk")
    {
//        SC_THREAD(apple_1_WozMon_PIA_32k_thread);
//        sensitive << clk;

        SC_METHOD(apple_1_WozMon_PIA_32k_method);
        sensitive << clk << emu_clk << emu_en;   // << reset << RDY << NMI << IRQ << DI;

#ifdef VCD_TRACE_TEST_TB
        // WAVE ----------------------------------------------------------
        fp = sc_create_vcd_trace_file("Eapple_1_WozMon_PIA_32k");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, reset,     "reset");
        sc_trace(fp, DI,        "DI");
        sc_trace(fp, DO,        "DO");
        sc_trace(fp, WE,        "WE");
        sc_trace(fp, IRQ,       "IRQ");
        sc_trace(fp, NMI,       "NMI");
        sc_trace(fp, RDY,       "RDY");
        sc_trace(fp, AB,        "AB");
        sc_trace(fp, kbd_rdy,   "kbd_rdy");
        sc_trace(fp, dsp_ack,   "dsp_ack");
        sc_trace(fp, kbd_data,  "kbd_data");
        sc_trace(fp, kbd_ack,   "kbd_ack");
        sc_trace(fp, dsp_rdy,   "dsp_rdy");
        sc_trace(fp, dsp_data,  "dsp_data");
#endif
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
    
    ~Eapple_1_WozMon_PIA_32k(void)
    {
    }
};

#endif

