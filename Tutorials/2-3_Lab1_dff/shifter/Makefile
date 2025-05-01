# -----------------------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

TOP_MODULE   = shifter

VERILOG_SRCS = $(TOP_MODULE).v
SC_SRCS      = sc_main.cpp
SC_TOP_H     = sc_$(TOP_MODULE)_TB.h
VERILATOR    = verilator
CFLAGS       = -g

TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

all :
	@echo 'Makefile for Example: $(TOP_MODULE)'
	@echo ''
	@echo '    make build'
	@echo '        Builds executable of "$(TOP_MODULE)" with Verilated RTL and SystemC TB'
	@echo ''
	@echo '    make lint'
	@echo '        Linting $(TOP_MODULE).v'
	@echo ''
	@echo '    make run'
	@echo '        Simulate $(TOP_MODULE)'
	@echo ''
	@echo '    make wave'
	@echo '        View waveform'
	@echo ''
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo ''

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc -Wall --trace --top-module $(TOP_MODULE) --exe --build \
		-CFLAGS $(CFLAGS) \
		$(VERILOG_SRCS) $(SC_SRCS)

lint : $(VERILOG_SRCS)
	$(VERILATOR) --sc -Wall --trace --top-module $(TOP_MODULE) $(VERILOG_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

wave : sc_$(TOP_MODULE)_TB.vcd
	gtkwave sc_$(TOP_MODULE)_TB.vcd --save=sc_$(TOP_MODULE)_TB.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)

