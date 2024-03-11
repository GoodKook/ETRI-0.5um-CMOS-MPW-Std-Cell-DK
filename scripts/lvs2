#!/usr/bin/env python3

import os, sys

if len(sys.argv) != 4:
#    print('lvs: Specify two netlist filename to compare.')
    print('lvs: Specify two netlist folder and  filename to compare.')
    sys.exit(1);

# Extract Spice of first circuit
os.chdir(sys.argv[1])
os.system('../scripts/extract {}.mag'.format(sys.argv[3]))
os.chdir('..')
# Extract Spice of second circuit
os.chdir(sys.argv[2])
os.system('../scripts/extract {}.mag'.format(sys.argv[3]))
os.chdir('..')
# Do LVS
os.system('netgen -batch lvs {}/{}.spice {}/{}.spice ./setup.tcl'.format(sys.argv[1], sys.argv[3], sys.argv[2], sys.argv[3]))
# Clean up
os.chdir(sys.argv[1])
os.system('rm {}.ext'.format(sys.argv[3]))
os.system('rm {}.spice'.format(sys.argv[3]))
os.chdir('..')

os.chdir(sys.argv[2])
os.system('rm {}.ext'.format(sys.argv[3]))
os.system('rm {}.spice'.format(sys.argv[3]))
os.chdir('..')

# Show LVS Result
os.system('cat comp.out')

sys.exit(0)

