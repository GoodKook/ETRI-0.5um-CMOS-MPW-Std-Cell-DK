
import numpy

def train_3x8_decoder(neuralNetwork):
    for n in range(8):
        target_list = numpy.zeros(8)
        target_list[n] = 0.99

        input_list = numpy.zeros(3)
        m = n
        for i in range(3):
            if (m & 1): input_list[i] = 0.99
            else :      input_list[i] = 0.0
            m >>=1
            pass
        pass
        print("Input :", input_list)
        print("Target:", target_list)
        neuralNetwork.train(input_list, target_list)
    pass
