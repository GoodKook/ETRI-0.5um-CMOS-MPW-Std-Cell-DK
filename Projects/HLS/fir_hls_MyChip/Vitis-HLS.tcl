append HW_STYLE "-D" $env(HW_STYLE)
puts $HW_STYLE

append CPP_FILES $env(CPP_FILES)
puts $CPP_FILES

open_project fir
set_top fir

add_files "$CPP_FILES" -cflags "$HW_STYLE"
open_solution "hls_component" -flow_target vivado
set_part {xa7a100tcsg324-2I}
create_clock -period 1000 -name default
csynth_design
write_ini ./fir.cfg
exit

