# Setup file for tutorial 6 part d
set flist [canonical map9v3_nolib.spice]
set filenum [lindex $flist 1]
readnet spice osu035_stdcells.sp $filenum
property {map9v3.spice nfet} remove as ad ps pd
property {map9v3.spice pfet} remove as ad ps pd
