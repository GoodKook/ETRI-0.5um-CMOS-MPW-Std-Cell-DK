# -----------------------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

SC_EXEC   = sc_dff_TB
SC_SRCS   = ../dff/sc_main.cpp
SC_TOP_H  = ../dff/$(SC_EXEC).h Vdff.h

CFLAGS = -g
LIBS    = -lsystemc

all :
	@echo 'Makefile for Example: $(SC_EXEC)'
	@echo ''
	@echo '    make build'
	@echo '        Builds executable of "$(SC_EXEC)" with Verilated RTL and SystemC TB'
	@echo ''
	@echo '    make run'
	@echo '        Simulate $(SC_EXEC)'
	@echo ''
	@echo '    make wave'
	@echo '        View waveform'
	@echo ''
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo ''

build : $(SC_EXEC)

$(SC_EXEC) : $(SC_SRCS) $(SC_TOP_H)
	clang++ -I. -I../c_untimed -I$(SYSTEMC_INCLUDE) $(CFLAGS) -L$(SYSTEMC_LIBDIR) \
			-o $(SC_EXEC) $(LIBS) $(SC_SRCS)

run : $(SC_EXEC)
	./$(SC_EXEC)

wave : $(SC_EXEC).vcd
	gtkwave $(SC_EXEC).vcd --save=$(SC_EXEC).gtkw &

clean :
	rm -f $(SC_EXEC)
	rm -f *.vcd

debug : $(SC_EXEC)
	ddd $(SC_EXEC)

