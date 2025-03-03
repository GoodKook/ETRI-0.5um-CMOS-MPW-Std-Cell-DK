# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

# SystemC testbench Reuse --------------------------------------
SC_TARGET    = sc_pong_pt1_TB
SC_HDRS_PATH = ../emulation
SC_HDRS      =  \
	$(SC_HDRS_PATH)/Vpong_pt1.h \
	../simulation/sc_pong_pt1_TB.h
SC_SRCS      = \
	../simulation/sc_main.cpp \
	../simulation/sc_pong_pt1_TB.cpp

# Conditional building option
ifeq ($(VCD_TRACE),YES)
  VCD_TRACE = VCD_TRACE
else
  VCD_TRACE = VCD_TRACE_NO
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
	@echo 'Makefile for CA-Mode emulation of "pong_pt1"'
	@echo ''
	@echo 'SystemC Testbench'
	@echo '+----------------------------------+'
	@echo '|  simulation/sc_pong_pt1_tb       |'
	@echo '|                                  |           (FPGA)'
	@echo '|  +------------+   +------------+ |          +---------------------+'
	@echo '|  | SDL2       |   | Vpong_pt1.h| |          |  pong_pt1_wrapper.v |'
	@echo '|  | KBD/Screen |   |  [Driver]| | |          |     +---------------+'
	@echo '|  +------------+   |    +-------+ |  (DUE)   |     | +------------+'
	@echo '|  +------------+   |    |         |  +---+   |     | | pong_pt1.v |'
	@echo '|  | test_gen() |----------[CA/SA]----| P |----------->up          |'
	@echo '|  |            |----------[CA/SA]----| S |----------->down        |'
	@echo '|  |            |----------[CA/SA]----| C |----------->reset       |'
	@echo '|  +------------+   |    |         |  | E |**[CA/SA]**>Clk         |'
	@echo '|  +------------+   |    |         |  | - |   |     | |            |'
	@echo '|  |            |-------------[CA]----| M |---<-+-----p_tick       |'
	@echo '|  | monitor()  |-------------[CA]----| I |---<-|+----hsync/vsync  |'
	@echo '|  |            |-------------[CA]----|   |---<-||+---rgb          |'
	@echo '|  +------------+   |    |         |  +---+   | ||| | |            |   Display Ctrl'
	@echo '|                   |    +-------+ | [CA/SA]  | ||| | +------------+   (DUE)' 
	@echo '|                   |            | |          | ||| +---------------+  +------+ (LCD)'
	@echo '|                   +------------+ |          | |||                 |  |      | +----+'
	@echo '|                                  |          | ||+--[CA/SA]----------->      | |128 |'
	@echo '+----------------------------------+          | |+---[CA/SA]----------->      ==>  x |'
	@echo '                                              | +----[CA/SA]----------->      | | 64 |'
	@echo '                                              +---------------------+  |      | +----+'
	@echo '                   * CA-Mode: running @ ~60Hz/SA-Mode running @ 50Khz  +------+'
	@echo ''
	@echo '    make build'
	@echo '        Build emulator'
	@echo '        Options are;'
	@echo '            VCD_TRACE=<YES|[NO]>'
	@echo '            EMULATION_MODE=<[CA]|SA>'
	@echo '                 for SA mode, PSCE-MI firmware must be set to EMULATION_SA'
	@echo '    Run test,'
	@echo '        make run'
	@echo '        make run_vcd'
	@echo
	@echo '        make clean'
	@echo

build: $(SC_TARGET)

$(SC_TARGET): $(SC_SRCS) $(SC_HDRS)
	$(CXX) $(CXXFLAGS) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_HDRS_PATH) \
  		-D$(VCD_TRACE) \
  		-D$(EMULATION_MODE) \
		-lsystemc -lSDL2 -o$(SC_TARGET) $(SC_SRCS)

run_vcd:
	$(CXX) $(CXXFLAGS) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_HDRS_PATH) \
		-DVCD_TRACE \
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
	rm -f $(SC_TARGET).vcd


