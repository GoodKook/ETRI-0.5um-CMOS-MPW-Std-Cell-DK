# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

# SystemC testbench Reuse --------------------------------------
SC_SRCS =  \
	../Vitis-HLS/test.cpp \
	./sc_main.cpp \
	./sc_test_TB.cpp
SC_HDRS = \
	../Vitis-HLS/test.h \
	./sc_test_TB.h

# Verilator vars -----------------------------------------------
VITIS_SYN_PATH = \
	../Vitis-HLS/hls_component/test/hls/syn/verilog

lint: VERILOG_SRCS =  \
	$(VITIS_SYN_PATH)/test.v \
	$(VITIS_SYN_PATH)/test_flow_control_loop_delay_pipe.v
build: VERILOG_SRCS =  \
	$(VITIS_SYN_PATH)/test.v \
	$(VITIS_SYN_PATH)/test_flow_control_loop_delay_pipe.v
run: VERILOG_SRCS =  \
	$(VITIS_SYN_PATH)/test.v \
	$(VITIS_SYN_PATH)/test_flow_control_loop_delay_pipe.v
build_net: VERILOG_SRCS = \
	../synthesis/test.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v

VERILATOR    = verilator
VL_WARNING   = -Wno-WIDTHTRUNC -Wno-WIDTHEXPAND
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I../../Vitis-HLS
VCFLAGS		+= -CFLAGS -DVCD_TRACE_TEST_TB
VCFLAGS		+= -CFLAGS -DVCD_TRACE_DUT_VERILOG
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl
#VCFLAGS		+= -CFLAGS -fPIC
#VCFLAGS		+= -LDFLAGS -shared

# iVerilog Timing Sim. vars ---------------------------------------
build_tim: VERILOG_SRCS = \
	./test_TB.v \
	../synthesis/test.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells.v

# Targets ------------------------------------------------------
TOP_MODULE   = test
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for Co-Simulation of "test, Vitis-HLS example, loop un-rolling "'
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
	$(VERILATOR) --sc $(VL_WARNING) --trace --timing --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

build_tim : $(TOP_MODULE)

$(TOP_MODULE) : $(VERILOG_SRCS)
	iverilog -g2005-sv -Tmin -gspecify -o $(TOP_MODULE) $(VERILOG_SRCS)

lint : ../source/$(TOP_MODULE).v
	$(VERILATOR) --sc  --timing $(VL_WARNING) -CFLAGS -fPIC --top-module $(TOP_MODULE) $(VERILOG_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

run_tim : $(TOP_MODULE)
	./$(TOP_MODULE)

wave : Vtest.vcd
	gtkwave Vtest.vcd --save=Vtest.gtkw &

wave_tim : fir_pe_TB.vcd
	gtkwave fir_pe_TB.vcd --save=fir_pe_TB.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd
	rm -f $(TOP_MODULE)

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


