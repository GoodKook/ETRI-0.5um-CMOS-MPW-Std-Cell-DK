#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: cc65.sh <file>.c"
    echo "      Running 6502 C-Compiler"
    exit 2
fi

cc65 -T -O --static-locals -t apple1 -I$CC65_INC $1.c
ca65 -t none --listing --list-bytes 100 $1.s
cl65 -T -O --static-locals -t apple1 \
            -L$LD65_LIB -C$LD65_CFG/apple1-8k.cfg \
            -o program.bin $1.o

