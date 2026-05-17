
all: plot_data
	@echo "Plotting MNIST dataset"
	./plot_data 

plot_data: plot_data.cpp
	g++ -o plot_data plot_data.cpp -lSDL2

clean:
	rm -f plot_data
