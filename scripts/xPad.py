#!/usr/bin/env python3
import sys

# -----------------------------------------------------------
# Function: Reading Magic file heading
def read_heading(file_mag_in):
    # open input Magic file
    file_in  = open(file_mag_in,  'r')
    
    # Magic Layout file headings
    # 1-st line must be 'magic'
    file_line = file_in.readline()
    if file_line[0:5] != "magic":
        print("1st line: NOT Magic file!")
        exit()
    #print(file_line, end="")
    file_out.write(file_line)
    
    # 2-nd line must be 'tech'
    file_line = file_in.readline()
    if file_line[0:10] != "tech scmos":
        print("2nd line: NOT tech scmos")
        exit()
    #print(file_line, end="")
    file_out.write(file_line)
    
    # 3-rd line must be 'magscale'
    file_line = file_in.readline()
    if file_line[0:8] != "magscale":
        print("3rd line: NOT magscale")
        exit()
    #print(file_line, end="")
    file_out.write(file_line)
    
    # 4-th line must be 'timestamp'
    file_line = file_in.readline()
    if file_line[0:9] != "timestamp":
        print("4th line: NOT timestamp")
        exit()
    #print(file_line, end="")
    file_out.write(file_line)
    
    # Check Paint
    while True:
        file_line = file_in.readline()
        if file_line[0:16] == "<< checkpaint >>":
            file_out.write(file_line)
            break
        if not file_line:   # EoF
            exit()
            
    while True:
        file_line = file_in.readline()
        if file_line[0:4] == "rect":
            file_out.write(file_line)
        else:
            break
        if not file_line:   # EoF
            exit()
    file_in.close()
    return

# -----------------------------------------------------------
# Function: Extract Cell
def extract_cell(file_mag_in, name):
    file_in  = open(file_mag_in,  'r')
    cell_name = "use " + name
    while True:
        # Read line
        file_line = file_in.readline()
        if file_line[0:len(cell_name)] == cell_name:
            file_out.write(file_line)
            # Read next line
            file_line = file_in.readline()
            if file_line[0:9] == "timestamp":
                file_out.write(file_line)
            else:
                print("IOFILLER: NO timestamp")
                exit()
            # Read next line
            file_line = file_in.readline()
            if file_line[0:9] == "transform":
                file_out.write(file_line)
            else:
                print("IOFILLER: NO transform")
                exit()
            # Read next line
            file_line = file_in.readline()
            if file_line[0:3] == "box":
                file_out.write(file_line)
            else:
                print("IOFILLER: NO box")
                exit()
        # Check for EoF
        if not file_line:
            break
    file_in.close()
    return

# -----------------------------------------------------------
# Main start-up
# -----------------------------------------------------------
if len(sys.argv)!=2:
    print("Usage: xPad <core name>")
    print("     Extracting Pad Layout from chip-top")
    exit()
    
file_mag_in  = str(sys.argv[1])+'_Top.mag'
file_mag_out = str(sys.argv[1])+'_Pad.mag'

# open output Magic file
file_out = open(file_mag_out, 'w')

read_heading(file_mag_in)
extract_cell(file_mag_in, "IOFILLER")
extract_cell(file_mag_in, "PCORNER")
extract_cell(file_mag_in, "PAD")
extract_cell(file_mag_in, "PIC")
extract_cell(file_mag_in, "POB")
extract_cell(file_mag_in, "PANA")
extract_cell(file_mag_in, "PVSS")
extract_cell(file_mag_in, "PVDD")
extract_cell(file_mag_in, "SEALRING")
extract_cell(file_mag_in, "MY_LOGO")
extract_cell(file_mag_in, "pnp")

file_out.write("<< end >>")
file_out.write("")
file_out.close()
exit()

