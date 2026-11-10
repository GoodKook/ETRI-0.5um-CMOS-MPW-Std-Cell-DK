#!/usr/bin/env python3
#
# DFT
# https://pythonnumericalmethods.berkeley.edu/notebooks/chapter24.02-Discrete-Fourier-Transform.html
#

import os, sys
import matplotlib.pyplot as plt
import numpy as np

def DFT(x):
    """
    Function to calculate the 
    discrete Fourier Transform 
    of a 1D real-valued signal x
    """

    N = len(x)
    n = np.arange(N)
    k = n.reshape((N, 1))
    e = np.exp(-2j * np.pi * k * n / N)
    
    X = np.dot(e, x)
    
    return X

def plotDFT(x, y, Ref_y):
    # Calculate DFT
    Xi = DFT(x)
    # Power Amplitude
    X = (Xi.real*Xi.real) + (Xi.imag*Xi.imag)
    print(X.real)
    print(X.imag)
    
    Yi = DFT(y)
    Y = (Yi.real*Yi.real) + (Yi.imag*Yi.imag)
    print(Y.real)
    print(Y.imag)
    
    Ref_Yi = DFT(Ref_y)
    Ref_Y = (Ref_Yi.real*Ref_Yi.real) + (Ref_Yi.imag*Ref_Yi.imag)
    print(Ref_Y.real)
    print(Ref_Y.imag)

    # calculate the frequency
    N = len(X)
    n = np.arange(N)
    freq = n
    
    # get the one side frequency
    n_oneside = N//2
    f_oneside = freq[:n_oneside]
    
    # normalize the amplitude
    X_oneside = np.log10(X[:n_oneside].real/n_oneside)
    Y_oneside = np.log10(Y[:n_oneside].real/n_oneside)
    Ref_Y_oneside = np.log10(Ref_Y[:n_oneside].real/n_oneside)
    
    plt.figure(figsize = (12, 8))
    
    # Plot Input
    plt.subplot(3,2,1)
    plt.plot(np.arange(0, N, 1), x)
    plt.title('Test Input x(t)')
    plt.xlabel('Time')
    plt.ylabel('Amplitude')
    
    # Plot Input Spectrum
    plt.subplot(3,2,2)
    plt.plot(f_oneside, X_oneside.real)
    plt.title('Test Input X(f)')
    plt.xlabel('Freq (Hz)')
    plt.ylabel('DFT Amplitude log10(|X(f)|)')
    
    # Plot Output
    plt.subplot(3,2,3)
    plt.plot(np.arange(0, N, 1), y)
    #plt.ylim(10000, max(y))
    plt.title('RTL Output y(t)')
    plt.xlabel('Time')
    plt.ylabel('Amplitude')
    
    # Plot Output Spectrum
    plt.subplot(3,2,4)
    plt.plot(f_oneside, Y_oneside.real)
    plt.title('RTL Output Y(f)')
    plt.xlabel('Freq (Hz)')
    plt.ylabel('DFT Amplitude log10(|Y(f)|)')
    
    # Plot Reference Output
    plt.subplot(3,2,5)
    plt.plot(np.arange(0, N, 1), Ref_y)
    #plt.ylim(10000, max(y))
    plt.title('Ref. Output y(t)')
    plt.xlabel('Time')
    plt.ylabel('Amplitude')
    
    # Plot Reference Output Spectrum
    plt.subplot(3,2,6)
    plt.plot(f_oneside, Ref_Y_oneside.real)
    plt.title('Ref. Output Y(f)')
    plt.xlabel('Freq (Hz)')
    plt.ylabel('DFT Amplitude log10(|Y(f)|)')

    plt.tight_layout()
    plt.show()
    
    return

#
# Start here -------------------------------------------
#
F_SAMPLE = 4800
x = []
y = []
Ref_y = []

fp_fifo = open("./fir8_fifo", "rb")

for i in range(0, F_SAMPLE):
    x.append(int.from_bytes(fp_fifo.read(2), "little"))
    y.append(int.from_bytes(fp_fifo.read(2), "little"))
    Ref_y.append(int.from_bytes(fp_fifo.read(2), "little"))

plotDFT(x,y,Ref_y)

fp_fifo.close()
