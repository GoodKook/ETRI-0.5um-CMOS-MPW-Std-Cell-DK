# -----------------------------------------------------
VERILOG_SRCS = ../source/array16.v \
               ../source/array8.v \
			   ../source/array4.v \
			   ../source/array2.v \
			   ../source/ha.v
SC_SRCS      = sc_main.cpp \
               sc_array16_TB.cpp
SC_TOP_H     = sc_array16_TB.h
VERILATOR    = verilator
CFLAGS       = -std=c++17
#CFLAGS1      = -g

LDFLAGS      = -lgsl

TOP_MODULE   = array16
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

all :
	@echo 'Makefile for "array_multiplier" Co-Simulation: Verilog RTL(*) under SystemC Testbench'
	@echo '    (*) Translate Verilog RTL to SystemC model using Verilator'
	@echo ''
	@echo '    make build'
	@echo '        Builds executable of "array_multiplier" with Verilated RTL and SystemC TB'
	@echo ''
	@echo '    make run'
	@echo '        Simulate "array_multiplier"'
	@echo ''
	@echo '    make wave'
	@echo '        View SystemC generated waveform'
	@echo ''
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo ''

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) --exe --build \
		-CFLAGS $(CFLAGS) \
		-LDFLAGS $(LDFLAGS) \
		$(VERILOG_SRCS) $(SC_SRCS)

lint : $(VERILOG_SRCS)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(VERILOG_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

wave : sc_$(TOP_MODULE)_TB.vcd
	gtkwave sc_$(TOP_MODULE)_TB.vcd --save=sc_$(TOP_MODULE)_TB.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)

