# -----------------------------------------------------
TOP_MODULE   = fir8

VERILOG_SRCS = \
    $(TOP_MODULE).v \
    fir_pe.v
SC_SRCS = \
    ../sc_timed/sc_main.cpp \
    ../sc_timed/sc_fir8_tb.cpp \
    ../c_untimed/fir8.cpp \
    ../c_untimed/cnoise.cpp
SC_TOP_H = \
    ../sc_timed/sc_$(TOP_MODULE)_tb.h

VERILATOR = verilator
CFLAGS   += -CFLAGS -I../sc_timed
#CFLAGS  += -CFLAGS -DVCD_TRACE_FIR8_TB
CFLAGS   += -CFLAGS -DVCD_TRACE_FIR8
CFLAGS   += -CFLAGS -DVERILATED_CO_SIM
CFLAGS   += -CFLAGS -D$(VERSION)
LDFLAGS   = -LDFLAGS -lgsl

#VERILOG_DEFS = +define+

TARGET     = V$(TOP_MODULE)
TARGET_DIR = obj_dir

export SYSTEMC          = /opt/systemc
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

ifeq ($(HW_STYLE), MACC)
	VERSION=FIR_MAC_VERSION
else ifeq ($(HW_STYLE), SHIFT)
	VERSION=FIR_SHIFTER_VERSION
else ifeq ($(HW_STYLE), ARRAY)
	VERSION=FIR_ARRAY_VERSION
else
	VERSION=FIR_MAC_VERSION
endif

all :
	@echo
	@echo 'Makefile for Example: $(TOP_MODULE)'
	@echo
	@echo 'SystemC Testbench(Re-Used)'
	@echo '      +-------------------------------------------------------------+'
	@echo '      | V_fir8 (RTL)                                                |'
	@echo '      |    V_fir_pe[0]  V_fir_pe[1]       V_fir_pe[6]  V_fir_pe[7]  |'
	@echo '      |   +-------+    +-------+         +-------+    +-------+     |'
	@echo '      |   |       |    |       |         |       |    |       |     |'
	@echo 'Xin--[8]-->       ----->       --->...--->       ----->       ------->Xout'
	@echo '      |   |       |    |       |         |       |    |       |     |'
	@echo 'Yin--[16]->       ----->       --->...--->       ----->       ------->Yout'
	@echo '      |   |       |    |       |         |       |    |       |     |'
	@echo '      | +->       | +-->       |      +-->       | +-->       |     |'
	@echo '      | | +---+---+ |  +---+---+      |  +---+---+ |  +---+---+     |'
	@echo '      | |   C[0]    |    C[1]         |    C[6]    |    C[7]        |'
	@echo 'Clk-----+-----------+----------- ... -+------------+                |'
	@echo '      +-------------------------------------------------------------+'
	@echo '           * V_fir_pe[]: Verilated fir_pe'
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
	@echo '    make plot'
	@echo '        Plot time-freq analysis'
	@echo ''
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[MACC | SHIFT | ARRAY] make build'
	@echo

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc -Wall --trace --top-module $(TOP_MODULE) --exe --build \
		$(CFLAGS) \
		$(LDFLAGS) \
		$(VERILOG_DEFS) \
		$(VERILOG_SRCS) $(SC_SRCS)

lint : $(VERILOG_SRCS)
	$(VERILATOR) --sc -Wall \
	$(VERILOG_DEFS) \
	--top-module $(TOP_MODULE) $(VERILOG_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

wave_tb : sc_$(TOP_MODULE)_tb.vcd
	gtkwave sc_$(TOP_MODULE)_tb.vcd --save=sc_$(TOP_MODULE)_tb.gtkw &

wave : sc_$(TOP_MODULE).vcd
	gtkwave sc_$(TOP_MODULE).vcd --save=sc_$(TOP_MODULE).gtkw &
	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &

plot : sc_$(TOP_MODULE)_tb_out.txt
	python3 ../sc_timed/sc_plotDFT.py

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd
	rm -f sc_$(TOP_MODULE)_tb_out.txt

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)







