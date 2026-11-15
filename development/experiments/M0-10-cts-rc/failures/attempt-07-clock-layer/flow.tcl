# All RC here is an explicitly unqualified LEF estimate. Never a signoff run.
read_lef technology.lef
read_lef cells.lef
read_liberty cells.lib
read_verilog input.v
link_design shift_reg_8bit
read_sdc constraints.sdc
initialize_floorplan -die_area {0 0 320 288} -core_area {16 36 304 252} -site core
make_tracks MET1 -x_offset 1.5 -x_pitch 3.0 -y_offset 1.5 -y_pitch 3.0
make_tracks MET2 -x_offset 1.6 -x_pitch 3.2 -y_offset 1.6 -y_pitch 3.2
make_tracks MET3 -x_offset 3.0 -x_pitch 3.0 -y_offset 3.0 -y_pitch 3.0
set_wire_rc -signal -layer MET2
set_wire_rc -clock -layer MET3
place_pins -hor_layers MET3 -ver_layers MET2
global_placement -density 0.45
detailed_placement
check_placement -verbose
write_def placed.def
configure_cts_characterization -max_slew 2.2 -max_cap 1.2
clock_tree_synthesis -buf_list {CLKBUFX2 CLKBUFX4} -root_buf CLKBUFX4 \
    -sink_clustering_enable -sink_clustering_size 4 -sink_clustering_max_diameter 100
detailed_placement
check_placement -verbose
report_cts
write_def cts.def
write_verilog cts.v
add_global_connection -net VDD -pin_pattern VDD -power
add_global_connection -net VSS -pin_pattern VSS -ground
global_connect
set_voltage_domain -name CORE -power VDD -ground VSS
define_pdn_grid -name core -voltage_domains CORE -pins {MET3}
add_pdn_stripe -grid core -layer MET1 -width 2 -followpins
add_pdn_stripe -grid core -layer MET2 -width 2 -pitch 76.8 -offset 1.6
add_pdn_stripe -grid core -layer MET3 -width 2 -pitch 72 -offset 11
add_pdn_connect -grid core -layers {MET1 MET2}
add_pdn_connect -grid core -layers {MET2 MET3}
pdngen
check_power_grid -net VDD
check_power_grid -net VSS
set_routing_layers -signal MET1-MET3 -clock MET1-MET3
global_route
detailed_route -output_drc route-drc.rpt -output_maze route-maze.log -verbose 0
write_def final.def
write_verilog final.v
write_db final.odb
set f [open endpoints.tsv w]
set b [ord::get_db_block]
foreach n [$b getNets] {
  if {[$n isSpecial]} { continue }
  foreach p [$n getBTerms] {
    puts $f "[$n getName]\tPORT\t[$p getName]\t[$p getIoType]"
  }
  foreach p [$n getITerms] {
    puts $f "[$n getName]\t[[$p getInst] getName]\t[[$p getMTerm] getName]\t[$p getIoType]"
  }
}
close $f
# No calibrated OpenRCX model exists yet. This exercises route->SPEF I/O only.
extract_parasitics -lef_rc
write_spef estimated.spef
