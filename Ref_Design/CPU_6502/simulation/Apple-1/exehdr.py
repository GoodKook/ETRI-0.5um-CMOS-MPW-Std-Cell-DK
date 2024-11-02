#!/usr/bin/env python3
import os, sys

if len(sys.argv)!=4:
    print('exehdr.py <Bin.File> <Start Address> <Length>')
    print(' Add Header into Binary. Address & Length must be HEX')
    sys.exit(1);

szBinaryName = str(sys.argv[1])
szStartAddr = str(sys.argv[2])
szLength = str(sys.argv[3])

print("Adding Exec.Header for %s" % (szBinaryName));

szExeHdr = szStartAddr[2]+szStartAddr[3]+szStartAddr[0]+szStartAddr[1]+\
            szLength[2]+szLength[3]+szLength[0]+szLength[1];
exehdr = bytes.fromhex(szExeHdr)

file_in  = open(szBinaryName, "rb")
file_out = open("program.bin","wb")
file_out.write(exehdr)

# Using while loop to iterate the file data
while True:
    chunk = file_in.read(1)
    if not chunk:
        break
    file_out.write(chunk)

file_in.close()
file_out.close()

print("Exec. Header Added Binary is \"program.bin\"");
