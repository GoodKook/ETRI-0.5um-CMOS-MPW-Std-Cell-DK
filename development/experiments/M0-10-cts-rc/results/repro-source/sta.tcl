# Annotation harness. The supplied fixture is NOT extracted design RC.
if {[catch {
read_liberty cells.lib
read_verilog $::env(M10_NETLIST)
link_design shift_reg_8bit
read_sdc constraints.sdc
read_spef $::env(M10_SPEF)
set_propagated_clock [all_clocks]
report_units
check_setup -verbose
if {[llength [info commands report_parasitic_annotation]]} {
  report_parasitic_annotation -report_unannotated
} else {
  report_annotated_parasitics -report_unannotated
}
report_clock_latency -digits 6
report_clock_skew -setup -digits 6
report_clock_skew -hold -digits 6
report_checks -path_delay min_max -group_path_count 50 -format full_clock_expanded \
    -fields {slew cap input_pin net fanout} -digits 6
report_checks -from [get_ports rst_n] -path_delay min_max -group_path_count 50 -digits 6
report_check_types -max_slew -max_capacitance -max_fanout -recovery -removal \
    -min_pulse_width -min_period -violators -digits 6
foreach p [get_pins -hierarchical */CLK] {
  puts "CLOCK_PIN [get_full_name $p] RISE_ARRIVAL [get_property $p arrival_max_rise] FALL_ARRIVAL [get_property $p arrival_max_fall] RISE_SLEW [get_property $p slew_max_rise] FALL_SLEW [get_property $p slew_max_fall]"
}
puts "M10_STA_SCRIPT_COMPLETED"
} message options]} {
  puts stderr "M10_STA_FATAL $message"
  exit 1
}
exit
