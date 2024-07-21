#!/usr/bin/env python3

import os, sys

if len(sys.argv) != 3:
    print('lvs: Specify two netlist folder and  filename to compare.')
    sys.exit(1);

os.system('netgen -batch lvs "{}.spice {}" "./simulation/{}_top.spice {}" ./netgen_setup.tcl comp.out' \
            .format(sys.argv[1], sys.argv[1], sys.argv[2], sys.argv[2]))
sys.exit(0)

