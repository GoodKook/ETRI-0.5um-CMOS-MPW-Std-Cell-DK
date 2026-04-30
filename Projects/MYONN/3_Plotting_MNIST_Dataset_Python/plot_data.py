#
# Plot hand written image with CSV(Comma Separated Value)
#

data_file = open("mnist_dataset/mnist_train_100.csv", 'r')
data_list = data_file.readlines()
data_file.close()
print(F"There's {len(data_list)} Data lists.")
print(F"0-th Data List: \n{data_list[0]}")

# Modules
import numpy
import matplotlib.pyplot

# Split that long text string of comma separated values into individual values, using the
#   commas as the place to do the splitting.
all_values = data_list[1].split(',')

# Ignore the first value, which is the label, and take the remaining list of 28 * 28 = 784
#   values and turn them into an array which has a shape of 28 rows by 28 columns.
image_array = numpy.asfarray(all_values[1:]).reshape((28,28))

# Plot that array!
matplotlib.pyplot.imshow(image_array,cmap='Greys',interpolation='None')
matplotlib.pyplot.show()

# convert 8-bit gray scale(0-255) to range from 0.01 to 1.0 for logistic function
scaled_input = (numpy.asfarray(all_values[1:]) / 255.0 * 0.99) + 0.01
print(scaled_input)

#output nodes is 10 (example)
onodes = 10
targets = numpy.zeros(onodes) + 0.01
targets[int(all_values[0])] = 0.99
# all_values[0] is 'label'
print(targets)

