# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

# SystemC testbench Reuse --------------------------------------
DUT_NAME         = basic_loops
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
	@echo
	@echo 'Makefile for CA-Mode emulation of "$(DUT_NAME)"'
	@echo
	@echo '    make build'
	@echo '    make run'
	@echo '    make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build: $(SC_TARGET)
$(SC_TARGET): $(SC_SRCS) $(SC_HDRS)
	$(CXX) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_EMU_PATH) \
		-I$(SC_SIM_PATH) \
		-I$(C_UNTIMED_PATH) \
		-DVM_SC=1 \
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


