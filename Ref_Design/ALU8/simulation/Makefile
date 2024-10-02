# -----------------------------------------------------
VERILOG_SRCS =	../source/ALU8.v \
				../source/ALU_wrapper.v
SC_SRCS      =	sc_main.cpp
SC_TOP_H     =	sc_ALU_wrapper_top.h \
				sc_monitor.h \
				sc_gen_test.h \
				def_commands.h

VERILATOR    = verilator
CFLAGS       = -CFLAGS -std=c++17
CFLAGS		+= -CFLAGS -g

TOP_MODULE   = ALU_wrapper
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
	@echo 'Makefile for "ALU8" Co-Simulation: Verilog & SystemC TestBench.'
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following options'
	@echo '         for functional simulation under Verilator & SystemC/clang++ environment'
	@echo '             lint'
	@echo '             build'
	@echo '             run'
	@echo '         for functional or post-synthesis simulation under Questa* environment'
	@echo '             mti_func_build'
	@echo '             mti_func_run'
	@echo '             mti_net_build'
	@echo '             mti_net_run'
	@echo '         View VCD, dumpped from SC-TB'
	@echo '             wave'
	@echo '         Clean-up'
	@echo '             clean'
	@echo '             mti_clean'
	@echo '             clean_all'

build: $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) --exe --build \
		$(CFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

lint : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) \
		$(CFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd

clean_all :
	rm -rf $(TARGET_DIR)
	rm -rf work
	rm -f transcript
	rm -f *.wlf
	rm -f *.vcd

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)

wave: sc_VALU_wrapper.vcd
	gtkwave sc_VALU_wrapper.vcd --save=sc_VALU_wrapper.gtkw &

# ===========================================================

mti_func_build : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	vsim -c -do ./mti_sim/compile_fun.do

mti_net_build : ../synthesis/$(TOP_MODULE).v
	vsim -c -do ./mti_sim/compile_net.do

mti_func_run :
	vsim -c -do ./mti_sim/simulate_fun.do

mti_net_run :
	vsim -c -do ./mti_sim/simulate_net.do

mti_clean :
	rm -rf work
	rm -f transcript
	rm -f *.wlf
	rm -f *.vcd

