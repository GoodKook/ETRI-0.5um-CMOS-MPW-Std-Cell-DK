# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Usage:'
	@echo '        make build'
	@echo '        make run'
	@echo
	@echo '        make wave'
	@echo
	@echo '        make clean'
	@echo

# Build VPI -----------------------------------------------------
VPI_TARGET 	= vpi_stub.vpi
VPI_SRCS 	= \
    ../../../3-1_FIR8/c_untimed/fir8.cpp \
    ../../../3-1_FIR8/c_untimed/cnoise.cpp \
    vpi_stub.cpp \
    vpi_fir_tb.cpp \
    sc_fir_TB.cpp
VPI_HDRS 	= \
	./sc_fir_TB.h  \
	./vpi_fir_tb_exports.h  \
	./vpi_fir_tb_ports.h
VPI_INC_PATH = \
    -I/usr/local/share/verilator/include \
    -I/usr/local/share/verilator/include/vltstd \
    -I/usr/local/include/iverilog \
    -I${SYSTEMC_INCLUDE} \
    -I../../../3-1_FIR8/c_untimed \
    -I..
VPI_LIB_PATH = \
    -L${SYSTEMC_LIBDIR}
VPI_CFLAGS = \
    -fPIC -DFIR_SHIFTER_VERSION
VPI_LFLAGS = \
	-shared \
	-latomic \
    -lsystemc \
	-lgsl

$(VPI_TARGET) : $(VPI_SRCS) $(VPI_HDRS)
	$(CXX) $(CXXFLAGS) \
			$(VPI_INC_PATH) $(VPI_LIB_PATH) \
			$(VPI_CFLAGS) \
			$(VPI_SRCS) \
    		-o $(VPI_TARGET) \
			 $(VPI_LFLAGS)

# iVerilog ---------------------------------------------------------------
IVL_TARGET = fir_TB
IVL_SRCS   = $(IVL_TARGET).v \
			~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells_func.v \
			../synthesis/fir.v

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

run : $(IVL_TARGET) $(VPI_TARGET)
	vvp -M. -mvpi_stub ${IVL_TARGET} -v

wave :
	gtkwave test_fir.vcd --save=test_fir.gtkw &
	gtkwave sc_fir_TB.vcd --save=sc_fir_TB.gtkw &

