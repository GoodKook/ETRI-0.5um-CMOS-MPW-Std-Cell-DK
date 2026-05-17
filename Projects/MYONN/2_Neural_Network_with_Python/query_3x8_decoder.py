
import numpy

def query_3x8_decoder(neuralNetwork):
    for n in range(8):
        input_list = numpy.zeros(3)
        m = n
        for i in range(3):
            if (m & 1): input_list[i] = 0.99
            else :      input_list[i] = 0.0
            m >>=1
            pass
        pass
        print("Input :", input_list)
        final_outputs = neuralNetwork.query(input_list)
        print("Result:\n", final_outputs)
    pass
