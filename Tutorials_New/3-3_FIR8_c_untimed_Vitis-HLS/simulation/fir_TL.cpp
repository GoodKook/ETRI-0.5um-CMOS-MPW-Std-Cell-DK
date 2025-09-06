// *********************************************************
// Filename: fir_TL.cpp
// Purpose : Transactional fir()
// Author  : goodkook@gmail.com
// History : Sep. 2025, First release
// *********************************************************

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#include <sys/stat.h>   // FIFO

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
        fprintf(stderr, "Request emulator connection......\n");
        unsigned char _rx, _tx = 'A';
        while(write(fd, &_tx, 1)<=0)  usleep(10);
        while(read(fd, &_rx, 1)<=0)   usleep(10);
        if (_rx=='A')
            fprintf(stderr, "Connection established...\n");
        else
        {
            fprintf(stderr, "Connection failed...\n");
            return false;
        }
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
    int     fir_fifo;
    char*   szFifo = (char*)"fir_fifo";

    struct timespec start, end;
    double time_spent;

    uint16_t    Xin;
    uint16_t    Yout;

    bool bRet = false;

    // Connect Python plot via FIFO
    mkfifo(szFifo, 0666);
    fir_fifo = open(szFifo, O_WRONLY);
    if(fir_fifo<0)
        fprintf(stderr,"fir_fifo: open error\n");

    // Measure start time
    clock_gettime(CLOCK_MONOTONIC, &start);

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

    // Measure running time
    clock_gettime(CLOCK_MONOTONIC, &end);
    time_spent = (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / 1000000000.0;
    printf("=====================================================\n");
    printf("fir: %f seconds to execute (Monotonic time).\n", time_spent);
    printf("=====================================================\n");

        unlink(szFifo); 
    return 0;
}
