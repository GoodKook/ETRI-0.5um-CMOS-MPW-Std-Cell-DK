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
	@if [ ! -f "sc_$(TOP_MODULE)_TB.cpp" ];  then \
		echo "Symbolic Link Testbench Re-Use..."; \
		ln -s ../../simulation/sc_$(TOP_MODULE)_TB.cpp sc_$(TOP_MODULE)_TB.cpp; \
	fi
	@if [ ! -f "sc_mem.cpp" ];  then \
		echo "Symbolic Link Memory & IO Re-Use..."; \
		ln -s ../../simulation/sc_mem.cpp sc_mem.cpp; \
		ln -s ../../simulation/sc_mem.h sc_mem.h; \
	fi
	@if [ ! -e "Apple-1" ];  then \
		echo "Symbolic Link Firmware & SDK..."; \
		ln -s ../../simulation/Apple-1 Apple-1; \
	fi
	@echo
	@echo 'Netlist timing simulation using iVerilog-VPI:$(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) VCD_TRACE=YES|[NO] make build'
	@echo '    TOP_MODULE=$(TOP_MODULE) make run'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make wave'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
# Build VPI -----------------------------------------------------
VPI_TARGET 	= vpi_stub.vpi
VPI_SRCS 	= \
    ./vpi_stub.cpp \
    ./vpi_$(DUT_MODULE)_tb.cpp \
    ./sc_mem.cpp \
    ./sc_$(DUT_MODULE)_TB.cpp
VPI_HDRS 	= \
    ./sc_mem.h \
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
	-DIPC_SOCKET \
    -g -fPIC
ifeq ($(VCD_TRACE), YES)
VPI_CFLAGS += -DVCD_TRACE
endif

VPI_LFLAGS = \
	-shared \
	-latomic \
    -lsystemc

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

ifeq ($(VCD_TRACE), YES)
IVL_DEFINE = -DVCD_TRACE
endif

$(IVL_TARGET) : $(IVL_SRCS) $(VPI_TARGET) $(VLT_TARGET)
	iverilog -g2005-sv -Tmin -gspecify -o $(IVL_TARGET) $(IVL_DEFINE) $(IVL_SRCS)

# Cleaning ----------------------------------------------------------------
clean :
	rm -f sc_$(DUT_MODULE)_TB.txt
	rm -f $(DUT_MODULE)_TB.vcd
	rm -f sc_$(DUT_MODULE)_TB.vcd
	rm -f $(VPI_TARGET)
	rm -f $(IVL_TARGET)

# Build --------------------------------------------------------
build : $(IVL_TARGET)

run : $(IVL_TARGET) $(VPI_TARGET)
	xterm -geometry 84x24+10+10 -e "../../simulation/CPU_terminal" &
	sleep 1
	vvp -M. -mvpi_stub ${IVL_TARGET} -v

wave :
	gtkwave $(DUT_MODULE)_TB.vcd --save=$(DUT_MODULE)_TB.gtkw &
	gtkwave sc_$(DUT_MODULE)_TB.vcd --save=sc_$(DUT_MODULE)_TB.gtkw &

