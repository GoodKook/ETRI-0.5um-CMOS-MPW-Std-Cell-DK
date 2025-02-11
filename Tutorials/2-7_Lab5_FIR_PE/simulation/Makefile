# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17
#export CXXFLAGS			= -std=c++2a

# SystemC testbench Reuse --------------------------------------
SC_SRCS      =  ./sc_main.cpp \
				./sc_fir8_tb.cpp \
				../../2-5_Lab3_FIR8/c_untimed/fir8.cpp \
				../../2-5_Lab3_FIR8/c_untimed/cnoise.cpp
SC_HDRS      =  ./sc_fir8.h \
				./sc_fir8_tb.h \
				./V_fir_pe.h

# Verilator vars -----------------------------------------------
build: VERILOG_SRCS =  ../source/fir_pe.v
build_net: VERILOG_SRCS =  ../synthesis/fir_pe.v \
					~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v
VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
#VCFLAGS    	 = -CFLAGS -std=c++2a
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I../../../2-5_Lab3_FIR8/c_untimed
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8_TB
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl
#VCFLAGS		+= -CFLAGS -fPIC
#VCFLAGS		+= -LDFLAGS -shared

# iVerilog Timing Sim. vars ---------------------------------------
build_tim: VERILOG_SRCS = fir_pe_TB.v \
					../synthesis/fir_pe.v \
					~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells.v

# Targets ------------------------------------------------------
TOP_MODULE   = fir_pe
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for Co-Simulation of "FIR_PE, 4-bit IO for MPW pad limit"'
	@echo ' '
	@echo '      +-----------------------------------------------------------+'
	@echo '      | sc_fir8                                                   |'
	@echo '      |   V_fir_pe[0]  V_fir_pe[1]       V_fir_pe[6]  V_fir_pe[7] |'
	@echo '      |   +-------+    +-------+         +-------+    +-------+   |'
	@echo '      |   |       |    |       |         |       |    |       |   |'
	@echo 'Xin--[4]-->       ----->       --->...--->       ----->       ----[4]->Xout'
	@echo '      |   |       |    |       |         |       |    |       |   |'
	@echo 'Yin--[4]-->       ----->       --->...--->       ----->       ----[4]->Yout'
	@echo '      |   |       |    |       |         |       |    |       |   |'
	@echo '      | +->       | +-->       |      +-->       | +-->       |   |'
	@echo '      | | +---+---+ |  +---+---+      |  +---+---+ |  +---+---+   |'
	@echo '      | |   C[0]    |    C[1]         |    C[6]    |    C[7]      |'
	@echo 'Clk-----+-----------+----------- ... -+------------+              |'
	@echo '      +-----------------------------------------------------------+'
	@echo '        V_fir_pe[]: Instantiate Verilated fir_pe in sc_fir8 (array)'
	@echo ''
	@echo 'Usage:'
	@echo '    Linting Verilog,'
	@echo '        make lint'
	@echo ''
	@echo '    Building functional-sim with SystemC TB,'
	@echo '        make build'
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

build_net : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --trace --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

build_tim : $(TOP_MODULE)

$(TOP_MODULE) : $(VERILOG_SRCS)
	iverilog -g2005-sv -Tmin -gspecify -o $(TOP_MODULE) $(VERILOG_SRCS)

lint : ../source/$(TOP_MODULE).v
	$(VERILATOR) --sc -Wall -CFLAGS -fPIC --top-module $(TOP_MODULE) ../source/$(TOP_MODULE).v

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)
	../../2-5_Lab3_FIR8/sc_timed/sc_plotDFT.py &
	gtkwave sc_fir8.vcd --save=sc_fir8.gtkw &

run_tim : $(TOP_MODULE)
	./$(TOP_MODULE)

wave : Vfir_pe.vcd
	gtkwave Vfir_pe.vcd --save=Vfir_pe.gtkw &

wave_tim : fir_pe_TB.vcd
	gtkwave fir_pe_TB.vcd --save=fir_pe_TB.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f sc_fir8_tb_out.txt
	rm -f *.vcd
	rm -f $(TOP_MODULE)

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


