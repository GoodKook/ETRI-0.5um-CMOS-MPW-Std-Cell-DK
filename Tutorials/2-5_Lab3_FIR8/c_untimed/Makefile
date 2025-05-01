#
# Makefile for FIR8 C-algorithm
# Author: goodkook@gmail.com
#

SRCS = fir8.cpp fir8_tb.cpp calcDFT.cpp cnoise.cpp
HDRS = fir8.h cnoise.h
EXEC = fir8_tb

INC_PATH = -I.
LIBS = -lm -lgsl

ifeq ($(HW_STYLE), MACC)
	VERSION=FIR_MAC_VERSION
else ifeq ($(HW_STYLE), SHIFT)
	VERSION=FIR_SHIFTER_VERSION
else ifeq ($(HW_STYLE), ARRAY)
	VERSION=FIR_ARRAY_VERSION
else
	VERSION=FIR_MAC_VERSION
endif

all:
	@echo
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
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[MACC | SHIFT | ARRAY] make build'
	@echo

build: $(EXEC)

$(EXEC): $(SRCS) $(HDRS)
	gcc $(INC_PATH) -D$(VERSION) $(LIBS) -o $(EXEC) $(SRCS) $(LIBS)

run: $(EXEC)
	./$(EXEC) | tee $(EXEC)_out.txt

$(EXEC)_out.txt: $(EXEC)
	./$(EXEC) > $(EXEC)_out.txt

plot_x: $(EXEC)_out.txt
	python3 ./plotDFT.py input

plot_fx: $(EXEC)_out.txt
	python3 ./plotDFT.py inputDFT

plot_y: $(EXEC)_out.txt
	python3 ./plotDFT.py output

plot_fy: $(EXEC)_out.txt
	python3 ./plotDFT.py outputDFT
	
clean:
	rm -f $(EXEC)
	rm -f *.txt

