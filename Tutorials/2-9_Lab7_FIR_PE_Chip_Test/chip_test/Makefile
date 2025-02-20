# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

# SystemC testbench Reuse --------------------------------------
SC_TARGET    = sc_fir_pe_tb
SC_HDRS_PATH = ../../2-8_Lab6_FIR_PE_Emulation/emulation
SC_HDRS      =  \
	$(SC_HDRS_PATH)/E_fir_pe.h \
	./sc_fir_pe_tb.h
SC_SRCS      = ./sc_main.cpp

# Conditional building option
ifeq ($(VCD_TRACE),YES)
  VCD_TRACE = VCD_TRACE_YES
else
  VCD_TRACE = VCD_TRACE_NO
endif

ifeq ($(TEST_MODE), MULTIPLIER_C)
  TEST_MODE = TEST_MULTIPLIER_C
else ifeq ($(TEST_MODE), MULTIPLIER_X)
  TEST_MODE = TEST_MULTIPLIER_X
else ifeq ($(TEST_MODE), ADDER_X)
  TEST_MODE = TEST_ADDER_X
else ifeq ($(TEST_MODE), ADDER_Y)
  TEST_MODE = TEST_ADDER_Y
else
  TEST_MODE = TEST_ADDER_R
endif

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for Chip Test of "FIR_PE/MyChip MPW 2024-2"'
	@echo ''
	@echo 'SystemC Testbench'
	@echo '+-----------------------+'
	@echo '|  sc_fir_pe_tb         |'
	@echo '|                       |      (FPGA)'
	@echo '|                       |     +----------+'
	@echo '|                       |     | E_fir_pe |'
	@echo '|                       |     |     +----+    (Chip)'
	@echo '|                       |   (DUE)   |        +---------+'
	@echo '|  +------------+       |   +---+   |        | FIR_PE  |'
	@echo '|  | Test_Gen() |-----------| P |--->--[4]-->Xin       |'
	@echo '|  |            |-----------| S |--->--[4]-->Yin       |'
	@echo '|  |            |-----------| C |--->------->Rdy       |'
	@echo '|  +------------+       |   | E |...........>Clk       |'
	@echo '|  +------------+       |   | - |            |         |'
	@echo '|  |            |-----------| M |---<--[4]--<Xout      |'
	@echo '|  | Test_Mon() |-----------| I |---<--[4]--<Yout      |'
	@echo '|  |            |-----------|   |---<-------<Vld       |'
	@echo '|  +------------+       |   +---+   |        |         |'
	@echo '|                       |     |     +----+   +---------+'
	@echo '|                       |     |          |'
	@echo '+-----------------------+     +----------+'
	@echo '               * PSCE-MI(Arduino DUE): same as of FIR_PE_Emulator`s'
	@echo ''
	@echo 'Usage:'
	@echo '    Build with Options,'
	@echo '        TEST_MODE=<...> VCD_TRACE=<...> make build'
	@echo '           TEST_MODE: MULTIPLIER_C, MULTIPLIER_X, ADDER_R, ADDER_X, ADDER_Y, RAND'
	@echo '           VCD_TRACE: YES or NO'
	@echo
	@echo '    Run test,'
	@echo '        make run'
	@echo
	@echo '    View VCD at run-time,'
	@echo '        TEST_MODE=<...> make run_vcd'
	@echo
	@echo '        make clean'
	@echo

build: $(SC_TARGET)

$(SC_TARGET): $(SC_SRCS) $(SC_HDRS)
	$(CXX) $(CXXFLAGS) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_HDRS_PATH) \
		-D$(TEST_MODE) -D$(VCD_TRACE) \
		-lsystemc -o$(SC_TARGET) $(SC_SRCS)

run: $(SC_TARGET)
	./$(SC_TARGET)

run_la:
	$(CXX) $(CXXFLAGS) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_HDRS_PATH) \
		-D$(TEST_MODE) -D$(VCD_TRACE) -DLA_FIFO \
		-lsystemc -o$(SC_TARGET) $(SC_SRCS)
	rm -f la_fifo
	mkfifo la_fifo
	python3 la_fifo.py &
	./$(SC_TARGET)

run_vcd:
	$(CXX) $(CXXFLAGS) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_HDRS_PATH) \
		-D$(TEST_MODE) -DVCD_TRACE_YES \
		-lsystemc -o$(SC_TARGET) $(SC_SRCS)
	rm -f sc_fir_pe_tb.vcd
	mkfifo sc_fir_pe_tb.vcd
	./$(SC_TARGET) &
	shmidcat sc_fir_pe_tb.vcd | gtkwave -v -I sc_fir_pe_tb.sav

clean :
	rm -f $(SC_TARGET)
	rm -f sc_fir_pe_tb.vcd
	rm -f la_fifo


