read_lef technology.lef
read_lef cells.lef
read_liberty cells.lib
read_def routed.def
read_sdc constraints.sdc
write_verilog final.v
write_def final.def
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
define_process_corner -ext_model_index 0 estimated_LEF
extract_parasitics -lef_rc
write_spef estimated.spef
