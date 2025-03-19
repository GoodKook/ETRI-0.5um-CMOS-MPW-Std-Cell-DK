//
// Poorman's Std. Co-Emulation wrapper by GoodKook, goodkook@gmail.com
// Board: TANG 25K Primer
// Part Number: GW5A-LV25MG121NC2/I1
// Device: GW5A-25
//
create_clock -name sys_clk_emu -period 1000 -waveform {0 500} [get_ports {clk_emu}] -add
create_clock -name sys_clk_dut -period 1000 -waveform {0 500} [get_ports {clk_dut}] -add
