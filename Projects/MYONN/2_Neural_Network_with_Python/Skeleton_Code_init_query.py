# Make Your Own Neural Network, Part 2
# Filename: Skeleton_Code_init_query.py
# ------------------------------------------
# Neural network class definition
import numpy
import scipy.special

# neural network class definition
class neuralNetwork :
    # initialise the neural network
    def __init__(self, inputnodes, hiddennodes, outputnodes, learningrate) :
        # set number of nodes in each input, hidden, output layer
        self.inodes = inputnodes
        self.hnodes = hiddennodes
        self.onodes = outputnodes
        
        # link weight matrices, wih and who
        #   weights inside the arrays are w_i_j,
        #       where link is from node i to node j in the next layer
        self.wih = numpy.random.normal(0.0, pow(self.hnodes, -0.5), (self.hnodes, self.inodes))
        self.who = numpy.random.normal(0.0, pow(self.onodes, -0.5), (self.onodes, self.hnodes))

        # learning rate
        self.lr = learningrate
        
        # activation function is the sigmoid function
        self.activation_function = lambda x: scipy.special.expit(x)
        pass

    # train the neural network
    def train() :
       pass

    # query the neural network
    def query(self, inputs_list) :
        # convert inputs list to 2d array
        inputs = numpy.array(inputs_list, ndmin=2).T
        print('Transposed Input:')
        print(inputs)

        # calculate signals into hidden layer
        hidden_inputs = numpy.dot(self.wih, inputs)
        # calculate the signals emerging from hidden layer
        hidden_outputs = self.activation_function(hidden_inputs)

        # calculate signals into final output layer
        final_inputs = numpy.dot(self.who, hidden_outputs)
        # calculate the signals emerging from final output
        final_outputs = self.activation_function(final_inputs)
        return final_outputs

    pass    # End of class, neuralNetwork

if __name__=="__main__":
    input_nodes = 5
    hidden_nodes = 4
    output_nodes = 3
    learning_rate = 0.3

    n = neuralNetwork(input_nodes, hidden_nodes, output_nodes, learning_rate)

    print(n.wih)
    print(n.who)

    o = n.query([1.0, 0.5, -1.5, 1.5, 2.0])
    print(o)



