# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

#---------------------------------------------------------------
#TOP_MODULE =

# SystemC testbench Reuse --------------------------------------
SC_SRCS =  \
	./kbhit.cpp \
	./sc_mem.cpp \
	./sc_main.cpp \
	./sc_$(TOP_MODULE)_TB.cpp
SC_HDRS = \
	./sc_$(TOP_MODULE)_TB.h

# Verilator vars -----------------------------------------------
RTL_PATH = \
	../$(TOP_MODULE)
CPU_6502_PATH = \
	../../cpu_6502/cpu_6502
WOZMON_PATH = \
	../../apple_1_WozMon/apple_1_WozMon

lint: VERILOG_SRCS =  \
	$(CPU_6502_PATH)/ALU8.v \
	$(CPU_6502_PATH)/cpu_6502.v \
	$(WOZMON_PATH)/wozmon.v \
	$(RTL_PATH)/pia_kbd.v \
	$(RTL_PATH)/pia_dsp.v \
	$(RTL_PATH)/apple_1_WozMon_PIA.v

build: VERILOG_SRCS =  \
	$(CPU_6502_PATH)/ALU8.v \
	$(CPU_6502_PATH)/cpu_6502.v \
	$(WOZMON_PATH)/wozmon.v \
	$(RTL_PATH)/pia_kbd.v \
	$(RTL_PATH)/pia_dsp.v \
	$(RTL_PATH)/apple_1_WozMon_PIA.v

run: VERILOG_SRCS =  \
	$(CPU_6502_PATH)/ALU8.v \
	$(CPU_6502_PATH)/cpu_6502.v \
	$(WOZMON_PATH)/wozmon.v \
	$(RTL_PATH)/pia_kbd.v \
	$(RTL_PATH)/pia_dsp.v \
	$(RTL_PATH)/apple_1_WozMon_PIA.v

#-------------------------------------------------------------------------------
VERILATOR    = verilator
VL_WARNING   = -Wno-WIDTHTRUNC -Wno-WIDTHEXPAND
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(SYSTEMC_INCLUDE)
ifeq ($(VCD_TRACE),YES)
VCFLAGS		+= -CFLAGS -DVCD_TRACE_TEST_TB
VCFLAGS		+= -CFLAGS -DVCD_TRACE_DUT_VERILOG
endif
ifeq ($(IPC_TYPE),)
IPC_TYPE = SOCKET
endif
VCFLAGS		+= -CFLAGS -DIPC_$(IPC_TYPE)

# Targets ------------------------------------------------------
#TOP_MODULE   = $(TOP_MODULE)
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ -f ./sc_TOP_MODULE_TB.cpp ];  then \
		sed -i "s/TOP_MODULE/${TOP_MODULE}/g" ./sc_TOP_MODULE_TB.cpp; \
		mv -f sc_TOP_MODULE_TB.cpp sc_$(TOP_MODULE)_TB.cpp; \
	fi
	@if [ -f ./sc_TOP_MODULE_TB.h ];  then \
		sed -i "s/TOP_MODULE/${TOP_MODULE}/g" ./sc_TOP_MODULE_TB.h; \
		mv -f sc_TOP_MODULE_TB.h sc_$(TOP_MODULE)_TB.h; \
	fi
	@if [ ! -e ./Apple-1 ];  then \
		tar xvf ../../cpu_6502/simulation/Apple-1.tar.gz; \
	fi
	@echo
	@echo 'Makefile for Co-Simulation of Verilog-RTL example, $(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make lint'
	@echo '    TOP_MODULE=$(TOP_MODULE) VCD_TRACE=YES|[NO] IPC_TYPE=[SOCKET]|PIPE make build'
	@echo '    TOP_MODULE=$(TOP_MODULE) make run'
	@echo '    TOP_MODULE=$(TOP_MODULE) make wave'
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

lint :
	$(VERILATOR) --sc --timing $(VL_WARNING) --pins-sc-uint \
				--top-module $(TOP_MODULE) $(VERILOG_SRCS) -I$(RTL_PATH)

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) ../$(TOP_MODULE)/$(TOP_MODULE).v $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc $(VL_WARNING) --trace --timing --pins-sc-uint \
				--top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
				$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS) -I$(RTL_PATH)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

wave : V$(TOP_MODULE).vcd sc_$(TOP_MODULE)_TB.vcd
	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &
	gtkwave sc_$(TOP_MODULE)_TB.vcd --save=sc_$(TOP_MODULE)_TB.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f V$(TOP_MODULE).vcd
	rm -f sc_$(TOP_MODULE)_TB.vcd
	rm -f $(TOP_MODULE)
	rm -f std_output.fifo
	rm -f std_input.fifo
	rm -rf Apple-1

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)
	
