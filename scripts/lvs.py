#!/usr/bin/env python3

import os, sys

if len(sys.argv) != 4:
#    print('lvs: Specify two netlist filename to compare.')
    print('lvs: Specify two netlist folder and  filename to compare.')
    sys.exit(1);

#os.system('netgen -batch lvs {} {} ./setup.tcl'.format(sys.argv[1], sys.argv[2]))
os.system('netgen -batch lvs {}/{} {}/{} ./setup.tcl comp_{}.out'.format(sys.argv[1], sys.argv[3], sys.argv[2], sys.argv[3], sys.argv[3]))
sys.exit(0)

