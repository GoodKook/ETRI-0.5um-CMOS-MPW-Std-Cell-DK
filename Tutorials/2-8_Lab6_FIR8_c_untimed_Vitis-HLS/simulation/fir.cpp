
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

bool fir(uint8_t* Xin, uint16_t* Yout)
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
    for (int i=0; i<N_SAMPLE; i++)
    {
        if (i==0)
            fprintf(stderr, "Sending......\n");
        _tx = Xin[i];
        while(write(fd, &_tx, 1)<=0)  usleep(1);
        while(read(fd, &_rx, 1)<=0)   usleep(1);
        if (_tx!=_rx)
        {
            fprintf(stderr, "COMM Error\n");
            return false;
        }
    }

    fprintf(stderr, "Waiting......\n");

    // Receive from Emulator
    for (int i=0; i<N_SAMPLE; i++)
    {
        while(read(fd, &_rx, 1)<=0)   usleep(1);
        _Yout = (uint16_t)_rx;
        while(read(fd, &_rx, 1)<=0)   usleep(1);
        _Yout |= ((uint16_t)_rx<<8);
        Yout[i] = _Yout;
        if (i==0)
            fprintf(stderr, "Receiving......\n");
    }

    return true;
}

int main()
{
    int         fir_fifo;
    uint8_t     Xin[N_SAMPLE];
    uint16_t    Yout[N_SAMPLE];

    srand(time(NULL));
    for (int i=0; i<N_SAMPLE; i++)
        Xin[i] = (uint8_t)rand();

    fir(Xin, Yout);

    // Connect Python plot via FIFO
    fir_fifo = open("fir_fifo", O_WRONLY);

    for (int i=0; i<N_SAMPLE; i++)
    {
        fprintf(stderr, "Y[%d]=%d\n", i, Yout[i]);

        if (fir_fifo>0)
        {
            unsigned short _x = Xin[i];
            unsigned short _y = Yout[i];
            
            write(fir_fifo, &_x, sizeof(short));
            write(fir_fifo, &_y, sizeof(short));
        }
}

    return 0;
}
