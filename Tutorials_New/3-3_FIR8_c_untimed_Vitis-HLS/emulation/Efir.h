/**********************************************************************
Filename: Efir.h
Purpose : FPGA wrapper & Driver for Emulated Systolic FIR filter
            Verilated model at ../simulation/obj_dir/Vfir.h
Author  : goodkook@gmail.com
History : Feb. 2025, First release
***********************************************************************/

#ifndef _EFIR_H_
#define _EFIR_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Efir)
{
    sc_in<bool>             ap_clk;
    sc_in<bool>             ap_rst;
    sc_in<bool>             ap_start;
    sc_out<bool>            ap_done;
    sc_out<bool>            ap_idle;
    sc_out<bool>            ap_ready;
    sc_out<bool>            y_ap_vld;
    sc_in<sc_uint<8> >      x;
    sc_out<sc_uint<16> >    y;

// # of DUT's IN/OUT in Byte
// For bit-map, see Verilog Wrapper, fir_wrapper.v
#define N_TX    2
#define N_RX    3
// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +-------+-+-+-+-+                         +---------------+---------------+
//  [0] |7 6 5 4|3|2|1|0|                   [1:0] |7 6 5 4 3 2 1 0|7 6 5 4 3 2 1 0|
//      +-------+-+-+-+-+                         +-------------------------------+
//               |   | |                                          |
//               |   | +---ap_rst                                 +---y[15:0]
//               |   +-----ap_start               +-----+-+-+-+---+
//               |                            [2] |     |4|3|2|1|0|
//               +---------(ap_clk)               +-----+-+-+-+-+-+
//                                                         | | | |
//      +---------------+                                  | | | +-----ap_done
//  [1] |7 6 5 4 3 2 1 0|                                  | | +-------ap_idle
//      +-------+-------+                                  | +---------ap_ready
//              |                                          +-----------y_ap_vld
//              +---------x[7:0]
//

inline void _EMU_IO_(void)
    {
        uint8_t tx, rx, txPacket[N_TX], rxPacket[N_RX];

        txPacket[0]  = ap_rst.read()?   0x01 : 0x00;
        txPacket[0] |= ap_start.read()? 0x02 : 0x00;
        txPacket[0] |= ap_clk.read()?   0x08 : 0x00;
        txPacket[1] = (uint8_t)(x.read());

        // Send to Emulator
        for (int i=0; i<N_TX; i++)
        {
            tx = txPacket[i];
            while(write(fd, &tx, 1)<=0)  usleep(1);
        }
        // Receive from Emulator
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &rx, 1)<=0)   usleep(1);
            rxPacket[i] = rx;
        }

        y.write((sc_uint<16>)((rxPacket[1]<<8) | rxPacket[0]));
        y_ap_vld.write((bool)(rxPacket[2]&0x08)? true:false);
        ap_ready.write((bool)(rxPacket[2]&0x04)? true:false);
        ap_idle.write( (bool)(rxPacket[2]&0x02)? true:false);
        ap_done.write( (bool)(rxPacket[2]&0x01)? true:false);
    }

    void Efir_thread(void)
    {
        while(true)
        {
            // Positive edge Clock
            wait(ap_clk.posedge_event());
            _EMU_IO_();
            // Negative edge Clock
            wait(ap_clk.negedge_event());
            _EMU_IO_();
        }
    }

    void Efir_method(void)
    {
        _EMU_IO_();
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(Efir): ap_clk("ap_clk")
    {
        //SC_THREAD(Efir_thread);
        //sensitive << ap_clk;

        SC_METHOD(Efir_method);
        sensitive << x << ap_rst << ap_start << ap_clk;

        // Arduino DUT
        fprintf(stderr, "Opening emulator port......\n");
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            return;
        }
        // Set up serial port
        //options.c_cflag = B115200 | CS8 | CLOCAL | CREAD;
        options.c_cflag = UART_BPS| CS8 | CLOCAL | CREAD;
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
    
    ~Efir(void)
    {
    }
};

#endif

