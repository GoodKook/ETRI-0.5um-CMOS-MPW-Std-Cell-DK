/* -----------------------------------------------------------
Filename : fir8.c
Purpose  : Emulation Wrapper for FIR Filter @ Arduino DUE (ARM Core)
Author   : goodkook@gmail.com
History  : Aug. 2025, First Release
-------------------------------------------------------------- */

#include "fir8.h"

bool fir(acc_t* Yout, data_t Xin)
{
    uint8_t     _tx, _rx;
    uint16_t    _Yout;

    //------------------------------------------------------------------
    // Connect Arduino via Serial Port
    //------------------------------------------------------------------
    static int fd = 0; // Serial port file descriptor
    if (fd<=0)
    {
        // Arduino Serial IF
        struct termios options; // Serial port setting

        // Arduino DUT
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            return fd;
        }
        // Set up serial port
        options.c_cflag = CS8 | CLOCAL | CREAD | B9600;
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
            len = write(fd, &rx, 1);
        fprintf(stderr, "Connection established...\n");
        //usleep(100);
    }
    //------------------------------------------------------------------
    // Send to Emulator
    //------------------------------------------------------------------
    //fprintf(stderr, "Sending......\n");
    _tx = Xin;
    while(write(fd, &_tx, 1)<=0)  usleep(10);
    while(read(fd, &_rx, 1)<=0)   usleep(10);
    if (_tx != _rx) // Loop-Back Test
    {
        fprintf(stderr, "COMM Error......\n");
        return false;
    }
    //------------------------------------------------------------------
    // Receive from Emulator
    //------------------------------------------------------------------
    //fprintf(stderr, "Receiving......\n");
    while(read(fd, &_rx, 1)<=0)   usleep(10);
    _Yout = (uint16_t)_rx;
    while(read(fd, &_rx, 1)<=0)   usleep(10);
    _Yout |= ((uint16_t)_rx<<8);

    *Yout = _Yout;

    return true;
}

