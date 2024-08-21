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
				../../2-5_Lab3_FIR8/c_untimed/fir8.cpp \
				../../2-5_Lab3_FIR8/c_untimed/cnoise.cpp
SC_HDRS      =  ./sc_fir8.h \
				./sc_fir8_tb.h \
				./V_fir_pe.h

# Verilator vars -----------------------------------------------
VERILOG_SRCS =  ../source/fir_pe.v
VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I../../../2-5_Lab3_FIR8/c_untimed
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8_TB
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl

# Targets ------------------------------------------------------
TOP_MODULE   = fir_pe
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo 'Makefile for Co-Simulation of "FIR_PE, 4-bit IO for MPW pad limit"'
	@echo 'Usage:'
	@echo '    Linting Verilog,'
	@echo '        make lint'
	@echo ''
	@echo '    Building,'
	@echo '        make build'
	@echo ''
	@echo '    Running,'
	@echo '        make run'
	@echo ''
	@echo '    Clean up working folder,'
	@echo '        make clean'
	@echo ''

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --trace --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

lint : $(VERILOG_SRCS)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(VERILOG_DEF) $(VERILOG_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)
	../../2-5_Lab3_FIR8/sc_timed/sc_plotDFT.py &
	gtkwave sc_fir8.vcd --save=sc_fir8.gtkw &

wave : Vfir_pe.vcd
	gtkwave Vfir_pe.vcd --save=Vfir_pe.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -rf sc_fir8_tb_out.txt
	rm -f *.vcd

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)

