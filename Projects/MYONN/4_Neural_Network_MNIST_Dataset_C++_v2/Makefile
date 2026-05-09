
PROJECT = neuralNetwork_mnist

NEURAL_NETWORK_PATH = ../2_Neural_Network_with_C++_v2
MNIST_DATASET_PATH  = ../3_Plotting_MNIST_Dataset_C++

HDR_FILES = \
	$(NEURAL_NETWORK_PATH)/nnLayer.h \
	$(NEURAL_NETWORK_PATH)/nnWeight.h \
	$(NEURAL_NETWORK_PATH)/neuralNetwork.h \
	./$(PROJECT).h

CPP_FILES = \
	./$(PROJECT).cpp

ifeq ($(EPOCH),)
	EPOCH = 20
endif

all:
	@echo "C++ version of Neural Network for MNIST dataset"
	@echo "Original python version from 'Make Your Own Neural Network', Tariq Rashid"
	@echo
	@echo "    make build"
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
		-I$(NEURAL_NETWORK_PATH) -I$(MNIST_DATASET_PATH) \
		$(CPP_FILES) -lm -lSDL2

clean:
	rm -f $(PROJECT)
	rm -f $(PROJECT).log
	rm -f Sample.csv
	

