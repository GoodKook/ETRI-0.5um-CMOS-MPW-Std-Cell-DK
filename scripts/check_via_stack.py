#!/usr/bin/env python3

import os, sys

stacked_rect = [[]]

# -----------------------------------------------------------
# Function: Magic Grid Scale
def get_magscale(szFileMagIn):
#    nMult = 1   # Tech: Lambda=0.3u, Magic Grid = 0.15u
#    nDiv = 1
    
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
    return nMult, nDiv

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
# Function:
def get_rect_from_line(szLine):
    szLLX, nStart = get_num_from_line(len("rect"), szLine)
    szLLY, nStart = get_num_from_line(nStart, szLine)
    szURX, nStart = get_num_from_line(nStart, szLine)
    szURY, nStart = get_num_from_line(nStart, szLine)

    return int(szLLX), int(szLLY), int(szURX), int(szURY)
    
# -----------------------------------------------------------
# Function:
def compare_rect(szFromLine, szToLine, nMargin):
    #print("compare: " + szFromLine + " * " + szToLine)
    if szFromLine[0:len("rect")] == "rect" and szToLine[0:len("rect")] == "rect":
        fromLLX, fromLLY, fromURX, fromURY = get_rect_from_line(szFromLine)
        toLLX, toLLY, toURX, toURY = get_rect_from_line(szToLine)
        
        CenterX1 = (fromLLX + fromURX)/2
        CenterY1 = (fromLLY + fromURY)/2
        CenterX2 = (toLLX + toURX)/2
        CenterY2 = (toLLY + toURY)/2
        
        if (abs(CenterX1 - CenterX2) + abs(CenterY1 - CenterY2)) <= nMargin:
            #print("compare: " + szFromLine + "*" + szToLine)
            return True
        else:
            return False
    else:
        return False

# -----------------------------------------------------------
# Function:
def check_stack(szFileMagIn, szFromLayer, szToLayer, nMargin, nMult, nDiv):

    szFileFrom = szFileMagIn + "_From"
    szFileTo   = szFileMagIn + "_To"
    
    os.system("cp " + szFileMagIn + " " + szFileFrom)
    os.system("cp " + szFileMagIn + " " + szFileTo)
    
    file_from = open(szFileFrom, 'r')

    nStack = 0

    while True:
        szLineFrom = file_from.readline()
        if not szLineFrom:  # EOF
            file_from.close()
            break
        elif szLineFrom[0:len(szFromLayer)] == szFromLayer: # 'From' Layer
            while True:
                szLineFrom = file_from.readline()           # Read next line
                if not szLineFrom:
                    break
                elif szLineFrom[0:len("rect")] == "rect":     # Is it 'rect'?
                    file_to = open(szFileTo, 'r')        # Then File Open
                    while True:
                        szLineTo = file_to.readline()
                        if not szLineTo:
                            file_to.close()
                            break
                        elif szLineTo[0:len(szToLayer)] == szToLayer:
                            while True:
                                szLineTo = file_to.readline()
                                if not szLineTo:
                                    file_to.close()
                                    break
                                elif szLineTo[0:len("rect")] == "rect":
                                    if compare_rect(szLineFrom, szLineTo, nMargin):    ## Check stacked
                                        nStack += 1
                                        print("Stacked #{}".format(nStack))
                                        print(szFromLayer + " " + szLineFrom, end="")
                                        print(szToLayer + " " + szLineTo, end="")
                                        nLLX, nLLY, nURX, nURY = get_rect_from_line(szLineTo)
                                        print("Box(Scaled): {} {} {} {}\n".format( \
                                            int(nLLX*nMult/nDiv), \
                                            int(nLLY*nMult/nDiv), \
                                            int(nURX*nMult/nDiv), \
                                            int(nURY*nMult/nDiv) ))

                                        stacked_rect[nStack-1].append(szLineTo)
                                        stacked_rect.append([])

                                else:
                                    break
                            #end of while "rect"
                        # end of if "szToLayer"
                    #end while
                else:
                    break
                # end of "rect"
            # end of while
        # end of if "FromLayer"
    #end of while

    os.system("rm " + szFileFrom)
    os.system("rm " + szFileTo)
    return

# -----------------------------------------------------------
# Main start-up
# -----------------------------------------------------------
if len(sys.argv)!=5:
    print('check_via_stack.py <Magic name> <layer#1> <layer#2> <margin>')
    print('     Check stacked via')
    print('         Layer Names are;')
    print('             ndcontact')
    print('             pdcontact')
    print('             psubstratepcontact')
    print('             nsubstratencontact')
    print('             polycontact')
    print('             m2contact')
    print('             m3contact')
    sys.exit(1)

szFileMagIn  = str(sys.argv[1])+".mag"
if not os.path.isfile(szFileMagIn):
    print("File {} not exist!".format(szFileMagIn))
    sys.exit(1)

szFromLayer = "<< " + str(sys.argv[2]) + " >>"
szToLayer = "<< " + str(sys.argv[3]) + " >>"
nMargin = int(sys.argv[4])

nMult, nDiv = get_magscale(szFileMagIn)
print("Mult={} / Div={}".format(nMult, nDiv))

check_stack(szFileMagIn, szFromLayer, szToLayer, nMargin, nMult, nDiv)

NumStack = len(stacked_rect) - 1

if NumStack:
    szFileMagOut = str(sys.argv[1])+"_Stacked.mag"
    file_out = open(szFileMagOut, 'w')
    file_in  = open(szFileMagIn, 'r')
    while True:
        szLineIn = file_in.readline()
        if not szLineIn:
            file_in.close()
            file_out.close()
            break
        elif szLineIn[0:len("<< end >>")] == "<< end >>":
            file_out.write("<< error_p >>\n")
            for i in range(len(stacked_rect)):
                file_out.write(str(*stacked_rect[i]))
            file_out.write("<< end >>")
            file_in.close()
            file_out.close()

            print("***************************************")
            print("{} Stacked Contact and/or Via found!".format(NumStack))
            print("Magic layout \"{}\" created with DRC error layer".format(szFileMagOut))
            break;
        else:
            file_out.write(szLineIn)
else:
    print("No stacked Contact and/or Via found.")

