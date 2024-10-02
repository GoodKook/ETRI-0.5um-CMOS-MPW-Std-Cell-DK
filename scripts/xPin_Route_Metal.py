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
def extract_layer(file_mag_in, name):
    file_in  = open(file_mag_in,  'r')
    layer_name = "<< " + name + " >>"
    while True:
        # Read line
        file_line = file_in.readline()
        if file_line[0:len(layer_name)] == layer_name:
            file_out.write(file_line)
            # Read next line for 'rect'
            while True:
                file_line = file_in.readline()
                if file_line[0:4] == "rect":
                    file_out.write(file_line)
                else:
                    break;
            break;
        # Check for EoF
        if not file_line:
            break
    file_in.close()
    return

# -----------------------------------------------------------
# Main start-up
# -----------------------------------------------------------

if len(sys.argv)!=2:
    print("Usage: xPin_Route <core name>")
    print("     Extracting Core-to-Pad routing from chip-top")
    exit()
    
file_mag_in  = str(sys.argv[1])+'_Top.mag'
file_mag_out = str(sys.argv[1])+'_Pin_Route.mag'

# open Magic file for output
file_out = open(file_mag_out, 'w')

read_heading(file_mag_in)
extract_layer(file_mag_in, "metal1")
extract_layer(file_mag_in, "metal2")
extract_layer(file_mag_in, "metal3")
extract_layer(file_mag_in, "m2contact")
extract_layer(file_mag_in, "m3contact")
extract_layer(file_mag_in, "comment")

file_out.write("<< end >>")
file_out.write("")
file_out.close()
