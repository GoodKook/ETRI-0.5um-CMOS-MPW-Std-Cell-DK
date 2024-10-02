#!/usr/bin/env python3

import os, sys

def erase_m2contact_box(szFileMagIn, szFileScriptOut):

    file_in  = open(szFileMagIn,  'r')
    file_out  = open(szFileScriptOut, 'a')

    while True:
        # Read line
        szLine = file_in.readline()
        if not szLine:  # Line read fail? EOF!
            break
        elif szLine[0:len("<< m2contact >>")] == "<< m2contact >>":
        
            while True:
                # Read next line for "rect"
                szLine = file_in.readline()
                if not szLine:  # Line read fail? EOF!
                    break
                else:
                    if szLine[0:len("rect")] == "rect": # is it "rect"?
                        file_out.write("box ")
                        for i in range(len("rect "), len(szLine)):
                            file_out.write(szLine[i])
                        file_out.write("erase m2contact\n")
                    else:
                        break

    file_in.close()
    file_out.close()
    return

def erase_m2p_box(szFileMagIn, szFileScriptOut):

    file_in  = open(szFileMagIn,  'r')
    file_out  = open(szFileScriptOut, 'a')

    while True:
        # Read line
        szLine = file_in.readline()
        if not szLine:  # Line read fail? EOF!
            break
        elif szLine[0:len("<< m2p >>")] == "<< m2p >>":
        
            while True:
                # Read next line for "rect"
                szLine = file_in.readline()
                if not szLine:  # Line read fail? EOF!
                    break
                else:
                    if szLine[0:len("rect")] == "rect": # is it "rect"?
                        file_out.write("box ")
                        for i in range(len("rect "), len(szLine)):
                            file_out.write(szLine[i])
                        file_out.write("erase m2\n")    # erase "metal2"
                    else:
                        break

    file_in.close()
    file_out.close()
    return

#----------------------------------------------------------------
# Merge Macro: Port(_) + OBS(__)
def merge_MACRO_OBS(szCellName):
    print("Merging MACRO PORT+OBS LEF.......................")

    szFileMACROLEF = "_"  + szCellName + ".lef"
    szFileObsLEF   = "__" + szCellName + ".lef"
    szFileLEF      =        szCellName + ".lef"

    file_MACRO = open(szFileMACROLEF, 'r')
    file_OBS   = open(szFileObsLEF, 'r')
    file_LEF   = open(szFileLEF, 'w')

    while True:
        # Scan OBS section in MACRO LEF
        szLine = file_MACRO.readline()
        if not szLine:  # Line read fail? EOF!
            break
        elif szLine[0:len("  OBS")] == "  OBS":
            #print("Closing MACRO LEF")
            #file_MACRO.close()  # Close MACRO LEF file, if OBS section
            # Scan OBS section in OBS LEF file
            bObstruction = False
            while True:
                szLine = file_OBS.readline()
                if not szLine:  # Line read fail? EOF!
                    break
                elif szLine[0:len("  OBS")] == "  OBS": # OBS
                    file_LEF.write(szLine)
                    bObstruction = True
                elif szLine[0:len("END LIBRARY")] == "END LIBRARY":
                    file_LEF.write(szLine)
                    bObstruction = False
                    break
                elif bObstruction :
                    file_LEF.write(szLine)
            break
        else :
            file_LEF.write(szLine)

    file_MACRO.close()
    file_OBS.close()
    file_LEF.close()

# -----------------------------------------------------------
# Function:
def lef_macro(szMacro):
    szLefIn  = szMacro+".lef"
    szLefOut = szMacro+"_Macro.lef"
    
    file_in  = open(szLefIn,  'r')
    file_out = open(szLefOut, 'w')

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
    print('extract_lef_scrips.py <Magic>')
    print('     Extract LEF info. from Magic file')
    sys.exit(1);

szFileMagIn     = str(sys.argv[1])+".mag"
szFileScriptOut = str(sys.argv[1])+".sh"

#-------------------------------------
# script to erase << m2contact >>

file_out = open(szFileScriptOut, 'w')
file_out.write("magic -dnull -noconsol << EOF\n")
file_out.write("drc off\n")
file_out.write("box 0 0 0 0\n")
file_out.write("load {} -force\n".format(sys.argv[1]))
file_out.close()

erase_m2contact_box(szFileMagIn, szFileScriptOut)

file_out = open(szFileScriptOut, 'a')
file_out.write("lef write _{}\n".format(str(sys.argv[1])))
file_out.write("save _{}\n".format(str(sys.argv[1])))
file_out.write("quit -force\n")
file_out.write("EOF\n\n")
file_out.close()

#-------------------------------------
# script to erase << m2p >>

file_out = open(szFileScriptOut, 'a')
file_out.write("magic -dnull -noconsol << EOF\n")
file_out.write("drc off\n")
file_out.write("box 0 0 0 0\n")
file_out.write("load {} -force\n".format(sys.argv[1]))
file_out.close()

erase_m2p_box(szFileMagIn, szFileScriptOut)

file_out = open(szFileScriptOut, 'a')
file_out.write("lef write __{}\n".format(str(sys.argv[1])))
file_out.write("save __{}\n".format(str(sys.argv[1])))
file_out.write("quit -force\n")
file_out.write("EOF\n")
file_out.close()

#-------------------------------------
# Run extracting script

os.system("chmod uoa+x " + str(sys.argv[1]) + ".sh")
os.system("./"+ str(sys.argv[1]) + ".sh")

#----------------------------------------
# Merge Macro: Port(_) + OBS(__)
merge_MACRO_OBS(str(sys.argv[1]))
lef_macro(str(sys.argv[1]))

#---------------------------------------------
# Clean-Up
os.system("rm   ./" + str(sys.argv[1]) + ".sh")
#os.system("rm   ./" + str(sys.argv[1]) + ".lef")
os.system("rm  ./_" + str(sys.argv[1]) + ".lef")
os.system("rm  ./_" + str(sys.argv[1]) + ".mag")
os.system("rm ./__" + str(sys.argv[1]) + ".lef")
os.system("rm ./__" + str(sys.argv[1]) + ".mag")

exit()
