#
# Gentle start of Python
# Filename: plotting_arrays.py
#

import numpy

arr = numpy.zeros([5,6])

(nRows,nCols)=arr.shape
print('Array has ',nRows, 'x', nCols)

for i in range(nRows):
  for j in range(nCols):
    arr[i][j] = int(numpy.random.rand()*100)
    pass
  pass

print(arr)

import matplotlib.pyplot

matplotlib.pyplot.imshow(arr, interpolation="nearest")

matplotlib.pyplot.show()

