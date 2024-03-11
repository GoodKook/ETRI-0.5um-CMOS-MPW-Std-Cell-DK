#!/usr/bin/env python3

import os, sys

gLambda = 0.3    # Magic Tech-Rule

# -----------------------------------------------------------
# Function:
def get_num_from_line(nStart, szLine):
    szRet = ""
    for i in range(nStart, len(szLine)):
        if szLine[i] == " ":
            continue    # Skip space char
        else:
            for j in range(i, len(szLine)):
                if szLine[j] == " " or szLine[j] == "\n":
                    break
                else:
                    szRet += szLine[j]
            break;
    return szRet, j

# -----------------------------------------------------------
# Function: Magic Grid Scale
def get_magscale(szFileMagIn):
    
    file_in = open(szFileMagIn, 'r')
    
    while True:
        szLine = file_in.readline()
        if not szLine:
            break
        elif szLine[0:len("magscale")]=="magscale":
            szMult, n = get_num_from_line(len("magscale"), szLine)
            szDiv, n = get_num_from_line(n, szLine)
            nMult *= int(szMult)
            nDiv  *= int(szDiv)
            break;

    file_in.close()
    return nMult, nDiv

# -----------------------------------------------------------
# Function: Magic Grid Scale
def get_scalefactor(szFileMagIn):
    nMult = 1
    nDiv = 1
    
    file_in = open(szFileMagIn, 'r')
    
    while True:
        szLine = file_in.readline()
        if not szLine:
            break
        elif szLine[0:len("magscale")]=="magscale":
            szMult, n = get_num_from_line(len("magscale"), szLine)
            szDiv, n = get_num_from_line(n, szLine)
            nMult = int(szMult)
            nDiv  = int(szDiv)
            break;

    file_in.close()
    return float(gLambda*(float(nMult)/float(nDiv)))
    
# -----------------------------------------------------------
# Function:
def get_obs_rect(szFileMagIn, szPortLayer, szFileScriptOut):
    szLayer = szPortLayer[3] + szPortLayer[4]

    szRect = "rect"
    nLLX = 0
    nLLY = 0
    nURX = 0
    nURY = 0

    scale = get_scalefactor(szFileMagIn)
    
    file_in  = open(szFileMagIn,  'r')
    file_out  = open(szFileScriptOut, 'a')

    while True:
        # Read line
        szLine = file_in.readline()
        if not szLine:  # Line read fail? EOF!
            break
        elif szLine[0:len(szPortLayer)] == szPortLayer:   # << m2p >> or << m1p >>
        
            while True:
                # Read next line for rect
                szLine = file_in.readline()
                if not szLine:  # Line read fail? EOF!
                    break
                else:
                    if szLine[0:len(szRect)] == szRect: # is it "rect"?
                        szLLX, nStart = get_num_from_line(len(szRect), szLine)
                        szLLY, nStart = get_num_from_line(nStart, szLine)
                        szURX, nStart = get_num_from_line(nStart, szLine)
                        szURY, nStart = get_num_from_line(nStart, szLine)

                        nLLX = float(int(szLLX)*scale)
                        nLLY = float(int(szLLY)*scale)
                        nURX = float(int(szURX)*scale)
                        nURY = float(int(szURY)*scale)

                        file_out.write("box " + str(nURX) + "um " + str(nLLY) + "um " + str(nURX+gLambda) + "um " + str(nURY) + "um\n")
                        file_out.write("erase {}\n".format(szLayer))
                        file_out.write("box " + str(nLLX) + "um " + str(nURY) + "um " + str(nURX) + "um " + str(nURY+gLambda) + "um\n")
                        file_out.write("erase {}\n".format(szLayer))
                        file_out.write("box " + str(nLLX-gLambda) + "um " + str(nLLY) + "um " + str(nLLX) + "um " + str(nURY) + "um\n")
                        file_out.write("erase {}\n".format(szLayer))
                        file_out.write("box " + str(nLLX) + "um " + str(nLLY-gLambda) + "um " + str(nURX) + "um " + str(nLLY) + "um\n")
                        file_out.write("erase {}\n".format(szLayer))
                    else:
                        break

    file_in.close()
    file_out.close()
    return

# -----------------------------------------------------------
# Function:
def lef_macro(szMacro):
    szLefIn = szMacro+".lef"
    szLefOut = szMacro+"_Macro.lef"
    
    file_in  = open(szLefIn,  'r')
    file_out  = open(szLefOut, 'w')

    while True:
        # Read line
        szLine = file_in.readline()
        if not szLine:  # Line read fail? EOF!
            break
        else:
            if szLine[0:len("MACRO")] == "MACRO": # is it "MACRO"?
                file_out.write(szLine)
                while True:
                    szLine = file_in.readline()
                    if not szLine:  # Line read fail? EOF!
                        break
                    elif szLine[0:len("END")] == "END": # End of "MACRO"?
                        file_out.write(szLine)
                        break
                    else:
                        file_out.write(szLine)
    return

# -----------------------------------------------------------
# Main start-up
# -----------------------------------------------------------
if len(sys.argv)!=2:
    print('gen_lef_macro.py <Magic>')
    print('     generate LEF Macro.')
    sys.exit(1);

szFileMagIn  = str(sys.argv[1])+".mag"
szFileScriptOut = str(sys.argv[1])+".sh"

file_out = open(szFileScriptOut, 'w')
file_out.write("magic -dnull -noconsol << EOF\n")
file_out.write("drc off\n")
file_out.write("box 0 0 0 0\n")
file_out.write("load {} -force\n".format(sys.argv[1]))
file_out.close()

get_obs_rect(szFileMagIn, "<< m1p >>", szFileScriptOut)
get_obs_rect(szFileMagIn, "<< m2p >>", szFileScriptOut)

file_out = open(szFileScriptOut, 'a')
file_out.write("lef write\n")
file_out.write("quit -force\n")
file_out.write("EOF\n")
file_out.close()

os.system("chmod uoa+x "+szFileScriptOut)
os.system("./"+szFileScriptOut)
os.system("rm ./"+szFileScriptOut)

lef_macro(str(sys.argv[1]))
