
all:
	@echo "Gentle start of C++"
	@echo "    make arrays    		; 2D Array"
	@echo "    make func_avg  		; function"
	@echo "    make for_sqrt  		; math function"
	@echo "    make plotting_arrays	; SDL2 example"
	@echo "    make dog_class		; Class examle"
	@echo
	@echo "    make clean     ; Clean up"
	@echo

arrays: arrays.cpp
	gcc -o arrays arrays.cpp
	./arrays

func_avg: func_avg.cpp
	gcc -o func_avg func_avg.cpp
	./func_avg

for_sqrt: for_sqrt.cpp
	gcc -o for_sqrt for_sqrt.cpp -lm
	./for_sqrt

plotting_arrays: plotting_arrays.cpp
	gcc -o plotting_arrays plotting_arrays.cpp -lSDL2
	./plotting_arrays

dog_class: dog_class.cpp
	g++ -o dog_class dog_class.cpp
	./dog_class

clean:
	rm -f arrays
	rm -f func_avg
	rm -f for_sqrt
	rm -f plotting_arrays
	rm -f dog_class

