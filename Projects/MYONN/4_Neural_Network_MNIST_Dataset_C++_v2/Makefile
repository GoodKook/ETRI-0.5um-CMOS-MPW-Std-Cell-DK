
PROJECT = neuralNetwork_mnist

NEURAL_NETWORK_PATH = ../2_Neural_Network_with_C++_v2

HDR_FILES = \
	$(NEURAL_NETWORK_PATH)/nnLayer.h \
	$(NEURAL_NETWORK_PATH)/nnWeight.h \
	$(NEURAL_NETWORK_PATH)/nnActivation_Func.h \
	$(NEURAL_NETWORK_PATH)/neuralNetwork.h \
	./$(PROJECT).h

CPP_FILES = \
	./$(PROJECT).cpp

ifeq ($(EPOCH),)
	EPOCH = 20
endif

ifeq ($(ACTIVATION_FUNCTION),)
	ACTIVATION_FUNCTION = SIGMOID
endif

all:
	@echo "C++ version of Neural Network for MNIST dataset"
	@echo "Original python version from 'Make Your Own Neural Network', Tariq Rashid"
	@echo
	@echo "    ACTIVATION_FUNCTION=$(ACTIVATION_FUNCTION) EPOCH=$(EPOCH) make build"
	@echo "    make run"
	@echo "    make online"
	@echo "    make clean"
	@echo
	@echo "CC-BY-NC by goodkook@gmail.com"
	@echo

build: $(PROJECT)

run: $(PROJECT)
	./$(PROJECT) mnist_dataset/mnist_train_100.csv 20 mnist_dataset/mnist_test_10.csv |tee $(PROJECT).log

online: $(PROJECT)
	./$(PROJECT) mnist_dataset/mnist_train_100_online.csv $(EPOCH)

$(PROJECT): $(CPP_FILES) $(HDR_FILES)
	g++ -o $(PROJECT) \
		-DTRAIN_EPOCH=$(EPOCH) \
		-D$(ACTIVATION_FUNCTION) \
		-I$(NEURAL_NETWORK_PATH) \
		$(CPP_FILES) -lm -lSDL2

clean:
	rm -f $(PROJECT)
	rm -f $(PROJECT).log
	rm -f Sample.csv
	

