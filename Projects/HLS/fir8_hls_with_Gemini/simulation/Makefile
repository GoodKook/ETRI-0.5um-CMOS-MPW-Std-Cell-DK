# SystemC Environments -----------------------------------------
export SYSTEMC          = /opt/systemc
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH := $(SYSTEMC_LIBDIR):/usr/bin:$(LD_LIBRARY_PATH)

# Targets ------------------------------------------------------
TOP_MODULE = fir8
#OUTPUT_LATENCY = 4

# Un-Timed Reference -------------------------------------------
REF_INC_PATH = ../../c_untimed
REF_SRCS     = \
	../c_untimed/$(TOP_MODULE).cpp \
    ../c_untimed/cnoise.cpp

# Emulation Reference -------------------------------------------
EMU_INC_PATH = ../../emulation


# SystemC testbench Reuse --------------------------------------
SC_SRCS =  \
	./sc_$(TOP_MODULE)_TB.cpp \
	./sc_main.cpp

SC_HDRS = \
	./sc_$(TOP_MODULE)_TB.h

# Verilator vars -----------------------------------------------
# Export environmental variable for C-Synth & Simulation of fir8.cpp
VERILOG_SRCS =  \
		../$(TOP_MODULE)/$(TOP_MODULE).v

VERILATOR    = verilator
VL_WARNING   = -Wno-WIDTHTRUNC -Wno-WIDTHEXPAND
VL_SC_PINS	 = --pins-sc-uint
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(REF_INC_PATH)
VCFLAGS		+= -CFLAGS -I$(EMU_INC_PATH)
VCFLAGS		+= -CFLAGS -DVCD_TRACE_TEST_TB
VCFLAGS		+= -CFLAGS -DVCD_TRACE_DUT_VERILOG
VCFLAGS		+= -CFLAGS -DSC_INCLUDE_FX
VCFLAGS		+= -CFLAGS -Wno-unused-result
VCFLAGS		+= -CFLAGS -DOUTPUT_LATENCY=$(OUTPUT_LATENCY)
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl
#VCFLAGS		+= -CFLAGS -D$(HW_STYLE)

TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@if [ ! -e "../$(TOP_MODULE)/$(TOP_MODULE).v" ];  then \
		echo "*******************************************************************"; \
		echo "!!! $(TOP_MODULE).v not exist in the RTL directory !!!"; \
		echo "*******************************************************************"; \
		echo "Try one of following RTLs,"; \
		ls -1 ../$(TOP_MODULE); \
		echo -n "Choose [0/1/2/3/4]: "; \
		read answer; : $${answer:=y}; \
		if [ "$$answer" = "0" ]; then \
			ln -s ../$(TOP_MODULE)/0_$(TOP_MODULE)_parallel.v ../$(TOP_MODULE)/$(TOP_MODULE).v; \
		elif [ "$$answer" = "1" ]; then \
			ln -s ../$(TOP_MODULE)/1_$(TOP_MODULE)_serial.v ../$(TOP_MODULE)/$(TOP_MODULE).v; \
		elif [ "$$answer" = "2" ]; then \
			ln -s ../$(TOP_MODULE)/2_$(TOP_MODULE)_ultra_low_area.v ../$(TOP_MODULE)/$(TOP_MODULE).v; \
		elif [ "$$answer" = "3" ]; then \
			ln -s ../$(TOP_MODULE)/3_$(TOP_MODULE)_no_mult.v ../$(TOP_MODULE)/$(TOP_MODULE).v; \
		elif [ "$$answer" = "4" ]; then \
			ln -s ../$(TOP_MODULE)/4_$(TOP_MODULE)_no_mult_FF.v ../$(TOP_MODULE)/$(TOP_MODULE).v; \
		else \
			echo "Selection out of range"; \
		fi; \
		exit; \
	fi
	@echo
	@echo 'Makefile for Co-Simulation of "$(TOP_MODULE)"'
	@echo 'Usage:'
	@echo '    make lint'
	@echo '    make build'
	@echo '    make re-build'
	@echo '    make run'
	@echo '    make clean'
	@echo
	@echo '    * Env. OUTPUT_LATENCY=N & FIX_SATURATION=YES|NO must be set before build'
	@echo

lint :
	$(VERILATOR) --sc $(VL_SC_PINS) --timing $(VL_WARNING) \
				--top-module $(TOP_MODULE) $(VERILOG_SRCS)

re-build:
	rm -rf $(TARGET_DIR)
	make build

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS) $(REF_SRCS)
ifeq ($(OUTPUT_LATENCY), )
	$(error OUTPUT_LATENCY is NOT set.)
endif
ifeq ($(FIX_SATURATION), )
	$(error FIX_SATURATION is NOT set.)
endif
ifeq ($(FIX_SATURATION), YES)
	$(VERILATOR) --sc $(VL_SC_PINS) $(VL_WARNING) --trace --timing \
				--top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
				-CFLAGS -DOUTPUT_LATENCY=$(OUTPUT_LATENCY) \
				-CFLAGS -DFIX_SATURATION \
				$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS) $(REF_SRCS)
else ifeq ($(FIX_SATURATION), NO)
	$(VERILATOR) --sc $(VL_SC_PINS) $(VL_WARNING) --trace --timing \
				--top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
				-CFLAGS -DOUTPUT_LATENCY=$(OUTPUT_LATENCY) \
				$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS) $(REF_SRCS)
else
	$(error FIX_SATURATION must be YES or NO.)
endif

run : $(TARGET_DIR)/$(TARGET)
	mkfifo fir8_fifo
	python3 ./sc_plotDFT2.py &
	./$(TARGET_DIR)/$(TARGET)

wave : V$(TOP_MODULE).vcd
	gtkwave sc_$(TOP_MODULE)_TB.vcd --save=sc_$(TOP_MODULE)_TB.gtkw &
	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &

clean :
	rm -f *.vcd
	rm -rf $(TARGET_DIR)
	rm -f ../$(TOP_MODULE)/$(TOP_MODULE).v
	rm -f $(TOP_MODULE)_fifo

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


