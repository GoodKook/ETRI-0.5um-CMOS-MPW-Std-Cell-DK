#!/usr/bin/env python3

import os, sys

if len(sys.argv) != 4:
    print('lvl.py: Specify two netlist folder and spice module name to compare.')
    sys.exit(1);

os.system('netgen -batch lvs {}/{}.spice {}/{}.spice ./setup.tcl LVL.{}.txt'\
            .format(sys.argv[1], sys.argv[3], sys.argv[2], sys.argv[3], sys.argv[3]))
sys.exit(0)

