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

proc set_vdd {index} {
    erase label
    label vdd c m1
    port make
    port class inout
    port use power
    port shape abutment
    port index $index
}

proc set_gnd {index} {
    erase label
    label gnd c m1
    port make
    port class inout
    port use ground
    port shape abutment
    port index $index
}

proc outport_m1 {name index} {
    erase label
    paint metal1
    paint m1p
    label $name c metal1
    port make
    port class output
    port use signal
    port index $index
}

proc inport_m1 {name index} {
    erase label
    paint metal1
    paint m1p
    label $name c metal1
    port make
    port class input
    port use signal
    port index $index
}

proc outport_m2 {name index} {
    erase label
    paint metal2
    paint m2p
    label $name c m2
    port make
    port class output
    port use signal
    port index $index
}

proc inport_m2 {name index} {
    erase label
    paint m2
    paint m2p
    label $name c m2
    port make
    port class input
    port use signal
    port index $index
}

proc portA {layer} {set_port A input 0 $layer}
proc portB {layer} {set_port B input 1 $layer}
proc portC {layer} {set_port C input 2 $layer}
proc portD {layer} {set_port D input 3 $layer}
proc portY {index layer} {set_port Y output $index $layer}


proc goto_pos {x y} {
    box [string cat $x "um"] [string cat $y "um"] [string cat $x "um"] [string cat $y "um"]
    findbox
}





