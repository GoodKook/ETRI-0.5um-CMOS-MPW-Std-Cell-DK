# SystemC Environments -----------------------------------------
export SYSTEMC         = /opt/systemc
export SYSTEMC_HOME    = $(SYSTEMC)
export SYSTEMC_INCLUDE = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR  = $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

# SystemC testbench Reuse --------------------------------------
SC_SRCS = \
    ../simulation/sc_main.cpp \
    ../simulation/sc_fir8_tb.cpp \
    ../../2-5_FIR8/c_untimed/fir8.cpp \
    ../../2-5_FIR8/c_untimed/cnoise.cpp
SC_HDRS = \
    ../simulation/sc_fir8.h \
    ../simulation/sc_fir8_tb.h \
    ../simulation/V_fir_pe.h \
    ./E_fir_pe.h

# Verilator vars -----------------------------------------------
VERILOG_SRCS =  ../source/fir_pe.v
VERILATOR    = verilator
VCFLAGS		 = -CFLAGS -g
VCFLAGS		+= -CFLAGS -I./obj_dir
VCFLAGS		+= -CFLAGS -I../simulation
VCFLAGS		+= -CFLAGS -DFIR_SHIFTER_VERSION
VCFLAGS		+= -CFLAGS -I../../../2-5_FIR8/c_untimed
VCFLAGS		+= -CFLAGS -I..
VCFLAGS		+= -CFLAGS -DEMULATED_CO_SIM
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8_TB
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl

# Targets ------------------------------------------------------
TOP_MODULE   = fir_pe
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo 'Makefile for Emulation Example: $(TOP_MODULE)'
	@echo ''
	@echo 'SystemC Testbench(Re-Used)'
	@echo '+-----------------------------------------------------------+'
	@echo '|  sc_fir8_tb                                               |'
	@echo '|      +-----------------------------------------------+    |'
	@echo '|      | sc_fir8                                       |    |     +-----------------+'
	@echo '|      |   V_fir_pe[0]  V_fir_pe[1]       V_fir_pe[6]  |    |     |     E_fir_pe    |'
	@echo '|      |   +-------+    +-------+         +-------+    |    |     |     +-------+   |'
	@echo '|      |   |       |    |       |         |       |    |    |   +---+   |       |   |'
	@echo '|Xin--[4]-->       ----->       --->...--->       --------------| P |--->      [4]----->Xout'
	@echo '|      |   |       |    |       |         |       |    |    |   | S |   |       |   |'
	@echo '|Yin--[4]-->       ----->       --->...--->       --------------| C |--->      [4]----->Yout'
	@echo '|      |   |       |    |       |         |       |    |    |   | E |   |       |   |'
	@echo '|      | +->       | +-->       |      +-->       | +-----------| - |--->       |   |'
	@echo '|      | | +---+---+ |  +---+---+      |  +---+---+ |  |    |   | M |   +---+---+   |'
	@echo '|      | |   C[0]    |    C[1]         |    C[6]    |  |    |   | I |     C[7]      |'
	@echo '|Clk-----+-----------+----------- ... -+------------+  |    |   |   |               |'
	@echo '|      +-----------------------------------------------+    |   +---+               |'
	@echo '|                                                           |     |Arduino DUE      |'
	@echo '|              SystemC Simulattor                           |     |             FPGA|'
	@echo '+-----------------------------------------------------------+     +-----------------+'
	@echo '           - V_fir_pe[]: Verilated fir_pe in sc_fir8 (array)'
	@echo ''
	@echo '    make build'
	@echo '        Builds executable of $(TOP_MODULE) with SystemC TB,'
	@echo '           Co-Simulation with Verilated DUT'
	@echo '           Co-Emulation with DUT-on-FPGA'
	@echo ''
	@echo '    make run'
	@echo '        Emulate $(TOP_MODULE)'
	@echo ''
	@echo '    make wave'
	@echo '        View waveform'
	@echo ''
	@echo '    make plot'
	@echo '        Plot time-freq analysis'
	@echo ''
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo ''

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --trace --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

wave :
	gtkwave sc_fir8.vcd --save=sc_fir8.gtkw &
	gtkwave sc_fir8_tb.vcd --save=sc_fir8_tb.gtkw &
	gtkwave Vfir_pe.vcd --save=Vfir_pe.gtkw &
	gtkwave E_fir_pe.vcd --save=E_fir_pe.gtkw &

plot :
	python3 ../../2-5_FIR8/sc_timed/sc_plotDFT.py &

clean :
	rm -rf $(TARGET_DIR)
	rm -f sc_fir8_tb_out.txt
	rm -f *.vcd

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


