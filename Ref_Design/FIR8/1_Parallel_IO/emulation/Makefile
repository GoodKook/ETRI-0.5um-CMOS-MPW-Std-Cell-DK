# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

# SystemC testbench Reuse --------------------------------------
SC_SRCS      =  ../../0_algorithm/sc_timed/sc_main.cpp \
				../../0_algorithm/sc_timed/sc_fir8_tb.cpp \
				../../0_algorithm/c_untimed/fir8.cpp \
				../../0_algorithm/c_untimed/cnoise.cpp
SC_HDRS      =  ../../0_algorithm/sc_timed/sc_fir8.h \
				../../0_algorithm/sc_timed/sc_fir8_tb.h \
				../simulation/E_fir_pe.h
SC_INC		= 	-I. -I../../0_algorithm/c_untimed \
				-I../../0_algorithm/sc_timed

# Targets ------------------------------------------------------
TOP_MODULE   = fir_pe

# Build Rules --------------------------------------------------
all : 
	@echo 'Makefile for Co-Emulation(FPGA) of "FIR8":8-bit Parallel IO'
	@echo 'Usage:'
	@echo '    Building'
	@echo '        make build'
	@echo '               for Co-Emulation: RTL PE in Arty A7-100 Board* with SystemC TB'
	@echo '                   * Must be configured before running'
	@echo '        NOTE: Re-used SystemC testbench at "0_algorithm/sc_timed/sc_fir8.h"'
	@echo '             & Emulation wrapper driver at "../simulation/E_fir_pe.h"'
	@echo ''
	@echo '    Running emulation,'
	@echo '        make run'
	@echo '    Viewing emulation result,'
	@echo '        make wave'
	@echo ''
	@echo '    Clean up working folder,'
	@echo '        make clean'

build  : $(TOP_MODULE)

$(TOP_MODULE) : $(SC_SRCS) $(SC_TOP_H)
	$(CXX) $(CXXFLAGS) \
		-DEMULATED \
		-DVCD_TRACE_FIR8 \
		-I. -I../simulation -I$(SYSTEMC_INCLUDE) \
		-L$(SYSTEMC_LIBDIR) -Wl,-rpath=$(SYSTEMC_LIBDIR) \
		-lsystemc -lm -lgsl \
		-o $(TOP_MODULE) $(SC_SRCS)

run : $(TOP_MODULE)
	./$(TOP_MODULE)

wave :
	../../0_algorithm/sc_timed/sc_plotDFT.py &
	gtkwave sc_fir8.vcd --save=sc_fir8.gtkw &

clean :
	rm -f $(TOP_MODULE)
	rm -f *.vcd
	rm -f ./Vivado/vivado*
