// There's no kbhit() function in linux if you want to use kbhit() function, use this code as below.
// reference : http://indra17.tistory.com/60
 
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/select.h>
#include <termios.h>

class kbhit
{
public:
    termios initial_settings, new_settings;
    int peek_character;

    void init_keyboard();
    void close_keyboard();
    int _kbhit();
    int _getch();
    int _putch(int c);

    kbhit()
    {
        peek_character = -1;
        init_keyboard();
    }

    ~kbhit()
    {
        close_keyboard();
    }
};

