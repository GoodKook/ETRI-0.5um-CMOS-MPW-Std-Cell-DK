# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

#---------------------------------------------------------------
#TOP_MODULE =

# SystemC testbench Reuse --------------------------------------
SC_SRCS =  \
	../c_untimed/$(TOP_MODULE).cpp \
	./sc_main.cpp \
	./sc_$(TOP_MODULE)_TB.cpp
SC_HDRS = \
	./sc_$(TOP_MODULE)_TB.h

# Verilator vars -----------------------------------------------
VITIS_SYN_PATH = \
	../$(TOP_MODULE)/hls_component/syn/verilog

lint: VERILOG_SRCS =  \
	$(VITIS_SYN_PATH)/*.v

build: VERILOG_SRCS =  \
	$(VITIS_SYN_PATH)/*.v

run: VERILOG_SRCS =  \
	$(VITIS_SYN_PATH)/*.v

#-------------------------------------------------------------------------------
#ifeq ($(HW_STYLE), )
#	HW_STYLE=BIT_ACCURATE_SC
#endif

VERILATOR    = verilator
VL_WARNING   = -Wno-WIDTHTRUNC -Wno-WIDTHEXPAND
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I../../c_untimed
VCFLAGS		+= -CFLAGS -I$(SYSTEMC_INCLUDE)
ifeq ($(VCD_TRACE),)
VCFLAGS		+= -CFLAGS -DVCD_TRACE_TEST_TB
VCFLAGS		+= -CFLAGS -DVCD_TRACE_DUT_VERILOG
endif
VCFLAGS		+= -CFLAGS -D$(HW_STYLE)_SC
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl
#VCFLAGS		+= -CFLAGS -fPIC
#VCFLAGS		+= -LDFLAGS -shared

# Targets ------------------------------------------------------
#TOP_MODULE   = $(TOP_MODULE)
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
all :
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ -f ./sc_TOP_MODULE_TB.cpp ];  then \
		sed -i "s/TOP_MODULE/${TOP_MODULE}/g" ./sc_TOP_MODULE_TB.cpp; \
		mv -f sc_TOP_MODULE_TB.cpp sc_$(TOP_MODULE)_TB.cpp; \
	fi
	@if [ -f ./sc_TOP_MODULE_TB.h ];  then \
		sed -i "s/TOP_MODULE/${TOP_MODULE}/g" ./sc_TOP_MODULE_TB.h; \
		mv -f sc_TOP_MODULE_TB.h sc_$(TOP_MODULE)_TB.h; \
	fi
	@echo
	@echo 'Makefile for Co-Simulation of Vitis-HLS example, $(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make lint'
	@echo '    TOP_MODULE=$(TOP_MODULE) VCD_TRACE=[YES]|NO make build'
	@echo '    make run'
	@echo '    make wave'
	@echo '    make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

lint :
	$(VERILATOR) --sc --timing $(VL_WARNING) --pins-sc-uint \
				--top-module $(TOP_MODULE) $(VERILOG_SRCS)

build : $(TARGET_DIR)/$(TARGET)
$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc $(VL_WARNING) --trace --timing --pins-sc-uint \
				--top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
				$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

wave : V$(TOP_MODULE).vcd sc_$(TOP_MODULE)_tb.vcd
	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &
	gtkwave sc_$(TOP_MODULE)_tb.vcd --save=sc_$(TOP_MODULE)_tb.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd
	rm -f $(TOP_MODULE)

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)
