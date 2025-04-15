/********************************************************************
Filename: Clock.cpp
Purpose : 24-hour Clock model in C/C++
            This Clock model has no internal variables
History :
*********************************************************************/

void Clock(bool reset, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss)
{
    if (reset)
    {
        *hh = *mm = *ss = 0;
    }
    else if (start)
    {
        if (*ss == 59)
        {
            *ss = 0;
            if (*mm == 59)
            {
                *mm = 0;
                if (*hh==23)
                    *hh = 0;
                else
                    *hh += 1;
            }
            else
                *mm += 1;
        }
        else
            *ss += 1;
    }
}
