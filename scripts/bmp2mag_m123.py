#!/usr/bin/env python3

import os, sys
import numpy as np
from PIL import Image

# ---------------------------------------------------------------
def rect_out(file_out, Array2d, szLayer, xSize, ySize, xOffset, yOffset):
    szLine = "<< " + szLayer + " >>\n"
    file_out.write(szLine)

    for col in range(0, xSize):
        for row in range(ySize-1, 0, -1):
            if x_2[row][col] == False :
                nRow = row + xOffset
                nCol = col + yOffset 
                szLine = "rect " + str(nRow) + " " + str(nCol) + " " + str(nRow+1) + " " + str(nCol+1) + "\n"
                file_out.write(szLine)

# -----------------------------------------------------------------
# Main
if len(sys.argv)!=2:
    print('bmp2mag.py <BMP>')
    print('     Convert BMP(2-Color B/W) image to Magic layout on metal1/2/3 layer')
    sys.exit(1);

szImageName = str(sys.argv[1])

img = Image.open(szImageName)
img.show()

x_2 = np.asarray(img)
nRow, nCol = x_2.shape

file_out = open(szImageName+".mag", 'w')
file_out.write("magic\n")
file_out.write("tech scmos\n")
file_out.write("magscale 1 2\n")
file_out.write("timestamp 0\n")
szLine = "<< metal1 >>\n"
file_out.write(szLine)

rect_out(file_out, x_2, "metal1", nCol, nRow, 0, 0)
rect_out(file_out, x_2, "metal2", nCol, nRow, 2, 2)
rect_out(file_out, x_2, "metal3", nCol, nRow, 4, 4)

file_out.write("<< end >>")
file_out.write("\n")
file_out.close()

