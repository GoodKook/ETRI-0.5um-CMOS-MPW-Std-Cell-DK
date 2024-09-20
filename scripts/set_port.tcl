proc set_port {name direction index layer} {
    erase label
    paint $layer
    paint [string cat $layer "p"]
    label $name c $layer
    port make
    port class $direction
    port use signal
    port index $index
}

proc set_vdd {} {
    erase label
    label vdd c m1
    port make
    port class inout
    port use power
    port shape abutment
    port index [expr [port last]+1]
}

proc set_gnd {} {
    erase label
    label gnd c m1
    port make
    port class inout
    port use ground
    port shape abutment
    port index [expr [port last]+1]
}

proc outport_m1 {name} {
    erase label
    paint metal1
    paint m1p
    label $name c metal1
    port make
    port class output
    port use signal
}

proc inport_m1 {name} {
    erase label
    paint metal1
    paint m1p
    label $name c metal1
    port make
    port class input
    port use signal
}

proc outport_m2 {name} {
    erase label
    paint metal2
    paint m2p
    label $name c m2
    port make
    port class output
    port use signal
}

proc inport_m2 {name} {
    erase label
    paint m2
    paint m2p
    label $name c m2
    port make
    port class input
    port use signal
}

