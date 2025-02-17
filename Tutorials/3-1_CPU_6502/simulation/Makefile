# -----------------------------------------------------
TOP_MODULE   = cpu
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir
# -----------------------------------------------------
# SystemC Env.
export SYSTEMC          = /usr/local/systemc-3.0.0
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX              = clang++
export CXXFLAGS         = -std=c++17
# -----------------------------------------------------
# Sources
VERILOG_SRCS = \
	../source/cpu.v \
	../source/ALU8.v
SC_SRCS = \
	sc_main.cpp \
	sc_mem.cpp
SC_TOP_H = \
	sc_CPU_6502_Top.h \
	sc_mem.h
# -----------------------------------------------------
VERILATOR    = verilator
#CFLAGS1      = -g
CFLAGS1      = -std=c++17
CFLAGS2      = -DCR_LF_CR
#CFLAGS2      = -DCR_LF_LF
#CFLAGS2      = -DCR_LF_NONE

# Conditional building option
ifeq ($(VCD_TRACE),YES)
  VCD_TRACE = VCD_TRACE_YES
else
  VCD_TRACE = VCD_TRACE_NO
endif
CFLAGS3      = -D$(VCD_TRACE)
# -----------------------------------------------------
all :
	@echo 'Makefile for CPU_6502 Co-Simulation: Verilog RTL(*) under SystemC Testbench'
	@echo '    (*) https://github.com/Arlet/verilog-6502'
	@echo ''
	@echo '    VCD_TRACE=<YES|NO> make build'
	@echo '        Builds executable of "cpu" with Verilated RTL and SystemC TB, and'
	@echo '          linux pipe app(fifo): "std_input", "std_output" for IO system.'
	@echo ''
	@echo '    make run'
	@echo '        Default firmware: "./Apple-1/program.bin"'
	@echo '        [Note1] Build 6502 App. using CC65 C-Compiler. See examples at ./Apple-1'
	@echo '        [Note2] C-compiler and examples are gzipped "Apple-1_SDK.tar.gz"'
	@echo ''
	@echo '    make wave'
	@echo ''
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo ''

# -----------------------------------------------------
build : $(TARGET_DIR)/$(TARGET) std_input std_output

$(TARGET_DIR)/$(TARGET) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) --exe --build \
		-CFLAGS $(CFLAGS1) \
		-CFLAGS $(CFLAGS2) \
		-CFLAGS $(CFLAGS3) \
		$(VERILOG_SRCS) $(SC_SRCS)

std_input : std_input.cpp
	gcc -o std_input std_input.cpp

std_output : std_output.cpp
	gcc -o std_output std_output.cpp

# -----------------------------------------------------
run : $(TARGET_DIR)/$(TARGET) std_input std_output
	rm -f *.fifo
	xterm -fa 'Monospace' -fs 10 -T "Apple-1 Display" ./std_output &
	sleep 1
	xterm -fa 'Monospace' -fs 10 -T "Apple-1 Keyboard" ./std_input &
	sleep 1
	./$(TARGET_DIR)/$(TARGET)

# -----------------------------------------------------
wave : sc_CPU_6502.vcd
	gtkwave sc_CPU_6502.vcd --save=sc_CPU_6502.gtkw &

# -----------------------------------------------------
clean :
	rm -rf $(TARGET_DIR)
	rm -f std_input
	rm -f std_output
	rm -f CPU_terminal
	rm -f *.vcd
	rm -f *.fifo

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)


