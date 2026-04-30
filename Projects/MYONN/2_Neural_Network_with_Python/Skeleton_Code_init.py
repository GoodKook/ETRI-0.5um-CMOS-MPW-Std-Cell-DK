# Make Your Own Neural Network, Part 2
# Filename: Skeleton_Code_init.py
# ------------------------------------------
# Neural network class definition
#
import numpy
import scipy.special

# Neural network class definition
class neuralNetwork:
    # Initialise the neural network
    def __init__(self, inputnodes, hiddennodes, outputnodes, learningrate):
        self.inodes = inputnodes
        self.hnodes = hiddennodes    
        self.onodes = outputnodes
        self.lr = learningrate  # learning rate

        # Link weight matrices,
        self.wih = numpy.random.normal(0.0, pow(self.hnodes, -0.5), (self.hnodes, self.inodes))
        self.who = numpy.random.normal(0.0, pow(self.onodes, -0.5), (self.onodes, self.hnodes))

        # activation function is the sigmoid function
        self.activation_function = lambda x: scipy.special.expit(x)
        pass

    # Train the neural networks
    def train():
        pass

    # query the neural network
    def query():
        pass

    pass

if __name__=="__main__":
    input_nodes = 3
    output_nodes = 3
    hidden_nodes = 3
    learning_rate = 0.3
    n = neuralNetwork(input_nodes, hidden_nodes, output_nodes, learning_rate)

    print(n.wih)
    print(n.who)
    
