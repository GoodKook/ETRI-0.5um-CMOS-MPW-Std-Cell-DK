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

img = Image.open(szImageName)
img.show()
img.size

x_2 = np.asarray(img)
print(x_2.shape)

xSize, ySize, n = x_2.shape

for col in range(0, xSize):
    for row in range(0, ySize):
        if x_2[col][row] == False :
            print("*", end="");
        else :
            print("  ", end="");
    print("")