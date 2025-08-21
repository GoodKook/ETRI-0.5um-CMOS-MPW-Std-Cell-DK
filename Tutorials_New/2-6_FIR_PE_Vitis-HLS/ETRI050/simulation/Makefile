# SystemC Environments -----------------------------------------
export SYSTEMC          = /opt/systemc
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH := $(SYSTEMC_LIBDIR):/usr/bin:$(LD_LIBRARY_PATH)

# Un-Timed Reference -------------------------------------------
REF_INC_PATH = ../../../2-5_Lab3_FIR8/c_untimed
REF_SRCS     = \
	../../../2-5_Lab3_FIR8/c_untimed/fir8.cpp \
    ../../../2-5_Lab3_FIR8/c_untimed/cnoise.cpp

# Targets ------------------------------------------------------
TOP_MODULE = fir

# SystemC testbench Reuse --------------------------------------
SC_SRCS =  \
	../../simulation/sc_fir_TB.cpp \
	../../simulation/sc_main.cpp
SC_HDRS = \
	../../simulation/sc_fir_TB.h

# Verilog Timing Sim. vars ---------------------------------------
VERILOG_SRCS = \
	../synthesis/fir.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v

build_net: VERILOG_SRCS = \
	../synthesis/fir.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v

build_tim: VERILOG_SRCS = \
	./fir_TB.v \
	../synthesis/fir.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells.v

# Verilator vars -----------------------------------------------
VERILATOR    = verilator
VL_WARNING   = -Wno-WIDTHTRUNC -Wno-WIDTHEXPAND
VL_SC_PINS	 = --pins-sc-uint
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(REF_INC_PATH)
VCFLAGS		+= -CFLAGS -DVCD_TRACE_TEST_TB
VCFLAGS		+= -CFLAGS -DVCD_TRACE_DUT_VERILOG
VCFLAGS		+= -CFLAGS -DSC_INCLUDE_FX
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl
#VCFLAGS		+= -CFLAGS -fPIC
#VCFLAGS		+= -LDFLAGS -shared
ifeq ($(HW_STYLE),)
	HW_STYLE = FIR_MAC_VERSION
endif
VCFLAGS		+= -CFLAGS -D$(HW_STYLE)

TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for Co-Simulation of "Vitis-HLS example, fir"'
	@echo 'Usage:'
	@echo '    make lint      ; Linting Verilog'
	@echo '    make build_net ; Building Co-Simulation Verilog netlist(Zero-Delay) with SystemC TB'
	@echo '    make build_tim ; Building Co-Simulation Verilog netlist(timing-sim) with SystemVerilog TB'
	@echo '    make run       ; Running Co-Sumlation with SystemC TB'
	@echo '    make run_tim   ; Running Timing simulation with SystemVerilog TB'
	@echo '    make wave      ; View DUT Verilog trace(Functional)'
	@echo '    make wave_tim  ; View DUT Verilog trace(Timing)'
	@echo '    make clean     ; Clean up working folder'
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[FIR_MAC_VERSION | FIR_SHIFTER_VERSION | FIR_ARRAY_VERSION] make build'

build_net : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS) $(REF_SRCS)
	$(VERILATOR) --sc $(VL_SC_PINS) $(VL_WARNING) --trace --timing --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS) $(REF_SRCS)

build_tim : $(TOP_MODULE)

$(TOP_MODULE) : $(VERILOG_SRCS)
	iverilog -g2005-sv -Tmin -gspecify -o $(TOP_MODULE) $(VERILOG_SRCS)

lint :
	$(VERILATOR) --sc $(VL_SC_PINS) --timing $(VL_WARNING) -CFLAGS -fPIC --top-module $(TOP_MODULE) $(VERILOG_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	rm -f fir_fifo
	mkfifo fir_fifo
	python3 ./sc_plotDFT.py &
	cp $(VITIS_SYN_PATH)/*.dat .
	./$(TARGET_DIR)/$(TARGET)

run_tim : $(TOP_MODULE)
	./$(TOP_MODULE)

wave : V$(TOP_MODULE).vcd
	gtkwave sc_$(TOP_MODULE)_tb.vcd --save=sc_$(TOP_MODULE)_tb.gtkw &
	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &

wave_tim : $(TOP_MODULE)_TB.vcd
	gtkwave $(TOP_MODULE)_TB.vcd --save=$(TOP_MODULE)_TB.gtkw &

clean :
	rm -f *.vcd
	rm -f *.dat
	rm -f fir_fifo
	rm -rf $(TARGET_DIR)
	rm -f $(TOP_MODULE)

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


