# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

# SystemC testbench Reuse --------------------------------------
SC_SRCS      =  ./sc_main.cpp \
				./sc_fir8_tb.cpp \
				../../0_algorithm/c_untimed/fir8.cpp \
				../../0_algorithm/c_untimed/cnoise.cpp
SC_HDRS      =  ./sc_fir8.h \
				./sc_fir8_tb.h \
				./V_fir_pe.h

# Verilator vars -----------------------------------------------
VERILOG_SRCS =  ../source/fir_pe.v
VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I../../../0_algorithm/c_untimed
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8_TB
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl


# Targets ------------------------------------------------------
TOP_MODULE   = fir_pe
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo 'Makefile for Co-Simulation of "FIR8": Splitted IO'
	@echo 'Usage:'
	@echo '    Building'
	@echo '        make verilated'
	@echo '               for Co-Simulation: PE in Verilog RTL with SystemC TB*'
	@echo '                   * Used SystemC testbench at "./sc_fir8.h"'
	@echo ''
	@echo '    Running simulation,'
	@echo '        make run'
	@echo ''
	@echo '    Following options for Co-Simulation under Questa* environment'
	@echo '        make mti_fun_build'
	@echo '        make mti_fun_run'
	@echo '        make mti_net_build'
	@echo '        make mti_net_run'
	@echo ''
	@echo '    Clean up working folder,'
	@echo '        make clean'
	@echo '        make clean_all'

verilated : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

lint : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall $(VERILOG_DEF) \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)
	../../0_algorithm/sc_timed/sc_plotDFT.py &
	gtkwave sc_fir8.vcd --save=sc_fir8.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd

clean_all :
	rm -rf $(TARGET_DIR)
	rm -rf work
	rm -f transcript
	rm -f *.wlf
	rm -f *.vcd
	rm -f *.vstf

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)

# ===========================================================

mti_fun_build : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	vsim -c -do ./mti_sim/compile_fun.do

mti_fun_run :
	vsim -c -do ./mti_sim/simulate_fun.do

mti_net_build : ../synthesis/$(TOP_MODULE).v
	vsim -c -do ./mti_sim/compile_net.do

mti_net_run :
	vsim -c -do ./mti_sim/simulate_net.do

mti_clean :
	rm -rf work
	rm -f transcript
	rm -f *.wlf
	rm -f *.vcd

