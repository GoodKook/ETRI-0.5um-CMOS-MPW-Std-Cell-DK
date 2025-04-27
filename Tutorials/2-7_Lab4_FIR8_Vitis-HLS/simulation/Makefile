# SystemC Environments -----------------------------------------
export SYSTEMC          = /opt/systemc
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH := $(SYSTEMC_LIBDIR):/usr/bin:$(LD_LIBRARY_PATH)

# Un-Timed Reference -------------------------------------------
REF_INC_PATH = ../../../2-5_Lab3_FIR8/c_untimed
REF_SRCS     = \
	../../2-5_Lab3_FIR8/c_untimed/fir8.cpp \
    ../../2-5_Lab3_FIR8/c_untimed/cnoise.cpp

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

VERILOG_SRCS =  \
	$(VITIS_SYN_PATH)/fir_fir_Pipeline_SHIFTER_LOOP.v \
	$(VITIS_SYN_PATH)/fir_fir_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R.v \
	$(VITIS_SYN_PATH)/fir_flow_control_loop_pipe_sequential_init.v \
	$(VITIS_SYN_PATH)/fir_shift_reg_RAM_AUTO_1R1W.v \
	$(VITIS_SYN_PATH)/fir_fir_Pipeline_MACC_LOOP.v \
	$(VITIS_SYN_PATH)/fir_mac_muladd_8ns_6ns_16ns_16_4_1.v \
	$(VITIS_SYN_PATH)/fir.v

# iVerilog Timing Sim. vars ---------------------------------------
build_tim: VERILOG_SRCS = \
	./fir_TB.v \
	../synthesis/fir.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells.v

build_net: VERILOG_SRCS = \
	../source/fir.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v

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
#VCFLAGS		+= -CFLAGS -fPIC
#VCFLAGS		+= -LDFLAGS -shared
build_emu: VCFLAGS += -CFLAGS -DEMULATED_CO_SIM

TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for Co-Simulation of "Vitis-HLS example, fir"'
	@echo ''
	@echo 'Usage:'
	@echo '    Linting Verilog,'
	@echo '        make lint'
	@echo ''
	@echo '    Building functional-sim with SystemC TB,'
	@echo '        make build'
	@echo ''
	@echo '    Building functional-sim with SystemC TB,'
	@echo '        make build_emu'
	@echo ''
	@echo '    Building netlist-sim with SystemC TB,'
	@echo '        make build_net'
	@echo ''
	@echo '    Building Timing-sim with SystemVerilog TB,'
	@echo '        make build_tim'
	@echo ''
	@echo '    Running Functional simulation,'
	@echo '        make run'
	@echo ''
	@echo '    Running Timing simulation,'
	@echo '        make run_tim'
	@echo ''
	@echo '    View DUT Verilog trace(Functional),'
	@echo '        make wave'
	@echo ''
	@echo '    View DUT Verilog trace(Timing),'
	@echo '        make wave_tim'
	@echo ''
	@echo '    Clean up working folder,'
	@echo '        make clean'
	@echo ''

build : $(TARGET_DIR)/$(TARGET)

build_emu : $(TARGET_DIR)/$(TARGET)

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


