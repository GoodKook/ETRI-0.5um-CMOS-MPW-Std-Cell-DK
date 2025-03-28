# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

# SystemC testbench Reuse --------------------------------------
DUT_NAME = test

SC_TARGET   = sc_$(DUT_NAME)_TB
SC_EMU_PATH = ../emulation
SC_SIM_PATH = ../simulation
VITIS_HLS_PATH = ../Vitis-HLS

SC_HDRS     =  \
	$(SC_EMU_PATH)/V$(DUT_NAME).h \
	$(SC_SIM_PATH)/sc_$(DUT_NAME)_TB.h
SC_SRCS      = \
	$(VITIS_HLS_PATH)/test.cpp \
	$(SC_SIM_PATH)/sc_main.cpp \
	$(SC_SIM_PATH)/sc_$(DUT_NAME)_TB.cpp

# Conditional building option
ifeq ($(VCD_TRACE),NO)
	VCD_TRACE = VCD_TRACE_NO
else
	VCD_TRACE = VCD_TRACE_TEST_TB
endif

# Emulation mode option
ifeq ($(EMULATION_MODE),SA)
	EMULATION_MODE=EMULATION_SA
else
	EMULATION_MODE=EMULATION_CA
endif

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for CA-Mode emulation of "$(DUT_NAME)"'
	@echo
	@echo '    Build emulator'
	@echo '        make build'
	@echo '            Options are;'
	@echo '                VCD_TRACE=<[YES]|NO>'
	@echo '                EMULATION_MODE=<[CA]|SA>'
	@echo '                    for SA mode, PSCE-MI firmware must be set to EMULATION_SA'
	@echo '    Run test,'
	@echo '        make run'
	@echo '        make run_vcd'
	@echo
	@echo '        make clean'
	@echo

build: $(SC_TARGET)

$(SC_TARGET): $(SC_SRCS) $(SC_HDRS)
	$(CXX) $(CXXFLAGS) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_EMU_PATH) \
		-I$(SC_SIM_PATH) \
		-I$(VITIS_HLS_PATH) \
		-DVM_SC=1 \
		-D$(VCD_TRACE) \
		-D$(EMULATION_MODE) \
		-lsystemc -o$(SC_TARGET) $(SC_SRCS)

wave : sc_$(DUT_NAME)_tb.vcd
	gtkwave sc_$(DUT_NAME)_tb.vcd --save=sc_$(DUT_NAME)_tb.gtkw &

run_vcd:
	$(CXX) $(CXXFLAGS) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_EMU_PATH) \
		-I$(SC_SIM_PATH) \
		-DVCD_TRACE_TEST_TB \
		-DEMULATION_CA \
		-lsystemc -lSDL2 -o$(SC_TARGET) $(SC_SRCS)
	rm -f $(SC_TARGET).vcd
	mkfifo $(SC_TARGET).vcd
	./$(SC_TARGET) &
	shmidcat $(SC_TARGET).vcd | gtkwave -v -I $(SC_TARGET).sav

run: $(SC_TARGET)
	./$(SC_TARGET)

clean :
	rm -f $(SC_TARGET)
	rm -f *.vcd


