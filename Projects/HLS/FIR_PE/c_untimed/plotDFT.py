#!/usr/bin/env python3
#
# Python script to plot the result of C-algorithm
# Author: goodkook@gmail.com
#

# For 'matplotlib',
# python3 -m pip install -U matplotlib

import os, sys
import matplotlib.pyplot as plt
import numpy as np

#
# Start here -------------------------------------------
#
if len(sys.argv)!=3:
    print('plotDFT.py <TXT> <option>')
    print('     Plot graph from text file. <option> is one of followings,')
    print('        input, inputDFT, output, outputDFT')
    sys.exit(1);

x  = []
y1 = []     # Input Time seq
y2 = []     # Input spectrum
y3 = []     # Output Time seq
y4 = []     # Output spectrum

for line in open(str(sys.argv[1]), 'r'): 
    lines = [i for i in line.split()] 
    x.append(lines[0]) 
    y1.append(int(lines[1])) 
    y2.append(float(lines[2]))
    y3.append(float(lines[3]))
    y4.append(float(lines[4]))

if (str(sys.argv[2])=='input'):
    plt.title("Input Plot") 
    plt.xlabel('Time') 
    plt.ylabel('Amplitude') 
    plt.xticks(np.arange(0, 4800, 500))
    plt.plot(x, y1)
elif (str(sys.argv[2])=='inputDFT'):
    plt.title("Input DFT Plot") 
    plt.xlabel('Freq') 
    plt.ylabel('Power(log)') 
    plt.xticks(np.arange(0, 2400, 500))
    plt.plot(x, y2)
elif (str(sys.argv[2])=='output'):
    plt.title("Output Plot") 
    plt.xlabel('Time') 
    plt.ylabel('Amplitude') 
    plt.xticks(np.arange(0, 4800, 500))
    plt.plot(x, y3)
elif (str(sys.argv[2])=='outputDFT'):
    plt.title("Output DFT Plot") 
    plt.xlabel('Freq') 
    plt.ylabel('Power(log)') 
    plt.xticks(np.arange(0, 2400, 500))
    plt.plot(x, y4)
else:
    print('plotDFT.py <TXT> <option>')
    print('        input, inputDFT, output, outputDFT')
    sys.exit(1);

plt.show()
