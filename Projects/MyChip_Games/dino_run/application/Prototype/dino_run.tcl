# File: dino_run.tcl

# Load Quartus Prime Tcl Project package
package require ::quartus::project
package require ::quartus::flow

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "dino_run"]} {
		puts "Project dino_run is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists dino_run]} {
		project_open -revision dino_run dino_run
	} else {
		project_new -revision dino_run dino_run
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
	set_global_assignment -name SYSTEMVERILOG_FILE ../../dino_run/dino_run.v
	set_global_assignment -name SYSTEMVERILOG_FILE ../../dino_run/dino.v
	set_global_assignment -name SYSTEMVERILOG_FILE ../../dino_run/cloud.v
	set_global_assignment -name SYSTEMVERILOG_FILE ../../dino_run/lfsr_4bit.v
	set_global_assignment -name SYSTEMVERILOG_FILE ../../dino_run/ctrl.v
	set_global_assignment -name SYSTEMVERILOG_FILE ../../dino_run/cactus.v
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PACKAGE TQFP
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 144
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 8
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top

    set_location_assignment PIN_135 -to clk
    set_location_assignment PIN_132 -to reset
    set_location_assignment PIN_111 -to v_sync
    set_location_assignment PIN_136 -to pixel
    set_location_assignment PIN_121 -to p_tick
    set_location_assignment PIN_120 -to game_over
    set_location_assignment PIN_98  -to jump
#    set_location_assignment PIN_99  -to down
#    set_location_assignment PIN_86  -to left
#    set_location_assignment PIN_85  -to right
    set_location_assignment PIN_142 -to option[7]
    set_location_assignment PIN_141 -to option[6]
    set_location_assignment PIN_138 -to option[5]
    set_location_assignment PIN_137 -to option[4]
    set_location_assignment PIN_133 -to option[3]
    set_location_assignment PIN_128 -to option[2]
    set_location_assignment PIN_127 -to option[1]
    set_location_assignment PIN_126 -to option[0]

	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to reset
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to v_sync
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to pixel
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to p_tick
	set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to jump
#	set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to down
#	set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to left
#	set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to right
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to game_over
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to option[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to option[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to option[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to option[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to option[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to option[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to option[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to option[0]

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

