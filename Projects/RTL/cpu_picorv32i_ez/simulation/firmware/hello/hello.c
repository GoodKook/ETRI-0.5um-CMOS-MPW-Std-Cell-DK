//
// Filename: hello.c
//  "Hello world" for PicoRV32 Core
//
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "../../defs.h"

void _putc(char c)
{
    char *outport = (char*)(DISPLAY_PORT);
    
    *outport = c;
}

void _puts(char* ptr)
{
    int i=0;
    
    while(ptr[i])
    {
        _putc(ptr[i]);
        i++;
    }
}

unsigned char _getc(void)
{
    char *inport = (char*)(KEYBOARD_PORT);
    
    return(*inport);
}

void main(void)
{
    char szBuffer[128] = "\nHello World!\nmessage from picoRV32 core with gnu-toolchain\n";
    _puts(szBuffer);

    _puts((char*)"**** String Lib. Test ****\n");
    sprintf(szBuffer, "String Length=%d\n", strlen(szBuffer));
    _puts(szBuffer);

    strcpy(szBuffer, "****** Math Lib. Test ******\n");
    _puts(szBuffer);

    for (int x=0; x<10; x++)
    {
        sprintf(szBuffer, "****** Mult: %d ******\n", x);
        _puts(szBuffer);
        for(int y=0; y<10; y++)
        {
            sprintf(szBuffer, "%d x %d = %d\n", x, y, x*y);
            _puts(szBuffer);
        }
    }

    long int r, pi, area;
    
    r = 700;
    pi = 3140;
    area = pi * r * r;
    
    sprintf(szBuffer, "radius = %d, area = %d\n", r, area);
    _puts(szBuffer);
    
    //double area, r = 0.7;
    //area = M_PI * r * r;
    //
    //sprintf(szBuffer, "radius = %f, area = %f\n", r, area);
    //_puts(szBuffer);
    
    //double theta;
    //for (theta=0.0; theta < M_PI/2.0; theta += (M_PI/2.0)/16.0)
    //{
	//    sprintf(szBuffer,"Sin(%f) = %f | Cos(%f) = %f\n", theta, sin(theta), theta, cos(theta));
	//    _puts(szBuffer);
    //}

    strcpy(szBuffer, "Waiting for Keyboard input ......\n");
    _puts(szBuffer);

    while(1)
        _putc(_getc());
}

