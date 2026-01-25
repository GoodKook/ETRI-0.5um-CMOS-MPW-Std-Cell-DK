// There's no kbhit() function in linux if you want to use kbhit() function, use this code as below.
// reference : http://indra17.tistory.com/60
 
#include "kbhit.h"
 
void kbhit::init_keyboard()
{
    tcgetattr(0,&initial_settings);
    new_settings = initial_settings;
    new_settings.c_lflag &= ~ICANON;
    new_settings.c_lflag &= ~ECHO;
    new_settings.c_cc[VMIN] = 1;
    new_settings.c_cc[VTIME] = 0;
    tcsetattr(0, TCSANOW, &new_settings);
}

void kbhit::close_keyboard()
{
    tcsetattr(0, TCSANOW, &initial_settings);
}
 
int kbhit::_kbhit()
{
    unsigned char ch;
    int nread;
 
    if (peek_character != -1) return 1;
    new_settings.c_cc[VMIN]=0;
    tcsetattr(0, TCSANOW, &new_settings);
    nread = read(0,&ch,1);
    new_settings.c_cc[VMIN]=1;
    tcsetattr(0, TCSANOW, &new_settings);
    if(nread == 1)
    {
        peek_character = ch;
        return 1;
    }
    return 0;
}
 
int kbhit::_getch()
{
    char ch;
 
    if(peek_character != -1)
    {
        ch = peek_character;
        peek_character = -1;
        return ch;
    }
    read(0,&ch,1);
    return ch;
}
 
int kbhit::_putch(int c)
{
    putchar(c);
    fflush(stdout);
    return c;
}
 
//// use above functions in this way
//int main()
//{
//    init_keyboard();
// 
//    while (1) {
//        if (_kbhit()) {
//            int ch = _getch();
//            _putch(ch);
//            switch (ch) {
//                ...
//            }
//        }
//    }
//    close_keyboard();
// 
//    return 0;
//}
