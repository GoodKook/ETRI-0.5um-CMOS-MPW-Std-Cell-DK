/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_fxp_sqrt_top_TB.cpp
Purpose: Testbench
Revision History: Mar. 2025
*******************************************************************************/
#include "sc_fxp_sqrt_top_TB.h"
//#include "untimed/test.h"

#include <iostream> // std::cout, std::hex, std::endl
#include <iomanip>  // std::setiosflags

//
// Cycle-Accurate Test Generator
//
void sc_fxp_sqrt_top_TB::Test_Gen()
{
    ap_continue.write(true);
    ap_start.write(false);
    ap_rst.write(true);
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());
    wait(ap_clk.posedge_event());

    ap_rst.write(false);

    srand(time(NULL));

    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_idle.read())
        {
            input_val = (in_data_t)rand();  // 24-bit width
            in_val.write(input_val);
            ap_start.write(true);
        }
        else if (ap_done.read())
            ap_start.write(false);
    }
}

//
// Cycle-Accurate Output Monitor
//
void sc_fxp_sqrt_top_TB::Test_Mon()
{
    out_data_t  _result, result;
    float fsqrt, max_err = 0.0;
    sc_uint<32> _ap_return;

    int test_count = 0;

    cout    << "[ N ]"
            << "sqrt(Val)= C-Math  "
            << " vs. SystemC Fixed Point         "
            << " vs. Hardware"
            << std::endl;

    cout    << " --- "
            << "---------  ------- "
            << " vs. -------------------         "
            << " vs. -------------------"
            << std::endl;
    while(true)
    {
        wait(ap_clk.posedge_event());

        if (ap_done.read())
        {
            fsqrt = (float)sqrt((float)input_val);
            result  = fxp_sqrt_top(input_val);

            _ap_return = ap_return.read();
            _result.range(OUT_BW-1, (OUT_BW-OUT_IW)) = _ap_return.range(7,4);
            _result.range((OUT_BW-OUT_IW)-1, 2)      = _ap_return.range(3,0);

            //cout << result.to_hex() << ":" << _result.to_hex() << std::endl;

            cout    << "["      << std::right   << std::setw(3)     << test_count++ << "]"
                    << "sqrt("  << std::right   << std::setw(3)     << input_val
                    << ")= "    << std::left    << std::setw(8)    << fsqrt
                    << " vs. "  << std::left    << std::setw(28)    << result
                    << " vs. "  << std::left    << std::setw(22)    << _result
                    << " Diff= "<< std::right   << std::setw(10)    << abs(result - _result)
                    << std::endl;

            if (test_count>100)
                break;
//            if (abs(result - _result)>0.8e-5)
//            {
//                cout << " ERROR!" << endl;
//                break;
//            }
            if (abs(result - _result)>max_err)
            max_err = abs(result - _result);

        }
    }

    cout    << " --- "
            << "---------  ------- "
            << " vs. -------------------         "
            << " vs. -------------------"
            << std::endl;
    cout    << "[ N ]"
            << "sqrt(Val)= C-Math  "
            << " vs. SystemC Fixed Point         "
            << " vs. Hardware"
            << std::endl;
    cout << "Max Err = " << max_err << endl;
    sc_stop();
}

