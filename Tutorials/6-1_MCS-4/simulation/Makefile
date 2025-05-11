# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17
#export CXXFLAGS			= -std=c++2a

# SystemC testbench Reuse --------------------------------------
SC_SRCS = \
		sc_main.cpp

SC_HDRS = \
		sc_Vi4004.h \
		sc_mcs4.h \
		sc_mcs4_tb.h


# Verilator vars -----------------------------------------------
build: VERILOG_SRCS =  \
					../source/alu.v \
					../source/counter.v \
					../source/instruction_decode.v \
					../source/instruction_pointer.v \
					../source/scratchpad.v \
					../source/timing_generator.v \
					../source/timing_io.v \
					../source/i4004.v \
					../source/timing_recovery.v \
					../source/i4001.v

build_net: VERILOG_SRCS =  ../synthesis/i4004.v \
					~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v

VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g

# Targets ------------------------------------------------------
TOP_MODULE   = mcs_4
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo 'Makefile for Co-Simulation of "i4004, Legendary 4-bit CPU"'
	@echo 'Usage:'
	@echo '    Linting Verilog,'
	@echo '        DUT=<module name> make lint'
	@echo ''
	@echo '    Building functional-sim with SystemC TB,'
	@echo '        make build'
	@echo ''
	@echo '    Building netlist-sim with SystemC TB,'
	@echo '        make build_net'
	@echo ''
	@echo '    Running Functional simulation,'
	@echo '        make run'
	@echo ''
	@echo '    Running Timing simulation,'
	@echo '        make run_tim'
	@echo ''
	@echo '    View DUT Verilog trace(Functional),'
	@echo '        make wave'
	@echo ''
	@echo '    Clean up working folder,'
	@echo '        make clean'
	@echo ''

build : $(TARGET_DIR)/$(TARGET)

build_net : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --trace --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

build_tim : $(TOP_MODULE)

$(TOP_MODULE) : $(VERILOG_SRCS)
	iverilog -g2005-sv -Tmin -gspecify -o $(TOP_MODULE) $(VERILOG_SRCS)

lint :
	$(VERILATOR) --sc -Wall -CFLAGS +incdir+../source --top-module $(DUT) ../source/$(DUT).v

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

run_tim : $(TOP_MODULE)
	./$(TOP_MODULE)

wave : sc_mcs4.vcd
	gtkwave sc_mcs4.vcd --save=sc_mcs4.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd
	rm -f $(TOP_MODULE)

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


