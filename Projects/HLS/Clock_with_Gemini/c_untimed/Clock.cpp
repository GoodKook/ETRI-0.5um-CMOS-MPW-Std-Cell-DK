/********************************************************************
Filename: Clock.cpp
Purpose : Clock in C/C++ un-timed model
History :
*********************************************************************
CC BY-NC, GoodKook, goodkook@gmail.com
*********************************************************************/

void Clock(bool clear, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss)
{
    static unsigned char _hh, _mm, _ss;

    if (clear)
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

    *hh = _hh;
    *mm = _mm;
    *ss = _ss;
}

