//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9.03 (64-bit) 
//Created Time: 2024-05-28 12:15:29
create_clock -name sys_clk -period 1000 -waveform {0 500} [get_ports {clk}]
