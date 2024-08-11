# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

# SystemC testbench Reuse --------------------------------------
SC_SRCS      =  ../simulation/sc_main.cpp \
				../simulation/sc_fir8_tb.cpp \
				../../0_algorithm/c_untimed/fir8.cpp \
				../../0_algorithm/c_untimed/cnoise.cpp
SC_HDRS      =  ../simulation/sc_fir8.h \
				../simulation/sc_fir8_tb.h \
				../simulation/V_fir_pe.h \
				./E_fir_pe.h

# Verilator vars -----------------------------------------------
VERILOG_SRCS =  ../source/fir_pe.v
VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I..
VCFLAGS		+= -CFLAGS -I../../../0_algorithm/c_untimed
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8_TB
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS		+= -CFLAGS -DEMULATED
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl


# Targets ------------------------------------------------------
TOP_MODULE   = fir_pe
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo 'Makefile for Co-Simulation* & Co-Emulation** of "FIR8": Splitted IO'
	@echo '        Simulating a Verilog RTL PE with SystemC Testbench,'
	@echo '        The PE is verilated(*) & implemented into FPGA(**)'
	@echo 'Usage:'
	@echo '    Building'
	@echo '        make build'
	@echo ''
	@echo '    Running simulation,'
	@echo '        make run'
	@echo ''
	@echo '    Clean up working folder,'
	@echo '        make clean'
	@echo '        make clean_all'

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

lint : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall $(VERILOG_DEF) \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

wave :
	../../0_algorithm/sc_timed/sc_plotDFT.py &
	gtkwave sc_fir8.vcd --save=sc_fir8.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.txt
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
