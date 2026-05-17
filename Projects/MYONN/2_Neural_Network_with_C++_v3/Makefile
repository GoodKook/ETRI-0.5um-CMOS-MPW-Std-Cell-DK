
PROJECT = neuralNetwork
BASE_CLASS_PATH = ../2_Neural_Network_with_C++_v2
CPP_SOURCES = \
		neuralNetwork.cpp
CPP_HEADERS = \
		$(BASE_CLASS_PATH)/nnLayer.h \
		$(BASE_CLASS_PATH)/nnWeight.h \
		$(BASE_CLASS_PATH)/nnActivation_Func.h \
		neuralNetwork.h

ifeq ($(EPOCH),)
	EPOCH=100
endif

ifeq ($(ACTIVATION_FUNCTION),)
	ACTIVATION_FUNCTION = SIGMOID
endif

all: 
	@echo "C++ version/v.2 of 'part2_neural_network'"
	@echo
	@echo "    ACTIVATION_FUNCTION=$(ACTIVATION_FUNCTION) EPOCH=$(EPOCH) make build"
	@echo "    make run"
	@echo "    make clean"
	@echo

build: $(PROJECT)

$(PROJECT): $(CPP_SOURCES) $(CPP_HEADERS)
	g++ -o $(PROJECT) -I$(BASE_CLASS_PATH) -D$(ACTIVATION_FUNCTION) -DTRAIN_EPOCH=$(EPOCH) $(CPP_SOURCES) -lm

run: $(PROJECT)
	./$(PROJECT) | tee $(PROJECT).log

clean:
	rm -f $(PROJECT)
	rm -f $(PROJECT).log
	
