/********************************************************************
Filename: Clock.cpp
Purpose : 24-hour Clock model in C/C++
            This Clock model has internal variables
History :
*********************************************************************/

#include <cstdio>

bool IncreaseBCDmmss(unsigned char* digit1, unsigned char* digit0)
{
	if (*digit1==5 && *digit0==9)
	{
		*digit1 = *digit0 = 0;
		return true;
	}
	else
	{
		if (*digit0==9)
		{
			*digit1 += 1;
			*digit0 = 0;
		}
		else
			*digit0 += 1;
	}
	return false;
}

bool IncreaseBCDhh(unsigned char* digit1, unsigned char* digit0)
{
	if (*digit1==2 && *digit0==3)
	{
		*digit1 = *digit0 = 0;
		return true;
	}
	else
	{
		if (*digit0==9)
		{
			*digit1 += 1;
			*digit0 = 0;
		}
		else
			*digit0 += 1;
	}
	return false;
}

void Clock(bool reset, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss)
{
    static unsigned char h1, h0, m1, m0, s1, s0;

    if (reset)
    {
        h1 = h0 = m1 = m0 = s1 = s0 = 0;
    }
    else if (start)
    {
        if (IncreaseBCDmmss(&s1, &s0))
			if (IncreaseBCDmmss(&m1, &m0))
				IncreaseBCDhh(&h1, &h0);
    }

    //printf("%02d:%02d:%02d", _hh, _mm, _ss);

    *hh = (h1<<4) | h0;
    *mm = (m1<<4) | m0;
    *ss = (s1<<4) | s0;
}
