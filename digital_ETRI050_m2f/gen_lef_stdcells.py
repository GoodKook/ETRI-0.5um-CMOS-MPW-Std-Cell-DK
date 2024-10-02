#!/usr/bin/env python3

import os, sys

# -----------------------------------------------------------
# Function:
def get_macro_name(nStart, szLine):
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
    return szRet

# -----------------------------------------------------------
# Main start-up
# -----------------------------------------------------------
if len(sys.argv)!=2:
    print('gen_lef_stdcells.py <Magic>')
    print('     generate std-cell LEF from std_cells Magic layout')
    sys.exit(1);

szFileMagIn  = str(sys.argv[1])+".mag"
file_in  = open(szFileMagIn,  'r')
szScriptPath = os.path.dirname(os.path.realpath(sys.argv[0]))

szRuleLEF = "etri050_stdcells_Via_Rule.lef"
szStdCellLEF = "etri050_stdcells.lef"

# Create LEF for Routing layer & Via Rule
os.system("rm " + szStdCellLEF)
os.system("cp " + szRuleLEF + " " + szStdCellLEF)

# Create Obstructed Macros
while True:
    szLine = file_in.readline()
    if not szLine: # EoF?
        break
    elif szLine[0:len("use ")] == "use ":
        szMacro = get_macro_name(len("use "), szLine)
        os.system("python3 "+szScriptPath+"/extract_lef_macro.py "+szMacro)
        os.system("cat "+szMacro+"_Macro.lef >> "+szStdCellLEF)
        #---------------------------------------------
        # Clean-Up
        os.system("rm ./"   +szMacro+ ".lef")
        os.system("rm ./"   +szMacro+ "_Macro.lef")
        os.system("rm ./"   +szMacro+ ".sh")
        os.system("rm ./_"  +szMacro+ ".lef")
        os.system("rm ./_"  +szMacro+ ".mag")
        os.system("rm ./__" +szMacro+ ".lef")
        os.system("rm ./__" +szMacro+ ".mag")
file_in.close()

os.system("echo")
os.system("echo 'END LIBRARY' >> "+szStdCellLEF)
os.system("echo")

print("* ********************************************************************")
print("* STD-CELL LEF Generated")
print("*        from "+ szFileMagIn)
print("*          to "+ szStdCellLEF)
print("* ********************************************************************")
