# File: ALU8_Mult_tester.tcl

# Load Quartus Prime Tcl Project package
package require ::quartus::project
package require ::quartus::flow

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "ALU8_Mult_tester"]} {
		puts "Project ALU8_Mult_tester is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists ALU8_Mult_tester]} {
		project_open -revision ALU8_Mult_tester ALU8_Mult_tester
	} else {
		project_new -revision ALU8_Mult_tester ALU8_Mult_tester
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE6E22C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 24.1STD.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "17:09:03  APRIL 25, 2025"
	set_global_assignment -name LAST_QUARTUS_VERSION "24.1std.0 Standard Edition"
	set_global_assignment -name VERILOG_FILE ../../ALU8_Mult_tester.v
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PACKAGE TQFP
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 144
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 8
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
	set_global_assignment -name NUM_PARALLEL_PROCESSORS 2
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
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

# MyChip-Test I/F
#                 +------\_/------+
#        PNP_C<--Z|1            28|<--VDD_28
#        PNP_B<--Z|2            27|<--ABCmd[7]
#        PNP_E<--Z|3            26|<--ABCmd[6]
#      ACC_o[0]<--|4            25|<--ABCmd[5]
#      ACC_o[1]<--|5            24|<--ABCmd[4]
#      ACC_o[2]<--|6  ALU8_Mult 23|<--ABCmd[3]
#         VDD_7---|7            22|<--LoadCmd_i
#      ACC_o[7]<--|8            21|---GND
#      ACC_o[6]<--|9            20|-->LoadB_i
#      ACC_o[5]<--|10           19|-->LoadA_i
#      ACC_o[4]<--|11           18|-->ABCmd[2]
#      ACC_o[3]<--|12           17|-->ABCmd[1]
#        Done_o<--|13           16|-->ABCmd[0]
#           clk-->|14           15|<--reset
#                 +---------------+
#                      SOP28
	set_location_assignment PIN_49 -to PNP_C
	set_location_assignment PIN_50 -to PNP_B
	set_location_assignment PIN_44 -to PNP_E
	set_location_assignment PIN_46 -to xACC_o[0]
	set_location_assignment PIN_42 -to xACC_o[1]
	set_location_assignment PIN_43 -to xACC_o[2]
	set_location_assignment PIN_38 -to xVDD_7
	set_location_assignment PIN_39 -to xACC_o[7]
	set_location_assignment PIN_33 -to xACC_o[6]
	set_location_assignment PIN_34 -to xACC_o[5]
	set_location_assignment PIN_31 -to xACC_o[4]
	set_location_assignment PIN_32 -to xACC_o[3]
	set_location_assignment PIN_28 -to xDone_o
	set_location_assignment PIN_30 -to xclk
	set_location_assignment PIN_68 -to xreset
	set_location_assignment PIN_69 -to xABCmd_i[0]
	set_location_assignment PIN_66 -to xABCmd_i[1]
	set_location_assignment PIN_67 -to xABCmd_i[2]
	set_location_assignment PIN_64 -to xLoadA_i
	set_location_assignment PIN_65 -to xLoadB_i
	set_location_assignment PIN_59 -to xGND
	set_location_assignment PIN_60 -to xLoadCmd_i
	set_location_assignment PIN_55 -to xABCmd_i[3]
	set_location_assignment PIN_58 -to xABCmd_i[4]
	set_location_assignment PIN_53 -to xABCmd_i[5]
	set_location_assignment PIN_54 -to xABCmd_i[6]
	set_location_assignment PIN_51 -to xABCmd_i[7]
	set_location_assignment PIN_52 -to xVDD_28

	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[0]
#	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[0]
#	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk_dut
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to get_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to load_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu[0]
#	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu

# MyChip-Test I/F
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to PNP_C
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to PNP_B
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to PNP_E
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xACC_o[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xACC_o[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xACC_o[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xVDD_7
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xACC_o[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xACC_o[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xACC_o[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xACC_o[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xACC_o[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xDone_o
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xclk
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xreset
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xABCmd_i[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xABCmd_i[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xABCmd_i[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xLoadA_i
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xLoadB_i
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xGND
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xLoadCmd_i
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xABCmd_i[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xABCmd_i[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xABCmd_i[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xABCmd_i[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xABCmd_i[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xVDD_28

	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Including default assignments
	set_global_assignment -name TIMING_ANALYZER_MULTICORNER_ANALYSIS ON -family "Cyclone IV E"
	set_global_assignment -name TIMING_ANALYZER_REPORT_WORST_CASE_TIMING_PATHS ON -family "Cyclone IV E"
	set_global_assignment -name TIMING_ANALYZER_CCPP_TRADEOFF_TOLERANCE 0 -family "Cyclone IV E"
	set_global_assignment -name TDC_CCPP_TRADEOFF_TOLERANCE 0 -family "Cyclone IV E"
	set_global_assignment -name TIMING_ANALYZER_DO_CCPP_REMOVAL ON -family "Cyclone IV E"
	set_global_assignment -name DISABLE_LEGACY_TIMING_ANALYZER OFF -family "Cyclone IV E"
	set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON -family "Cyclone IV E"
	set_global_assignment -name SYNCHRONIZATION_REGISTER_CHAIN_LENGTH 2 -family "Cyclone IV E"
	set_global_assignment -name SYNTH_RESOURCE_AWARE_INFERENCE_FOR_BLOCK_RAM ON -family "Cyclone IV E"
	set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS" -family "Cyclone IV E"
	set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON -family "Cyclone IV E"
	set_global_assignment -name AUTO_DELAY_CHAINS ON -family "Cyclone IV E"
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF -family "Cyclone IV E"
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF -family "Cyclone IV E"
	set_global_assignment -name ENABLE_OCT_DONE OFF -family "Cyclone IV E"

	# Commit assignments
	export_assignments

	execute_flow -compile
	
	# Close project
	if {$need_to_close_project} {
		project_close
	}
}

