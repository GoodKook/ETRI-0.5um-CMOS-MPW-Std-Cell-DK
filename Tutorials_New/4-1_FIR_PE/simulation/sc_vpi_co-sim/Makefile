# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

# Build Rules --------------------------------------------------
all :
	@echo ''
	@echo 'Makefile for Co-Simulation of Verilated+SystemC VPI+iVerilog'
	@echo '+-----------------------------------------------------------+'
	@echo '|  sc_fir8_tb                                               |'
	@echo '|      +-----------------------------------------------+    |     test_fir8.v'
	@echo '|      | sc_fir8                                       |    |     +-----------------+'
	@echo '|      |   V_fir_pe[0]  V_fir_pe[1]       V_fir_pe[6]  |    |     |     fir_pe.v    |'
	@echo '|      |   +-------+    +-------+         +-------+    |    |     |     +-------+   |'
	@echo '|      |   |       |    |       |         |       |    |    |   +---+   |       |   |'
	@echo '|Xin--[4]-->       ----->       --->...--->       --------------| V |--->      [4]----->Xout'
	@echo '|      |   |       |    |       |         |       |    |    |   | P |   |       |   |'
	@echo '|Yin--[4]-->       ----->       --->...--->       --------------| I |--->       [4]---->Yout'
	@echo '|      |   |       |    |       |         |       |    |    |   |   |   |       |   |'
	@echo '|      | +->       | +-->       |      +-->       | +-----------|   |--->       |   |'
	@echo '|      | | +---+---+ |  +---+---+      |  +---+---+ |  |    |   |   |   +---+---+   |'
	@echo '|      | |   C[0]    |    C[1]         |    C[6]    |  |    |   |   |     C[7]      |'
	@echo '|Clk-----+-----------+----------- ... -+------------+  |    |   |   |               |'
	@echo '|      +-----------------------------------------------+    |   |   |               |'
	@echo '|                                                         +-----------sync_sc       |'
	@echo '|              SystemC Simulattor<------------------------+ |   +---+               |'
	@echo '+-----------------------------------------------------------+     |       iVerilog  |'
	@echo '                                                                  +-----------------+'
	@echo '                  - V_fir_pe[]: Verilated fir_pe in sc_fir8 (array)'
	@echo '                  - Verilog Simulator instructs advancing sim-time by triggering'
	@echo ''
	@echo 'Usage:'
	@echo '        make build'
	@echo '        make build_tim'
	@echo ''
	@echo '        make run'
	@echo ''
	@echo '        make wave'
	@echo ''
	@echo '        make clean'
	@echo ''

# Verilate ----------------------------------------------------
VLT_TOP_MODULE = fir_pe
VLT_SRCS       = ../../source/$(VLT_TOP_MODULE).v
VLT_DIR        = ./obj_dir
VLT_TARGET     = $(VLT_DIR)/V$(VLT_TOP_MODULE)__ALL.a

verilate : $(VLT_TARGET)

$(VLT_TARGET) : $(VLT_DIR)/V$(VLT_TOP_MODULE).h
	cd $(VLT_DIR);make -f V$(VLT_TOP_MODULE).mk;cd ..

$(VLT_DIR)/V$(VLT_TOP_MODULE).h: $(VLT_SRCS)
	verilator --sc -Wall -CFLAGS -fPIC -CFLAGS -DFIR_SHIFTER_VERSION \
				--top-module $(VLT_TOP_MODULE) $(VLT_SRCS)

# Build VPI -----------------------------------------------------
VPI_TARGET 	= vpi_stub.vpi
VPI_SRCS 	= \
    ../../../3-1_FIR8/c_untimed/fir8.cpp \
    ../../../3-1_FIR8/c_untimed/cnoise.cpp \
    vpi_stub.cpp \
    vpi_fir8_tb.cpp \
    sc_fir8_tb.cpp \
	$(VLT_DIR)/V$(VLT_TOP_MODULE)__ALL.a
VPI_HDRS 	= \
	./sc_fir8.h  \
	./sc_fir8_tb.h  \
	./vpi_fir8_tb_exports.h  \
	./vpi_fir8_tb_ports.h
VPI_INC_PATH = \
    -I/usr/local/share/verilator/include \
    -I/usr/local/share/verilator/include/vltstd \
    -I/usr/local/include/iverilog \
    -I$(VLT_DIR) \
    -I${SYSTEMC_INCLUDE} \
    -I../../../3-1_FIR8/c_untimed \
    -I..
VPI_LIB_PATH = \
    -L${SYSTEMC_LIBDIR} \
    -L$(VLT_DIR)
VPI_CFLAGS = \
    -fPIC -DFIR_SHIFTER_VERSION
VPI_LFLAGS = \
	-shared \
	-latomic \
    -lsystemc \
	-lgsl \
	-lverilated \
	-lV$(VLT_TOP_MODULE)

$(VPI_TARGET) : $(VPI_SRCS) $(VPI_HDRS)
	$(CXX) $(CXXFLAGS) \
			$(VPI_INC_PATH) $(VPI_LIB_PATH) \
			$(VPI_CFLAGS) \
			$(VPI_SRCS) \
    		-o $(VPI_TARGET) \
			 $(VPI_LFLAGS)

# iVerilog ---------------------------------------------------------------
IVL_TARGET = test_fir8
build: IVL_SRCS   = $(IVL_TARGET).v \
			 ../../source/fir_pe.v
build_tim: IVL_SRCS   = $(IVL_TARGET).v \
			~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells.v \
			../../synthesis/fir_pe.v

$(IVL_TARGET) : $(IVL_SRCS) $(VPI_TARGET) $(VLT_TARGET)
	iverilog -g2005-sv -Tmin -gspecify -o $(IVL_TARGET) $(IVL_SRCS)

# Cleaning ----------------------------------------------------------------
clean :
	rm -rf $(VLT_DIR)
	rm -f vpi_stub.vpi
	rm -f sc_fir8_tb_out.txt
	rm -f *.vcd
	rm -f $(VPI_TARGET)
	rm -f $(IVL_TARGET)

# Build --------------------------------------------------------
build : $(IVL_TARGET)

build_tim : $(IVL_TARGET)

run : $(IVL_TARGET) $(VPI_TARGET)
	vvp -M. -mvpi_stub ${IVL_TARGET} -v

wave :
	gtkwave test_fir8.vcd --save=test_fir8.gtkw &
	gtkwave sc_fir8_tb.vcd --save=sc_fir8_tb.gtkw &
	gtkwave sc_fir8.vcd --save=sc_fir8.gtkw &

