# SystemC Environments -----------------------------------------
export SYSTEMC         = /usr/local/systemc-3.0.0
export SYSTEMC_HOME    = $(SYSTEMC)
export SYSTEMC_INCLUDE = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR  = $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX             = clang++
export CXXFLAGS        = -std=c++17

# SystemC testbench Reuse --------------------------------------
SC_SRCS = \
    ../simulation/sc_main.cpp
SC_HDRS = \
	../simulation/sc_ALU8_Mult_tb.h \
	../simulation/sc_monitor.h \
	../simulation/sc_gen_test.h \
	../simulation/def_commands.h \
    ./EALU8_Mult.h
SC_HDRS_PATH = ../emulation

# Targets ------------------------------------------------------
SC_TARGET = ALU8_Mult_tb

# Build Rules --------------------------------------------------
all :
	@echo 'Makefile for Emulation: $(SC_TARGET)'
	@echo ''
	@echo '    make build'
	@echo '        Builds executable of $(SC_TARGET) with SystemC TB,'
	@echo '           Co-Emulation with DUT-on-FPGA'
	@echo ''
	@echo '    make run'
	@echo '        Emulate $(SC_TARGET)'
	@echo ''
	@echo '    make wave'
	@echo '        View waveform'
	@echo ''
	@echo '    make plot'
	@echo '        Plot time-freq analysis'
	@echo ''
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo ''

build : $(SC_TARGET)

$(SC_TARGET): $(SC_SRCS) $(SC_HDRS)
	$(CXX) $(CXXFLAGS) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_HDRS_PATH) \
		-DPSCE_EMULATION \
		-lsystemc -o$(SC_TARGET) $(SC_SRCS)

run : ./$(SC_TARGET)
	./$(SC_TARGET)

wave :
	gtkwave sc_VALU8_Mult_tb.vcd --save=sc_VALU8_Mult_tb.gtkw &

clean :
	rm -f $(SC_TARGET)
	rm -f *.vcd

debug : $(SC_TARGET)
	ddd $(SC_TARGET)

