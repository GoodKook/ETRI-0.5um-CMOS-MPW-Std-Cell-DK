# SystemC Environments -----------------------------------------
export SYSTEMC          = /opt/systemc
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH := $(SYSTEMC_LIBDIR):/usr/bin:$(LD_LIBRARY_PATH)

# Un-Timed Reference -------------------------------------------
REF_INC_PATH = ../../c_untimed
REF_SRCS     = \
	../c_untimed/fir8.cpp \
    ../c_untimed/cnoise.cpp

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
	@echo '    make lint'
	@echo
	@echo '    make build'
	@echo '    make run'
	@echo '    make wave'
	@echo
	@echo '    make build_emu'
	@echo '    make run_emu'
	@echo '    make wave_emu'
	@echo
	@echo '    make wave'
	@echo '    make clean'
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[FIR_MAC_VERSION | FIR_SHIFTER_VERSION | FIR_ARRAY_VERSION] make build'
	@echo

lint :
	$(VERILATOR) --sc $(VL_SC_PINS) --timing $(VL_WARNING) -CFLAGS -fPIC --top-module $(TOP_MODULE) $(VERILOG_SRCS)

build : $(TARGET_DIR)/$(TARGET)

build_emu : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS) $(REF_SRCS)
	$(VERILATOR) --sc $(VL_SC_PINS) $(VL_WARNING) --trace --timing --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS) $(REF_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	@if [ ! -f "fir_fir_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R.dat" ]; then \
		ln -s ../fir/hls_component/syn/verilog/fir_fir_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R.dat \
				./fir_fir_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R.dat; \
	fi
	@if [ ! -f "fir_shift_reg_RAM_AUTO_1R1W.dat" ]; then \
		ln -s ../fir/hls_component/syn/verilog/fir_shift_reg_RAM_AUTO_1R1W.dat \
				./fir_shift_reg_RAM_AUTO_1R1W.dat; \
	fi
	python3 ./sc_plotDFT.py &
	./$(TARGET_DIR)/$(TARGET)

run_emu : $(TARGET_DIR)/$(TARGET)
	@if [ ! -f "fir_fir_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R.dat" ]; then \
		ln -s ../fir/hls_component/syn/verilog/fir_fir_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R.dat \
				./fir_fir_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R.dat; \
	fi
	@if [ ! -f "fir_shift_reg_RAM_AUTO_1R1W.dat" ]; then \
		ln -s ../fir/hls_component/syn/verilog/fir_shift_reg_RAM_AUTO_1R1W.dat \
				./fir_shift_reg_RAM_AUTO_1R1W.dat; \
	fi
	python3 ./sc_plotDFT.py &
	./$(TARGET_DIR)/$(TARGET)

wave : V$(TOP_MODULE).vcd
	gtkwave sc_$(TOP_MODULE)_tb.vcd --save=sc_$(TOP_MODULE)_tb.gtkw &
	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &

wave_emu : E$(TOP_MODULE).vcd
	gtkwave sc_$(TOP_MODULE)_tb.vcd --save=sc_$(TOP_MODULE)_tb.gtkw &
	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &
	gtkwave E$(TOP_MODULE).vcd --save=E$(TOP_MODULE).gtkw &

clean :
	rm -f *.vcd
	rm -f *.dat
	rm -rf $(TARGET_DIR)
	rm -f $(TOP_MODULE)

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


