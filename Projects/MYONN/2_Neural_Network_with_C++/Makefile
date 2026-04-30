
all: 
	@echo "C++ version of 'part2_neural_network'"
	@echo "    make build"
	@echo "    make run"
	@echo "    make clean"
	@echo

build: part2_neural_network

part2_neural_network: Skeleton_Code.h part2_neural_network.h part2_neural_network.cpp
	g++ -o part2_neural_network part2_neural_network.cpp -lm

run: part2_neural_network
	./part2_neural_network | tee log.txt

clean:
	rm -f part2_neural_network
