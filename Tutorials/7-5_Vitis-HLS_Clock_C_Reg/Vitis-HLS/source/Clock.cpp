/********************************************************************
Filename: Clock.cpp
Purpose : 24-hour Clock model in C/C++
            This Clock model has internal variables
History :
*********************************************************************/

#include <cstdio>

void Clock(bool reset, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss)
{
    static unsigned char _hh, _mm, _ss;

    if (reset)
    {
        _hh = _mm = _ss = 0;
    }
    else if (start)
    {
        if (_ss == 59)
        {
            _ss = 0;
            if (_mm == 59)
            {
                _mm = 0;
                if (_hh==23)
                    _hh = 0;
                else
                    _hh += 1;
            }
            else
                _mm += 1;
        }
        else
            _ss += 1;
    }

    //printf("%02d:%02d:%02d", _hh, _mm, _ss);

    *hh = _hh;
    *mm = _mm;
    *ss = _ss;
}
