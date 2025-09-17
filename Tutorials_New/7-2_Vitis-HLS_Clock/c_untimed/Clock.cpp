/********************************************************************
Filename: Clock.cpp
Purpose : 24-hour Clock model in C/C++
            This Clock model has no internal variables
History :

*********************************************************************/

#if defined(BIT_ACCURATE)   // for Vitis-HLS
#include <ap_int.h>
#elif defined(BIT_ACCURATE_SC)  // SystemC simulation
#include <systemc.h>
#endif

void Clock(bool reset, bool start, unsigned char *hh, unsigned char *mm, unsigned char *ss)
{
#pragma HLS interface mode=ap_none port=reset,start,hh,mm,ss
#pragma HLS interface mode=ap_ctrl_none port=return

#if defined(COMBINATIONAL)
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
#elif defined(REGISTERED)
    static unsigned char _hh, _mm, _ss;
#pragma HLS reset variable=_hh,_mm,_ss

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
#elif defined(BIT_ACCURATE)||defined(BIT_ACCURATE_SC)
#if defined(SYSTEMC_H)
    static sc_uint<5> _hh;
    static sc_uint<6> _mm, _ss;
#else
    static ap_uint<5> _hh;
    static ap_uint<6> _mm, _ss;
#endif
//#pragma HLS reset variable=_hh,_mm,_ss

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
#endif
}

