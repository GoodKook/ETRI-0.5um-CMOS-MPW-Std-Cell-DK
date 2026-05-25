# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

# -----------------------------------------------------
TOP_MODULE = picorv32i_ez

# -----------------------------------------------------
VERILOG_SRCS = \
	../$(TOP_MODULE)/picorv32.v \
	../$(TOP_MODULE)/$(TOP_MODULE).v
SC_SRCS = \
	sc_main.cpp \
	sc_Memory.cpp
SC_TOP_H = \
	sc_CPU_picorv32i_ez_Top.h \
	sc_Memory.h \
	defs.h

# -----------------------------------------------------
VERILATOR    = verilator
VL_WARNING   = -Wno-WIDTHTRUNC -Wno-WIDTHEXPAND
VCFLAGS      = -CFLAGS -g
VCFLAGS     += -CFLAGS -DCR_LF_CR
ifeq ($(VCD_TRACE), YES)
	VCFLAGS     += -CFLAGS -DVCD_TRACE_TEST_TB
#	VCFLAGS     += -CFLAGS -DVCD_TRACE_DUT_VERILOG
endif
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build rules -----------------------------------------
#all : $(TARGET_DIR)/$(TARGET) a1_keyboard a1_display
all:
	@echo
	@echo 'Makefile for Co-Simulation of Verilog-RTL example, $(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make lint'
	@echo '    TOP_MODULE=$(TOP_MODULE) VCD_TRACE = YES|[NO] IPC_TYPE=[SOCKET]|PIPE make build'
	@echo '    TOP_MODULE=$(TOP_MODULE) make run'
	@echo '    TOP_MODULE=$(TOP_MODULE) make wave'
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

lint :
	$(VERILATOR) --sc --timing $(VL_WARNING) --pins-sc-uint \
				--top-module $(TOP_MODULE) $(VERILOG_SRCS)

build: $(TARGET_DIR)/$(TARGET) a1_keyboard a1_display

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc $(VL_WARNING) --trace --timing --pins-sc-uint \
				--top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
				$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

a1_keyboard : a1_keyboard.cpp
	gcc -o a1_keyboard a1_keyboard.cpp

a1_display : a1_display.cpp
	gcc -o a1_display a1_display.cpp

run : $(TARGET_DIR)/$(TARGET) a1_keyboard a1_display
	rm -f *.fifo
	xterm -T "Display" ./a1_display &
	xterm -T "Keyboard" ./a1_keyboard &
	sleep 1
#	xterm -T "Computer" ./$(TARGET_DIR)/$(TARGET) &
#	clear
	./$(TARGET_DIR)/$(TARGET)

wave : sc_$(TOP_MODULE)_TB.vcd
	gtkwave sc_$(TOP_MODULE)_TB.vcd --giga --save=sc_$(TOP_MODULE)_TB.gtkw &
#	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &

clean :
	rm -f a1_keyboard
	rm -f a1_display
	rm -rf $(TARGET_DIR)
	rm -f *.vcd
	rm -f *.fifo

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)
