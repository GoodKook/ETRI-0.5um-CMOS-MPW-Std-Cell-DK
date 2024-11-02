#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: asm.sh <file>.a65"
    echo "      Running 6502 Assembler"
    exit 2
fi

./assembler/as65 -l -m -oprogram.hex -s2 $1.a65

