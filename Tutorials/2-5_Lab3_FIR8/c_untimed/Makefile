#
# Makefile for FIR8 C-algorithm
# Author: goodkook@gmail.com
#

SRCS = fir8.cpp fir8_tb.cpp calcDFT.cpp cnoise.cpp
HDRS = fir8.h cnoise.h
EXEC = fir8_tb

INC_PATH = -I. -I/opt/local/include
LIBS = -lm -lgsl

all:
	@echo 'Makefile for un-timed C/C++ test of "FIR8" example'
	@echo '  * GNU Science Library(GSL) is used for noise generation'
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following options'
	@echo '             build'
	@echo '             run'
	@echo '             plot_x'
	@echo '             plot_fx'
	@echo '             plot_y'
	@echo '             plot_fy'
	@echo '             clean'

build: $(EXEC)

$(EXEC): $(SRCS) $(HDRS)
	gcc $(INC_PATH) $(LIBS) -o $(EXEC) $(SRCS) $(LIBS)

run: $(EXEC)
	./$(EXEC) > $(EXEC)_out.txt

$(EXEC)_out.txt: $(EXEC)
	./$(EXEC) > $(EXEC)_out.txt

plot_x: $(EXEC)_out.txt
	./plotDFT.py input

plot_fx: $(EXEC)_out.txt
	./plotDFT.py inputDFT

plot_y: $(EXEC)_out.txt
	./plotDFT.py output

plot_fy: $(EXEC)_out.txt
	./plotDFT.py outputDFT
	
clean:
	rm -f $(EXEC)
	rm -f *.txt
