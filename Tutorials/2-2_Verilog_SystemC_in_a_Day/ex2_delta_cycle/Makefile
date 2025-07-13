# -----------------------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

SC_EXEC   = sc_delta_cycle_TB
SC_SRCS   = sc_main.cpp
SC_TOP_H  = $(SC_EXEC).h sc_delta_cycle.h

CFLAGS = -g
LIBS   = -lsystemc

ifeq ($(ORDER), FORWARD)
	CDEFS  = -DFORWARD_ORDERED
else ifeq ($(ORDER), REVERSE)
	CDEFS  = -DREVERSE_ORDERED
else
	CDEFS  = -DFORWARD_ORDERED
endif

ifeq ($(TYPE), CHANNEL)
	CDEFS += -DCHANNEL
else ifeq ($(TYPE), VARIABLE)
	CDEFS += -DVARIABLE
else
	CDEFS += -DCHANNEL
endif

all :
	@echo 'Makefile for Example: $(SC_EXEC)'
	@echo ''
	@echo '    make build'
	@echo '        Builds executable of "$(SC_EXEC)" with Verilated RTL and SystemC TB'
	@echo '        Command-Line Option: ORDER=[FORWARD|REVERSE] TYPE=[CHANNEL|VARIABLE]'
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
	clang++ -I. -I../c_untimed -I$(SYSTEMC_INCLUDE) $(CFLAGS) $(CDEFS) -L$(SYSTEMC_LIBDIR) \
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

