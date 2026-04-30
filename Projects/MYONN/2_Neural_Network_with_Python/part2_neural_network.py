# python notebook for Make Your Own Neural Network
# (c) Tariq Rashid, 2016
# license is GPLv2

import numpy
# scipy.special for the sigmoid function expit()
import scipy.special

# neural network class definition
class neuralNetwork:
    # initialise the neural network
    def __init__(self, inputnodes, hiddennodes, outputnodes, learningrate):
        # set number of nodes in each input, hidden, output layer
        self.inodes = inputnodes
        self.hnodes = hiddennodes
        self.onodes = outputnodes
        
        # link weight matrices, wih and who
        # weights inside the arrays are w_i_j, where link is from node i to node j in the next layer
        # w11 w21
        # w12 w22 etc 
        self.wih = numpy.random.normal(0.0, pow(self.inodes, -0.5), (self.hnodes, self.inodes))
        self.who = numpy.random.normal(0.0, pow(self.hnodes, -0.5), (self.onodes, self.hnodes))

        # learning rate
        self.lr = learningrate
        
        # activation function is the sigmoid function
        self.activation_function = lambda x: scipy.special.expit(x)
        
        pass

    
    # train the neural network
    def train(self, inputs_list, targets_list):
        # convert inputs list to 2d array
        inputs = numpy.array(inputs_list, ndmin=2).T
        targets = numpy.array(targets_list, ndmin=2).T
        
        # calculate signals into hidden layer
        hidden_inputs = numpy.dot(self.wih, inputs)
        # calculate the signals emerging from hidden layer
        hidden_outputs = self.activation_function(hidden_inputs)
        
        # calculate signals into final output layer
        final_inputs = numpy.dot(self.who, hidden_outputs)
        # calculate the signals emerging from final output layer
        final_outputs = self.activation_function(final_inputs)
        
        # output layer error is the (target - actual)
        output_errors = targets - final_outputs
        # hidden layer error is the output_errors, split by weights, recombined at hidden nodes
        hidden_errors = numpy.dot(self.who.T, output_errors) 
        
        # update the weights for the links between the hidden and output layers
        self.who += self.lr * numpy.dot((output_errors * final_outputs * (1.0 - final_outputs)), numpy.transpose(hidden_outputs))
        
        # update the weights for the links between the input and hidden layers
        self.wih += self.lr * numpy.dot((hidden_errors * hidden_outputs * (1.0 - hidden_outputs)), numpy.transpose(inputs))
        
        pass

    
    # query the neural network
    def query(self, inputs_list):
        # convert inputs list to 2d array
        inputs = numpy.array(inputs_list, ndmin=2).T
        
        # calculate signals into hidden layer
        hidden_inputs = numpy.dot(self.wih, inputs)
        # calculate the signals emerging from hidden layer
        hidden_outputs = self.activation_function(hidden_inputs)
        
        # calculate signals into final output layer
        final_inputs = numpy.dot(self.who, hidden_outputs)
        # calculate the signals emerging from final output layer
        final_outputs = self.activation_function(final_inputs)
        
        return final_outputs

if __name__=="__main__":
    # number of input, hidden and output nodes
    input_nodes = 3
    hidden_nodes = 3
    output_nodes = 3

    # learning rate
    learning_rate = 0.3

    #------------------------------------------------------------------------------
    # create instance of neural network
    n = neuralNetwork(input_nodes,hidden_nodes,output_nodes, learning_rate)

    print(n.wih)
    print(n.who)

    # simple random number generator
    rand = lambda : abs(numpy.random.rand())

    #------------------------------------------------------------------------------
    # prepare target
    target_list = numpy.zeros(output_nodes)
    target_list[output_nodes-1] = 1.0
    print(f'Training Target: {target_list}')

    # prepare training input
    input_list = numpy.zeros(input_nodes)

    #------------------------------------------------------------------------------
    print("Training...")
    for k in range(100):
        for j in range(input_nodes) :
            if (j==0) : input_list[j] = 1.0
            else      : input_list[j] = 0.0 #rand()/10.0
            pass

        n.train(input_list, target_list)    # Train !

        print(F"Train #{k}: ", end="")
        for j in range(input_nodes) :
            print(F"{input_list[j]:.3f}", end=" ")

        print(F"-> ", end="")
        for j in range(output_nodes) :
            print(F"{target_list[j]:.3f}", end=" ")
        print("")

        pass

    #------------------------------------------------------------------------------
    # test query
    # prepare query input
    query_list = numpy.zeros(input_nodes)

    for k in range(10) :
        for j in range(input_nodes) :
            query_list[j] = rand()/5.0
            pass
        query_list[0] = 1.0

        # Query
        output_list = n.query(query_list)   # query !

        print('Query Test: ', end="")
        for i in range(input_nodes) :
            print(F"{query_list[i]:.3f}", end=" ")
            pass

        print("-> ", end="")
        for i in range(output_nodes) :
            print(F"{output_list[i,0]:.3f}", end=" ")
            pass

        print("")
    pass

    for k in range(input_nodes) :
        for j in range(input_nodes) :
            if (j==k) : query_list[j] = 1.0
            else      : query_list[j] = rand()/5.0
            pass

        # Query
        output_list = n.query(query_list)   # query !

        print('Query Test: ', end="")
        for i in range(input_nodes) :
            print(F"{query_list[i]:.3f}", end=" ")
            pass

        print("-> ", end="")
        for i in range(output_nodes) :
            print(F"{output_list[i,0]:.3f}", end=" ")
            pass

        print("")
    pass


