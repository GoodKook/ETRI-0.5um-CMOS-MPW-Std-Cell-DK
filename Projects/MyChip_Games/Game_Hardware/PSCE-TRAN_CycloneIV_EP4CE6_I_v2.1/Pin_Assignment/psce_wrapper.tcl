# -----------------------------------------
# Poorman's SCE Pin Assignment by GoodKook
# Device: Cyclone IV EP4CE6 (TQFP 144-Pin)
# -----------------------------------------
# Quartus Prime Version 24.1std.0 Build 1077 03/04/2025 SC Standard Edition
# Generated on: Tue Apr 22 00:42:50 2025

package require ::quartus::project

set_location_assignment PIN_132 -to Dout_emu[7]
set_location_assignment PIN_135 -to Dout_emu[6]
set_location_assignment PIN_137 -to Dout_emu[5]
set_location_assignment PIN_141 -to Dout_emu[4]
set_location_assignment PIN_133 -to Dout_emu[3]
set_location_assignment PIN_136 -to Dout_emu[2]
set_location_assignment PIN_138 -to Dout_emu[1]
set_location_assignment PIN_142 -to Dout_emu[0]

set_location_assignment PIN_120 -to Din_emu[7]
set_location_assignment PIN_124 -to Din_emu[6]
set_location_assignment PIN_126 -to Din_emu[5]
set_location_assignment PIN_128 -to Din_emu[4]
set_location_assignment PIN_121 -to Din_emu[3]
set_location_assignment PIN_125 -to Din_emu[2]
set_location_assignment PIN_127 -to Din_emu[1]
set_location_assignment PIN_129 -to Din_emu[0]

set_location_assignment PIN_119 -to get_emu
set_location_assignment PIN_113 -to load_emu
set_location_assignment PIN_24 -to clk_dut
set_location_assignment PIN_23 -to clk_emu
set_location_assignment PIN_111 -to Addr_emu[2]
set_location_assignment PIN_114 -to Addr_emu[1]
set_location_assignment PIN_115 -to Addr_emu[0]

set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu

set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu

set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk_dut
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk_emu
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to get_emu
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to load_emu

set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu


