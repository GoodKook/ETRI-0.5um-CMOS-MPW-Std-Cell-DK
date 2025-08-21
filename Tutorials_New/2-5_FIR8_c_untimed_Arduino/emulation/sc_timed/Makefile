# -----------------------------------------------------
export SYSTEMC         = /opt/systemc
export SYSTEMC_HOME    = $(SYSTEMC)
export SYSTEMC_INCLUDE = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR  = $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

SC_TOP  = sc_fir8_tb
SC_SRCS = \
	$(SC_TOP).cpp \
	../../../2-5_Lab3_FIR8/c_untimed/cnoise.cpp \
    sc_main.cpp

SC_HDRS = \
    sc_fir8.h \
	$(SC_TOP).h

CFLAGS  = -g
LIBS    = -lsystemc
LIBS   += -lm
LIBS   += -lgsl

all:
	@echo
	@echo 'Makefile for timed SystemC/C++ test: $(SC_TOP)'
	@echo '* Testbench for FIR8 running @ Arduino DUE (ARM Core) *'
	@echo
	@echo '    make build'
	@echo '    make run'
	@echo
	@echo '    make clean'
	@echo

build: $(SC_TOP)

$(SC_TOP): $(SC_SRCS) $(SC_HDRS)
	clang++ -I. -I.. \
			-I$(SYSTEMC_INCLUDE) $(CFLAGS) \
			-I../../../2-5_Lab3_FIR8/c_untimed \
			-L$(SYSTEMC_LIBDIR) \
			-o $(SC_TOP) \
			$(LIBS) \
			$(SC_SRCS)

run: $(SC_TOP)
	rm -f FIR8_fifo
	mkfifo FIR8_fifo
	rm -f sc_fir8.vcd
	mkfifo sc_fir8.vcd
	python3 ../../sc_plotDFT.py &
	./$(SC_TOP) &
	shmidcat sc_fir8.vcd | gtkwave -v -I sc_fir8.sav

#	gtkwave sc_fir8.vcd --save=sc_fir8.gtkw & 

clean :
	rm -f $(SC_TOP)
	rm -f FIR8_fifo
	rm -f *.vcd
	rm -f *.txt

debug : $(SC_TOP)
	ddd $(SC_TOP)

