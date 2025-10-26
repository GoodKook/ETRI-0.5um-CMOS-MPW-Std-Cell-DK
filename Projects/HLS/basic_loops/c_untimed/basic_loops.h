/*
 * Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
 * Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _BASIC_LOOPS_H_
#define _BASIC_LOOPS_H_

//#include <fstream>
//#include <iostream>
//using namespace std;

// Vitis HLS no longer support SystemC after 2020.1
// Fortunately, bit-wised ap_(u)int<> type is compatible with sc_(u)int<>

#if VM_SC==1    // SystemC ----------------------------------------------
#include "systemc.h"

typedef sc_int<8>   din_t;
typedef sc_int<13>  dout_t;
typedef sc_uint<5>  dsel_t; // Address of Ext. Mamory
#else           // Vitis-HLS --------------------------------------------
#include "ap_int.h"

typedef ap_int<8>   din_t;
typedef ap_int<13>  dout_t;
typedef ap_uint<5>  dsel_t; // Address of Ext. Mamory
#endif

#define N_MEM   10

dout_t basic_loops(din_t A[N_MEM]);

#endif
