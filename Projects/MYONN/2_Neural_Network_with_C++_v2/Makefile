
PROJECT = neuralNetwork
CPP_SOURCES = \
		neuralNetwork.cpp
CPP_HEADERS = \
		nnLayer.h \
		nnWeight.h \
		neuralNetwork.h

all: 
	@echo "C++ version/v.2 of 'part2_neural_network'"
	@echo "    make build"
	@echo "    make run"
	@echo "    make clean"
	@echo

build: $(PROJECT)

$(PROJECT): $(CPP_SOURCES) $(CPP_HEADERS)
	g++ -o $(PROJECT) $(CPP_SOURCES) -lm

run: $(PROJECT)
	./$(PROJECT) | tee $(PROJECT).log

clean:
	rm -f $(PROJECT)
