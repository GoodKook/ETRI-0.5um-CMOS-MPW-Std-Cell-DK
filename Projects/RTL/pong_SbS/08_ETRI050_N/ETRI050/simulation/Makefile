# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

DUT_MODULE = pong_SbS
TOP_MODULE = $(DUT_MODULE)

# Build Rules --------------------------------------------------
all :
	@clear
	@if [ ! -e "./sc_$(TOP_MODULE)_TB.cpp" ]; then \
		echo "Symbolic link './sc_$(TOP_MODULE)_TB.cpp' ..."; \
		ln -s ../../simulation/sc_$(TOP_MODULE)_TB.cpp ./sc_$(TOP_MODULE)_TB.cpp; \
	fi
	@if [ ! -e "./sc_glcd128x64_TLM.cpp" ]; then \
		echo "Symbolic link './sc_glcd128x64_TLM.cpp' ..."; \
		ln -s ../../simulation/sc_glcd128x64_TLM.cpp ./sc_glcd128x64_TLM.cpp; \
	fi
	@if [ ! -e "./sc_glcd128x64_TLM.h" ]; then \
		echo "Symbolic link './sc_glcd128x64_TLM.h' ..."; \
		ln -s ../../simulation/sc_glcd128x64_TLM.h ./sc_glcd128x64_TLM.h; \
	fi
	@echo
	@echo 'Netlist timing simulation using iVerilog-VPI:$(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make build'
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
	./sc_glcd128x64_TLM.cpp \
    ./vpi_$(DUT_MODULE)_tb.cpp \
    ./sc_$(DUT_MODULE)_TB.cpp
VPI_HDRS 	= \
	./sc_glcd128x64_TLM.h \
	./sc_$(DUT_MODULE)_TB.h  \
	./vpi_$(DUT_MODULE)_tb_exports.h  \
	./vpi_$(DUT_MODULE)_tb_ports.h
VPI_INC_PATH = \
    -I/usr/local/share/verilator/include \
    -I/usr/local/share/verilator/include/vltstd \
    -I/usr/local/include/iverilog \
    -I${SYSTEMC_INCLUDE} \
    -I..
VPI_LIB_PATH = \
    -L${SYSTEMC_LIBDIR}
VPI_CFLAGS = \
    -g -fPIC
VPI_LFLAGS = \
	-shared \
	-latomic \
    -lsystemc \
	-lgsl \
	-lSDL2

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

$(IVL_TARGET) : $(IVL_SRCS) $(VPI_TARGET) $(VLT_TARGET)
	iverilog -g2005-sv -Tmin -gspecify -o $(IVL_TARGET) $(IVL_SRCS)

# Cleaning ----------------------------------------------------------------
clean :
	rm -rf $(VLT_DIR)
	rm -f vpi_stub.vpi
	rm -f sc_$(DUT_MODULE)_TB.txt
	rm -f sc_$(DUT_MODULE)_TB.cpp
	rm -f *.vcd
	rm -f $(VPI_TARGET)
	rm -f $(IVL_TARGET)
	rm -f sc_glcd128x64_TLM.cpp
	rm -f sc_glcd128x64_TLM.h

# Build --------------------------------------------------------
build : $(IVL_TARGET)

run : $(IVL_TARGET) $(VPI_TARGET)
	vvp -M. -mvpi_stub ${IVL_TARGET} -v

wave :
	gtkwave $(DUT_MODULE)_TB.vcd --save=$(DUT_MODULE)_TB.gtkw &
	gtkwave sc_$(DUT_MODULE)_TB.vcd --save=sc_$(DUT_MODULE)_TB.gtkw &

