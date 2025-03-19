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
	./untimed/fxp_sqrt_top.cpp \
	./sc_main.cpp \
	./sc_fxp_sqrt_top_TB.cpp
SC_HDRS = \
	./untimed/fxp_sqrt.h \
	./untimed/fxp_sqrt_top.h \
	./sc_fxp_sqrt_top_TB.h

# Verilator vars -----------------------------------------------
lint: VERILOG_SRCS =  \
	../source/fxp_sqrt_top.v \
	../source/fxp_sqrt_top_flow_control_loop_pipe_sequential_init.v \
	../source/fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1.v
build: VERILOG_SRCS =  \
	../source/fxp_sqrt_top.v \
	../source/fxp_sqrt_top_flow_control_loop_pipe_sequential_init.v \
	../source/fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1.v
build_net: VERILOG_SRCS = \
	../source/fxp_sqrt_top.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v

VERILATOR    = verilator
ARGS         =--sc -Wall --pins-sc-uint --trace --timing
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I../../../2-5_Lab3_FIR8/c_untimed
VCFLAGS		+= -CFLAGS -DVCD_TRACE_TEST_TB
VCFLAGS		+= -CFLAGS -DVCD_TRACE_DUT_VERILOG
VCFLAGS		+= -CFLAGS -DSC_INCLUDE_FX
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl
#VCFLAGS		+= -CFLAGS -fPIC
#VCFLAGS		+= -LDFLAGS -shared

# iVerilog Timing Sim. vars ---------------------------------------
build_tim: VERILOG_SRCS = \
	./test_TB.v \
	../synthesis/fxp_sqrt_top.v \
	~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells.v

# Targets ------------------------------------------------------
TOP_MODULE   = fxp_sqrt_top
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for Co-Simulation of "Vitis-HLS example, fixed_point_sqrt"'
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
	$(VERILATOR) $(ARGS) --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
		$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

build_tim : $(TOP_MODULE)

$(TOP_MODULE) : $(VERILOG_SRCS)
	iverilog -g2005-sv -Tmin -gspecify -o $(TOP_MODULE) $(VERILOG_SRCS)

lint : ../source/$(TOP_MODULE).v
	$(VERILATOR) --sc  --timing -Wall -CFLAGS -fPIC --top-module $(TOP_MODULE) $(VERILOG_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

run_tim : $(TOP_MODULE)
	./$(TOP_MODULE)

wave : Vfxp_sqrt_top.vcd
	gtkwave sc_fxp_sqrt_top_tb.vcd --save=sc_fxp_sqrt_top_tb.gtkw &
	gtkwave Vfxp_sqrt_top.vcd --save=Vfxp_sqrt_top.gtkw &

wave_tim : fxp_sqrt_top_TB.vcd
	gtkwave fxp_sqrt_top_TB.vcd --save=fxp_sqrt_top_TB.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd
	rm -f $(TOP_MODULE)

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


