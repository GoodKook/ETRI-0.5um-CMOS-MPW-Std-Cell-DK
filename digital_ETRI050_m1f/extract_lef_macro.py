#!/usr/bin/env python3

import os, sys

#----------------------------------------------------------------
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

#----------------------------------------------------------------
def erase_polycontact_box(szFileMagIn, szFileScriptOut):
    file_in  = open(szFileMagIn,  'r')
    file_out  = open(szFileScriptOut, 'a')

    while True:
        # Read line
        szLine = file_in.readline()
        if not szLine:  # Line read fail? EOF!
            break
        elif szLine[0:len("<< polycontact >>")] == "<< polycontact >>":
        
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
                        file_out.write("erase polycontact\n")
                    else:
                        break

    file_in.close()
    file_out.close()
    return

#----------------------------------------------------------------
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
                        file_out.write("erase m2p\n")   # erase "metal2 port"
                        file_out.write("erase m2\n")    # erase "metal2"
                    else:
                        break

    file_in.close()
    file_out.close()
    return

#----------------------------------------------------------------
def erase_m1p_box(szFileMagIn, szFileScriptOut):

    file_in  = open(szFileMagIn,  'r')
    file_out  = open(szFileScriptOut, 'a')

    while True:
        # Read line
        szLine = file_in.readline()
        if not szLine:  # Line read fail? EOF!
            break
        elif szLine[0:len("<< m1p >>")] == "<< m1p >>":
        
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
                        file_out.write("erase m1p\n")   # erase "metal1 port"
                        file_out.write("erase m1\n")    # erase "metal1"
                    else:
                        break

    file_in.close()
    file_out.close()
    return

#----------------------------------------------------------------
def erase_m1p_surround(szFileMagIn, szFileScriptOut, thickness):

    file_in  = open(szFileMagIn,  'r')
    file_out  = open(szFileScriptOut, 'a')

    while True:
        # Read line
        szLine = file_in.readline()
        if not szLine:  # Line read fail? EOF!
            break
        elif szLine[0:len("<< m1p >>")] == "<< m1p >>":
        
            while True:
                # Read next line for "rect"
                szLine = file_in.readline()
                if not szLine:  # Line read fail? EOF!
                    break
                else:
                    if szLine[0:len("rect")] == "rect": # is it "rect"?
                        #print(szLine.split(' '))
                        szRect, szLLX, szLLY, szURX, szURY = szLine.split(' ')
                        #print("rect {} {} {} {}".format(int(szLLX), int(szLLY), int(szURX), int(szURY)))
                        #print("box {} {} {} {}".format(int(szLLX)-1, int(szLLY)-1, int(szURX)+1, int(szLLY)))
                        #print("erase m1")
                        #print("box {} {} {} {}".format(int(szLLX)-1, int(szURY), int(szURX)+1, int(szURY)+1))
                        #print("erase m1")
                        #print("box {} {} {} {}".format(int(szLLX)-1, int(szLLY)-1, int(szLLX), int(szURY)))
                        #print("erase m1")
                        #print("box {} {} {} {}".format(int(szURX), int(szLLY), int(szURX)+1, int(szURY)))
                        #print("erase m1")
                        #----------------------------------------------------------------------------------
                        file_out.write("box {} {} {} {}\n".format(int(szLLX)-thickness, int(szLLY)-thickness, int(szURX)+thickness, int(szLLY)))
                        file_out.write("erase m1\n")
                        file_out.write("box {} {} {} {}\n".format(int(szLLX)-thickness, int(szURY), int(szURX)+thickness, int(szURY)+thickness))
                        file_out.write("erase m1\n")
                        file_out.write("box {} {} {} {}\n".format(int(szLLX)-thickness, int(szLLY)-thickness, int(szLLX), int(szURY)))
                        file_out.write("erase m1\n")
                        file_out.write("box {} {} {} {}\n".format(int(szURX), int(szLLY), int(szURX)+thickness, int(szURY)))
                        file_out.write("erase m1\n")

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

#--------------------------------------------------------------
# Script for Port generation after erase << polycontact >>

file_out = open(szFileScriptOut, 'w')
file_out.write("magic -dnull -noconsol << EOF\n")
file_out.write("drc off\n")
file_out.write("box 0 0 0 0\n")
file_out.write("load {} -force\n".format(sys.argv[1]))
file_out.close()

erase_polycontact_box(szFileMagIn, szFileScriptOut)
erase_m1p_surround(szFileMagIn, szFileScriptOut, 1)

file_out = open(szFileScriptOut, 'a')
file_out.write("lef write _{}\n".format(str(sys.argv[1])))
file_out.write("save _{}\n".format(str(sys.argv[1])))
file_out.write("quit -force\n")
file_out.write("EOF\n\n")
file_out.close()

#--------------------------------------------------------------
# Script for obstruction area generation
# after erase << m1p >> and << polycontact >>
file_out = open(szFileScriptOut, 'a')
file_out.write("magic -dnull -noconsol << EOF\n")
file_out.write("drc off\n")
file_out.write("box 0 0 0 0\n")
file_out.write("load {} -force\n".format(sys.argv[1]))
file_out.close()

erase_m1p_surround(szFileMagIn, szFileScriptOut, 7)
erase_m1p_box(szFileMagIn, szFileScriptOut)
#erase_polycontact_box(szFileMagIn, szFileScriptOut)

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
#os.system("rm   ./" + str(sys.argv[1]) + ".sh")
##os.system("rm   ./" + str(sys.argv[1]) + ".lef")
#os.system("rm  ./_" + str(sys.argv[1]) + ".lef")
#os.system("rm  ./_" + str(sys.argv[1]) + ".mag")
#os.system("rm ./__" + str(sys.argv[1]) + ".lef")
#os.system("rm ./__" + str(sys.argv[1]) + ".mag")

exit()

