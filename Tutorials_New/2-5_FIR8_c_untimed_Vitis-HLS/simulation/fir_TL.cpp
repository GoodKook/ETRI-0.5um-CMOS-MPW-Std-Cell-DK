
// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

#include <stdint.h>
#include <math.h>
#include <time.h>

#define N_SAMPLE    4800

bool fir(uint8_t Xin, uint16_t* Yout)
{
    static int fd = 0; // Serial port file descriptor
    if (fd==0)
    {
        // Arduino Serial IF
        struct termios options; // Serial port setting

        // Arduino DUT
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            return false;
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
            len = write(fd, &rx, 1);
        fprintf(stderr, "Connection established...\n");
    }

    uint8_t     _tx, _rx;
    uint16_t    _Yout;

    // Send to Emulator
    //fprintf(stderr, "Sending......\n");
    _tx = Xin;
    while(write(fd, &_tx, 1)<=0)  usleep(1);
    while(read(fd, &_rx, 1)<=0)   usleep(1);
    if (_tx!=_rx)
    {
        fprintf(stderr, "COMM Error\n");
        return false;
    }

    // Receive from Emulator
    //fprintf(stderr, "Receiving......\n");
    while(read(fd, &_rx, 1)<=0)   usleep(1);
    _Yout = (uint16_t)_rx;
    while(read(fd, &_rx, 1)<=0)   usleep(1);
    _Yout |= ((uint16_t)_rx<<8);

    *Yout = _Yout;

    return true;
}

int main()
{
    int         fir_fifo;
    uint16_t    Xin;
    uint16_t    Yout;

    bool bRet = false;

    // Connect Python plot via FIFO
    fir_fifo = open("fir_fifo", O_WRONLY);

    srand(time(NULL));
    for (int i=0; i<N_SAMPLE; i++)
    {
        Xin = (uint8_t)rand();

        bRet = fir((uint8_t)Xin, &Yout);
        if (!bRet)  break;

        fprintf(stderr, "Y[%d]=%d\n", i, Yout);

        if (fir_fifo>0)
        {
            write(fir_fifo, &Xin, sizeof(short));
            write(fir_fifo, &Yout, sizeof(short));
        }
    }

    fprintf(stderr, "Wait for Python Visualization.........\n");

    return 0;
}
