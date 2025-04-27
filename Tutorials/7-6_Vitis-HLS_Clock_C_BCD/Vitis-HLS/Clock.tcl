open_project hls
set_top Clock
add_files ./source/Clock.cpp
open_solution "solution1" -flow_target vivado
set_part {xa7a100tcsg324-2I}
create_clock -period 1000 -name default
csynth_design
write_ini ./hls/Clock1.cfg
exit
