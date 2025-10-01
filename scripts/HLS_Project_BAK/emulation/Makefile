# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

# SystemC testbench Reuse --------------------------------------
DUT_NAME         = $(TOP_MODULE)
SC_TARGET        = sc_$(DUT_NAME)_TB
SC_EMU_PATH      = ../emulation
SC_SIM_PATH      = ../simulation
C_UNTIMED_PATH   = ../c_untimed
VITIS_HLS_PATH   = ../$(DUT_NAME)

SC_HDRS =  \
	$(SC_EMU_PATH)/E$(DUT_NAME).h \
	$(SC_SIM_PATH)/sc_$(DUT_NAME)_TB.h
SC_SRCS = \
	$(C_UNTIMED_PATH)/$(DUT_NAME).cpp \
	$(SC_SIM_PATH)/sc_$(DUT_NAME)_TB.cpp \
	$(SC_SIM_PATH)/sc_main.cpp

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
	@echo 'Makefile for CA-Mode emulation of "$(DUT_NAME)"'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) HW_STYLE=$(HW_STYLE) make build'
	@echo '    TOP_MODULE=$(TOP_MODULE) make run'
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build: $(SC_TARGET)
$(SC_TARGET): $(SC_SRCS) $(SC_HDRS)
	$(CXX) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_EMU_PATH) \
		-I$(SC_SIM_PATH) \
		-I$(C_UNTIMED_PATH) \
		-D$(HW_STYLE) \
		-DEMULATED_CO_SIM \
		-DVCD_TRACE_TEST_TB \
		-lsystemc -o$(SC_TARGET) $(SC_SRCS)

wave : sc_$(DUT_NAME)_tb.vcd
	gtkwave sc_$(DUT_NAME)_tb.vcd --save=sc_$(DUT_NAME)_tb.gtkw &

#	rm -f $(SC_TARGET).vcd
#	mkfifo $(SC_TARGET).vcd
#	./$(SC_TARGET) &
#	shmidcat $(SC_TARGET).vcd | gtkwave -v -I $(SC_TARGET).sav

run: $(SC_TARGET)
	./$(SC_TARGET)

clean :
	rm -f $(SC_TARGET)
	rm -f *.vcd


