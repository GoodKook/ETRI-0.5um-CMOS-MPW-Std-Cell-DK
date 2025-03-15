#--------------------------------------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17
#--------------------------------------------------------------------
TOP_MODULE   = Your_Design

VERILOG_SRCS = \
	../source/$(TOP_MODULE).v \
	../source/pixel_gen.v
SC_SRCS = \
	sc_main.cpp \
	sc_$(TOP_MODULE)_TB.cpp
SC_TOP_H = \
	sc_$(TOP_MODULE)_TB.h
#--------------------------------------------------------------------
VERILATOR    = verilator
CFLAGS       = -std=c++17 -O3
LDFLAGS      = -lSDL2
#CFLAGS      += -g -Wall -Wfatal-errors

# DUT type is VERILATION (RTL simulation)
ifeq ($(VCD_TRACE),YES)
	CFLAGS      += -DVCD_TRACE
endif

# Specify display type on Verilog RTL
ifeq ($(TABLE_SIZE),MAX)
	VFLAGS       = -DMAX_TABLE_SIZE
else ifeq ($(TABLE_SIZE),HALF)
	VFLAGS       = -DHALF_TABLE_SIZE
else ifeq ($(TABLE_SIZE),VGAX)
	VFLAGS       = -DVGAX_120x60
else
	VFLAGS       = -DGLCD_128x64
endif

# Keyboard input selection
ifeq ($(KEYIN_SYNC),HSYNC)
	CFLAGS       += -DKEYIN_HSYNC
endif

TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

all :
	@echo ''
	@echo 'Makefile for "'$(TOP_MODULE)'" Co-Simulation: Verilog RTL under SystemC Testbench'
	@echo
	@echo '    make build'
	@echo '        Build executable of "'$(TOP_MODULE)'" with Verilated RTL and SystemC TB'
	@echo '        Options are;'
	@echo '            VCD_TRACE=<YES|[NO]>'
	@echo '            TABLE_SIZE=<MAX|HALF|VGAX|[GLCD]>'
	@echo '            KEYIN_SYNC=<HSYNC|[CLK]>'
	@echo ''
	@echo '    make run'
	@echo '        Simulate "'$(TOP_MODULE)'"'
	@echo ''
	@echo '    make wave'
	@echo '        View SystemC generated waveform'
	@echo ''
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo ''
	@echo '    GoodKook Lab., goodkook@gmail.com'
	@echo ''

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) --exe --build \
		-CFLAGS "$(CFLAGS)" \
		-LDFLAGS "$(LDFLAGS)" \
		$(VFLAGS) \
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

