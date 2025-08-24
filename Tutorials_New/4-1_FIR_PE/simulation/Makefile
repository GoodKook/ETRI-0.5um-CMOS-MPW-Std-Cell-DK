# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

# SystemC testbench Reuse --------------------------------------
SC_SRCS      =  ./sc_main.cpp \
				./sc_fir8_tb.cpp \
				../../3-1_FIR8/c_untimed/fir8.cpp \
				../../3-1_FIR8/c_untimed/cnoise.cpp
SC_HDRS      =  ./sc_fir8.h \
				./sc_fir8_tb.h \
				./V_fir_pe.h

# Verilator vars -----------------------------------------------
build: VERILOG_SRCS =  ../source/fir_pe.v
build_net: VERILOG_SRCS =  ../synthesis/fir_pe.v \
					~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v
VERILATOR    = verilator
VCFLAGS		= -CFLAGS -g
VCFLAGS		+= -CFLAGS -DFIR_SHIFTER_VERSION
VCFLAGS		+= -CFLAGS -I../../../3-1_FIR8/c_untimed
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
	@echo
	@echo '  SystemC Testbench'
	@echo '         +-sc_fir8-------------------------------------------------------------------------------------------------+'
	@echo '         |                                                                                                         |'
	@echo '         |   V_fir_pe[0]         V_fir_pe[1]           V_fir_pe[i]              V_fir_pe[6]          V_fir_pe[7]   |'
	@echo '         |   +----------+        +----------+           +----------+            +-----------+        +----------+  |'
	@echo '         |   |          |        |          |           |          |            |           |        |          |  |'
	@echo '  Xin-(4)---->Xin   Xout--X[0]--->Xin   Xout--X[1]-....->Xin   Xout--X[i]---...->Xin    Xout--X[6]--->Xin   Xout----(4)-->Xout'
	@echo '         |   |          |        |          |           |          |            |           |        |          |  |'
	@echo '  Yin-(4)---->Yin   Yout--Y[0]--->Yin   Yout--Y[1]-....->Yin   Yout--Y[i]---...->Yin    Yout--Y[6]--->Yin   Yout----(4)-->Yout'
	@echo '         |   |          |        |          |           |          |            |           |        |          |  |'
	@echo '  Rdy-------->Rdy    Vld--Vld[0]->Rdy    Vld--Vld[1]...->Rdy    Vld--Vld[i]-...->Rdy     Vld--Vld[6]->Rdy    Vld--------->Vld'
	@echo '         |   |          |        |          |           |          |            |           |        |          |  |'
	@echo '         | +->Clk       |   +---->Clk       |       +--->Clk       |        +--->Clk        |    +--->Clk       |  |'
	@echo '         | | +-----(6)--+   |    +-----(6)--+       |   +-----(6)--+        |   +-----(6)---+    |   +-----(6)--+  |'
	@echo '         | |        |       |           |           |          |            |          |         |          |      |'
	@echo '         | |      C[0]      |         C[1]          |        C[i]           |        C[6]        |        C[7]     |'
	@echo '  Clk------+----------------+---------------------...+----------- .......---+--------------------+                 |'
	@echo '         |                                                                                                         |'
	@echo '         +---------------------------------------------------------------------------------------------------------+'
	@echo '         * V_fir_pe[i]: Verilated fir_pe in sc_fir8 (array)'
	@echo
	@echo 'Usage:'
	@echo '    make lint        ; Linting Verilog'
	@echo '    make build       ; Building functional-sim with SystemC TB,'
	@echo '    make build_net   ; Building netlist-sim with SystemC TB,'
	@echo '    make run         ; Running Functional simulation,'
	@echo '    make wave        ; View DUT Verilog trace(Functional),'
	@echo
	@echo '    make build_tim   ; Building Timing-sim with SystemVerilog TB,'
	@echo '    make run_tim     ; Running Timing simulation,'
	@echo '    make wave_tim    ; View DUT Verilog trace(Timing),'
	@echo
	@echo '    make clean       ; Clean up working folder,'
	@echo

build : $(TARGET_DIR)/$(TARGET)

build_net : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall -Wno-UNUSEDSIGNAL --trace --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

build_tim : $(TOP_MODULE)

$(TOP_MODULE) : $(VERILOG_SRCS)
	iverilog -g2005-sv -Tmin -gspecify -o $(TOP_MODULE) $(VERILOG_SRCS)

lint : ../source/$(TOP_MODULE).v
	$(VERILATOR) --sc -Wall -CFLAGS -fPIC --top-module $(TOP_MODULE) ../source/$(TOP_MODULE).v

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)
	python3 ../../3-1_FIR8/sc_timed/sc_plotDFT.py &
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


