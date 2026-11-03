/**********************************************************************
Filename: Efir8.h
Purpose : Wrapper for FPGA Emulated "fir8" module 
Author  : goodkook@gmail.com
History : Aug. 2026, First release
***********************************************************************/

#ifndef _Efir8_H_
#define _Efir8_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Efir8)
{
    sc_in<bool>         clk;        // 시스템 클록
    sc_in<bool>         rst_n;      // 비동기 액티브 로우 리셋
    sc_in<bool>         in_valid;   // 입력 데이터 유효 신호
    sc_in<sc_uint<8> >  x;          // 8비트 입력 데이터 (data_t)
    sc_out<bool>        out_valid;  // 출력 데이터 유효 신호
    sc_out<sc_uint<8> > y;          // 8비트 최적화 출력 데이터 (data_t)

#define N_TX    2
#define N_RX    2

// Emulation Transactor ----------------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +---------+-+-+-+               +-------------+-+
//  [0] |7 6 5 4 3|2|1|0|           [0] |7 6 5 4 3 2 1|0|
//      +---------+-+-+-+               +-------------+-+
//                 | | |                               |
//                 | | +---in_valid                    +---out_valid
//                 | +---rst_n          +---------------+
//                 +---clk          [1] |7 6 5 4 3 2 1 0|
//       +---------------+              +-------+-------+
//   [1] |7 6 5 4 3 2 1 0|                      |
//       +-------+-------+                      +---y[7:0]
//               |
//               +---x[7:0]
//

    inline void _EMU_IO_(void)
    {
        uint8_t _Rx_, _Tx_, _txPacket_[N_TX], _rxPacket_[N_RX];

        _txPacket_[0] = (uint8_t)(
                        (in_valid.read()?   0x01:0x00) |
                        (rst_n.read()?      0x02:0x00) |
                        (clk.read()?        0x04:0x00));
        _txPacket_[1] = (uint8_t)(x.read());

        // Send to Emulator
        for (int i=0; i<N_TX; i++)
        {
            //fprintf(stderr, "Tx: %02X\n", _txPacket_[i]);
            _Tx_ = _txPacket_[i];
            while(write(fd, &_Tx_, 1)<=0)  usleep(1);
        }

        // Receive from Emulator
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &_Rx_, 1)<=0)   usleep(1);
            _rxPacket_[i] = _Rx_;
            //fprintf(stderr, "Rx: %02X\n", _rxPacket_[i]);
        }

        out_valid.write((_rxPacket_[0] & 0x01)? true:false);
        y.write((sc_uint<8>)_rxPacket_[1]);
    }

    //
    // Cycle-Accurate(CA) Output Monitor
    //
    void Efir8_CA_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();
            //wait(clk.negedge_event());
            //_EMU_IO_();
        }
    }

    void Efir8_method(void)
    {
        _EMU_IO_();
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file

    SC_CTOR(Efir8): clk("clk")
    {
        SC_THREAD(Efir8_CA_thread);
        sensitive << clk;
//        SC_METHOD(Efir8_method);
//        sensitive << clk << rst_n << in_valid << x;
        // WAVE ----------------------------------------------------------
        fp = sc_create_vcd_trace_file("Efir8");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,       "clk");
        sc_trace(fp, rst_n,     "rst_n");
        sc_trace(fp, in_valid,  "in_valid");
        sc_trace(fp, x,         "x");
        sc_trace(fp, out_valid, "out_valid");
        sc_trace(fp, y,         "y");

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
    
    ~Efir8(void)
    {
    }
};

#endif

