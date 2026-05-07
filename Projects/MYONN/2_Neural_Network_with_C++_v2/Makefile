
PROJECT = neuralNetwork
CPP_SOURCES = \
		neuralNetwork.cpp
CPP_HEADERS = \
		nnLayer.h \
		nnWeight.h \
		neuralNetwork.h

ifeq ($(EPOCH),)
	EPOCH=100
endif

all: 
	@echo "C++ version/v.2 of 'part2_neural_network'"
	@echo
	@echo "    EPOCH=$(EPOCH) make build"
	@echo "    make run"
	@echo "    make clean"
	@echo

build: $(PROJECT)

$(PROJECT): $(CPP_SOURCES) $(CPP_HEADERS)
	g++ -o $(PROJECT) -DTRAIN_EPOCH=$(EPOCH) $(CPP_SOURCES) -lm

run: $(PROJECT)
	./$(PROJECT) | tee $(PROJECT).log

clean:
	rm -f $(PROJECT)
