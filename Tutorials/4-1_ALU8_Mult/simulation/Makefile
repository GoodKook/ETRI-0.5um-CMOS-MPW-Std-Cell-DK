# -----------------------------------------------------
lint: VERILOG_SRCS =	\
	../source/ALU8_Mult.v

build: VERILOG_SRCS =	\
	../source/ALU8_Mult.v

build_net: VERILOG_SRCS = \
	../synthesis/ALU8_Mult.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v

SC_SRCS      =	sc_main.cpp
SC_TOP_H     =	sc_ALU8_Mult_tb.h \
				sc_monitor.h \
				sc_gen_test.h \
				def_commands.h

VERILATOR    = verilator
CFLAGS       = -CFLAGS -std=c++17
CFLAGS		+= -CFLAGS -g

TOP_MODULE   = ALU8_Mult
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
	@echo
	@echo 'Makefile for "$(TOP_MODULE)" Co-Simulation: Verilog & SystemC TestBench.'
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following options'
	@echo '         for functional simulation under Verilator & SystemC/clang++ environment'
	@echo '             lint'
	@echo '             build'
	@echo '             run'
	@echo '         View VCD, dumpped from SC-TB'
	@echo '             wave'
	@echo '         Clean-up'
	@echo '             clean'
	@echo

build: $(TARGET_DIR)/$(TARGET)

build_net: $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc --trace -Wall -I../source --top-module $(TOP_MODULE) --exe --build \
		$(CFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

lint : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc -Wall -I../source --top-module $(TOP_MODULE) $(VERILOG_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)

wave: sc_VALU8_Mult_tb.vcd
	gtkwave sc_VALU8_Mult_tb.vcd --save=sc_VALU8_Mult_tb.gtkw &
	gtkwave ALU8_Mult.vcd --save=ALU8_Mult.gtkw &

