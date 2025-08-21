# SystemC Environments -----------------------------------------
export SYSTEMC          = /opt/systemc
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH := $(SYSTEMC_LIBDIR):/usr/bin:$(LD_LIBRARY_PATH)

# Un-Timed Reference -------------------------------------------
REF_INC_PATH = ../../../2-5_FIR8/c_untimed
REF_SRCS     = \
	../../2-5_FIR8/c_untimed/fir8.cpp \
    ../../2-5_FIR8/c_untimed/cnoise.cpp

# Emulation Reference -------------------------------------------
EMU_INC_PATH = ../../emulation

# Targets ------------------------------------------------------
TOP_MODULE = fir

# SystemC testbench Reuse --------------------------------------
SC_SRCS =  \
	./sc_fir_TB.cpp \
	./sc_main.cpp
SC_HDRS = \
	./sc_fir_TB.h

# Verilator vars -----------------------------------------------
VITIS_SYN_PATH = \
	../$(TOP_MODULE)/hls_component/syn/verilog

# Export environmental variable for C-Synth & Simulation of fir8.cpp
VERILOG_SRCS =  \
		$(VITIS_SYN_PATH)/*.v

VERILATOR    = verilator
VL_WARNING   = -Wno-WIDTHTRUNC -Wno-WIDTHEXPAND
VL_SC_PINS	 = --pins-sc-uint
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(REF_INC_PATH)
VCFLAGS		+= -CFLAGS -I$(EMU_INC_PATH)
VCFLAGS		+= -CFLAGS -DVCD_TRACE_TEST_TB
VCFLAGS		+= -CFLAGS -DVCD_TRACE_DUT_VERILOG
VCFLAGS		+= -CFLAGS -DSC_INCLUDE_FX
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl
ifeq ($(HW_STYLE),)
	HW_STYLE = FIR_MAC_VERSION
endif
VCFLAGS		+= -CFLAGS -D$(HW_STYLE)
build_emu: VCFLAGS += -CFLAGS -DEMULATED_CO_SIM

TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for Co-Simulation of "Vitis-HLS example, fir"'
	@echo 'Usage:'
	@echo '    make lint      	; Linting Verilog'
	@echo '    make build     	; Building Co-Simulation Verilated RTL with SystemC TB'
	@echo '    make build_emu 	; Building Co-Emulation(CA,SA) FPGA+Verilog RTL with SystemC TB'
	@echo '    make build_TL 	; Building Transaction Level, Co-Emulation FPGA with C/C++ function-call'
	@echo '    make build_TL_Bulk'
	@echo '    make run       	; Running Co-Sumlation/Emulation(CA,SA) with SystemC TB'
	@echo '    make run_TL    	; Running Transaction Level(TL,TL_FreeRTOS,TL_Scheduler)'
	@echo '    make run_TL_Bulk	; Running Transaction Level(Bulky 4800 Sample)'
	@echo '    make wave      	; View DUT Verilog trace(Functional)'
	@echo '    make clean     	; Clean up working folder'
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[FIR_MAC_VERSION | FIR_SHIFTER_VERSION | FIR_ARRAY_VERSION] make build'

lint :
	$(VERILATOR) --sc $(VL_SC_PINS) --timing $(VL_WARNING) -CFLAGS -fPIC --top-module $(TOP_MODULE) $(VERILOG_SRCS)

build : $(TARGET_DIR)/$(TARGET)

build_emu : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS) $(REF_SRCS)
	$(VERILATOR) --sc $(VL_SC_PINS) $(VL_WARNING) --trace --timing --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS) $(REF_SRCS)

build_TL: $(TOP_MODULE)_TL

$(TOP_MODULE)_TL: $(TOP_MODULE)_TL.cpp
	gcc -o $(TOP_MODULE)_TL $(TOP_MODULE)_TL.cpp

build_TL_Bulk: $(TOP_MODULE)_TL_Bulk

$(TOP_MODULE)_TL_Bulk: $(TOP_MODULE)_TL_Bulk.cpp
	gcc -o $(TOP_MODULE)_TL_Bulk $(TOP_MODULE)_TL_Bulk.cpp

run : $(TARGET_DIR)/$(TARGET)
	rm -f $(TOP_MODULE)_fifo
	mkfifo $(TOP_MODULE)_fifo
	python3 ./sc_plotDFT.py &
	cp $(VITIS_SYN_PATH)/*.dat .
	./$(TARGET_DIR)/$(TARGET)

run_TL: $(TOP_MODULE)_TL
	rm -f $(TOP_MODULE)_fifo
	mkfifo $(TOP_MODULE)_fifo
	python3 ./sc_plotDFT.py &
	./$(TOP_MODULE)_TL

run_TL_Bulk: $(TOP_MODULE)_TL_Bulk
	rm -f $(TOP_MODULE)_fifo
	mkfifo $(TOP_MODULE)_fifo
	python3 ./sc_plotDFT.py &
	./$(TOP_MODULE)_TL_Bulk

run_tim : $(TOP_MODULE)
	./$(TOP_MODULE)

wave : V$(TOP_MODULE).vcd
	gtkwave sc_$(TOP_MODULE)_tb.vcd --save=sc_$(TOP_MODULE)_tb.gtkw &
	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &

clean :
	rm -f *.vcd
	rm -f *.dat
	rm -rf $(TARGET_DIR)
	rm -f $(TOP_MODULE)
	rm -f $(TOP_MODULE)_fifo
	rm -f $(TOP_MODULE)_TL
	rm -f $(TOP_MODULE)_TL_Bulk

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


