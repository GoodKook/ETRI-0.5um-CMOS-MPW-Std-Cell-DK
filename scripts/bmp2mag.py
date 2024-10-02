#!/usr/bin/env python3

import os, sys
import numpy as np
from PIL import Image

if len(sys.argv)!=3:
    print('bmp2mag.py <BMP> <layer name>')
    print('     Convert BMP(2-Color B/W) image to Magic layout')
    sys.exit(1);

szImageName = str(sys.argv[1])
szLayerName = str(sys.argv[2])

img = Image.open(szImageName)
img.show()

x_2 = np.asarray(img)
#print(x_2.shape)
#print(x_2.size)
#print(x_2.ndim)
#print(len(x_2))

#nRow,nCol = x_2.shape
print(np.shape(x_2))
nRow,nCol = np.shape(x_2)
#print("Row={} Col={}".format(nRow, nCol))

file_out = open(szImageName+szLayerName+".mag", 'w')

#print("magic")
#print("tech scmos")
##print("magscale 1 2")
#print("timestamp 0")
#print("<< {} >>".format(szLayerName))

file_out.write("magic\n")
file_out.write("tech scmos\n")
file_out.write("magscale 1 2\n")
file_out.write("timestamp 0\n")
szLine = "<< " + szLayerName + " >>\n"
file_out.write(szLine)

for col in range(0, nCol):
    for row in range(nRow-1, 0, -1):
        if x_2[row][col] == False :
            szLine = "rect " + str(row) + " " + str(col) + " " + str(row+1) + " " + str(col+1) + "\n"
            file_out.write(szLine)

file_out.write("<< end >>")
file_out.write("\n")
file_out.close()

