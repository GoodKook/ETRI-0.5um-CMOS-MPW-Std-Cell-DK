#!/usr/bin/env python3

import os, sys
import numpy as np
from PIL import Image

# -----------------------------------------------------------------
# Main
if len(sys.argv)!=2:
    print('bmp2mag.py <BMP>')
    print('     Convert BMP(2-Color B/W) image to Magic layout on metal1/2/3 layer')
    sys.exit(1);

szImageName = str(sys.argv[1])

img = Image.open(szImageName).convert("L")
img.show()
img.size

x_2 = np.asarray(img)
#print(x_2.shape)
#print(x_2.min())
#print(x_2.max())

xSize, ySize = x_2.shape
level = (x_2.max()-x_2.min())/9

for col in range(0, xSize):
    for row in range(0, ySize):
        if (x_2[col][row] < level) :
            print("##", end="");
        elif (x_2[col][row] < level*2):
            print(" #", end="");
        elif (x_2[col][row] < level*3):
            print("**", end="");
        elif (x_2[col][row] < level*4):
            print(" *", end="");
        elif (x_2[col][row] < level*5):
            print("++", end="");
        elif (x_2[col][row] < level*6):
            print(" +", end="");
        elif (x_2[col][row] < level*7):
            print("..", end="");
        elif (x_2[col][row] < level*8):
            print(" .", end="");
        else :
            print("  ", end="");
    print("")
