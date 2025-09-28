# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

DUT_MODULE = $(TOP_MODULE)

# Build Rules --------------------------------------------------
all :
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -n "$(HW_STYLE)" ];  then \
		echo "****************************"; \
		echo "!!! HW_STYLE not defined !!!"; \
		echo "****************************"; \
		exit 1; \
	fi
	@echo
	@echo 'Netlist timing simulation using iVerilog-VPI:$(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) HW_STYLE=$(HW_STYLE) make build'
	@echo '    TOP_MODULE=$(TOP_MODULE) make run'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make wave'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
# Build VPI -----------------------------------------------------
VPI_TARGET 	= vpi_stub.vpi
VPI_SRCS 	= \
    ../../c_untimed/cnoise.cpp \
    ../../c_untimed/$(DUT_MODULE).cpp \
    ./vpi_stub.cpp \
    ./vpi_$(DUT_MODULE)_tb.cpp \
    ./sc_$(DUT_MODULE)_TB.cpp
VPI_HDRS 	= \
	./sc_$(DUT_MODULE)_TB.h  \
	./vpi_$(DUT_MODULE)_tb_exports.h  \
	./vpi_$(DUT_MODULE)_tb_ports.h
VPI_INC_PATH = \
    -I/usr/local/share/verilator/include \
    -I/usr/local/share/verilator/include/vltstd \
    -I/usr/local/include/iverilog \
    -I${SYSTEMC_INCLUDE} \
    -I../../c_untimed \
    -I..
VPI_LIB_PATH = \
    -L${SYSTEMC_LIBDIR}
VPI_CFLAGS = \
	-D$(HW_STYLE) \
    -g -fPIC
VPI_LFLAGS = \
	-shared \
	-latomic \
    -lsystemc \
	-lgsl

$(VPI_TARGET) : $(VPI_SRCS) $(VPI_HDRS)
	$(CXX) $(CXXFLAGS) -DVPI_SIM \
			$(VPI_INC_PATH) $(VPI_LIB_PATH) \
			$(VPI_CFLAGS) \
			$(VPI_SRCS) \
    		-o $(VPI_TARGET) \
			 $(VPI_LFLAGS)

# iVerilog ---------------------------------------------------------------
IVL_TARGET = $(DUT_MODULE)_TB
IVL_SRCS   = $(IVL_TARGET).v \
			~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells.v \
			../synthesis/$(DUT_MODULE)_mapped.v

#			~/ETRI050_DesignKit/digital_ETRI/khu_etri05_stdcells.v \

$(IVL_TARGET) : $(IVL_SRCS) $(VPI_TARGET) $(VLT_TARGET)
	iverilog -g2005-sv -Tmin -gspecify -o $(IVL_TARGET) $(IVL_SRCS)

# Cleaning ----------------------------------------------------------------
clean :
	rm -rf $(VLT_DIR)
	rm -f vpi_stub.vpi
	rm -f sc_$(DUT_MODULE)_TB.txt
	rm -f *.vcd
	rm -f $(VPI_TARGET)
	rm -f $(IVL_TARGET)

# Build --------------------------------------------------------
build : $(IVL_TARGET)

run : $(IVL_TARGET) $(VPI_TARGET)
	vvp -M. -mvpi_stub ${IVL_TARGET} -v

wave :
	gtkwave $(DUT_MODULE)_TB.vcd --save=$(DUT_MODULE)_TB.gtkw &
	gtkwave sc_$(DUT_MODULE)_TB.vcd --save=sc_$(DUT_MODULE)_TB.gtkw &

