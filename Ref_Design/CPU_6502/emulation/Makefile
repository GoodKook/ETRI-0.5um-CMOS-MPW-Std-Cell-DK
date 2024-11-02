# -----------------------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

SC_SRCS		=	../simulation/sc_main.cpp \
				../simulation/sc_mem.cpp
SC_TOP_H	=	./Vcpu.h \
				./cpu_wrapper.h \
				../simulation/sc_CPU_6502_Top.h \
				../simulation/sc_mem.h
SC_DEFS		=	CR_LF_CR
#SC_DEFS		=	CR_LF_LF
#SC_DEFS		= 	CR_LF_NONE

TOP_MODULE   = cpu

all :
	@echo 'Makefile for CPU_6502 Co-Emulation: Verilog RTL[+] is implemented into FPGA[-] and'
	@echo '	                   warapped with Arduino and'
	@echo '                    simulated under SystemC Testbench(Cycle-Accurate)'
	@echo ''
	@echo '    make build'
	@echo '        Builds executable of "cpu" with Cycle-Accurate SystemC TB, and'
	@echo '          linux pipe app(fifo): "std_input", "std_output" for IO system.'
	@echo '    make run'
	@echo '        - Simulate at Cycle-Accurate level where Memory & PIA in SystemC TB'
	@echo '        - Warning: VERY SLOW! Runs at ~2Khz'
	@echo '        - PSCE API(Arduino) & FPGA model: "cpu_wrapper"'
	@echo '        - Default 6502 firmware: "./Apple-1/program.bin"'
	@echo '    make wave'
	@echo '        View SystemC TB generated waveform'
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo ''
	@echo 'CPU_6502 Stand-Alone:'
	@echo '    make standalone'
	@echo '        Choose one of PSCE API[*](Arduino DUE) option:'
	@echo '            1. PSCE API: "cpu_wrapper_SA", Memory & PIA is move to Arduino, running @~20Khz'
	@echo '               FPGA Emu: "cpu_wrapper",    FPGA emulator is same as Cycle-Accurate'
	@echo '            2. PSCE API: "cpu_wrapper_RT", PIA in Arduino, running @~200Khz'
	@echo '               FPGA Emu: "cpu_wrapper_RT", Memory is moved to FPGA emulator'
	@echo ''
	@echo 'CPU_6502 Real-Time:'
	@echo '    make realtime'
	@echo '        PSCE API: "cpu_wrapper_RT2", PWM(DAC1) generated clock goes to FPGA'
	@echo '        FPGA Emu: "cpu_wrapper_RT2", Memory & PIA moved to FPGA, running @~56Mhz'
	@echo ''
	@echo ' [+] Arlet-6502, https://github.com/Arlet/verilog-6502'
	@echo ' [-] Tested FPGA: Xilinx Artix-7(Digilent ARTY A7), Gowin GW5A-25K(SiPEED TANG Premier 25K)'
	@echo ' [*] PSCE is Poorman`s Standard Co-Emulation by GoodKook, goodkook@gmail.com'
	@echo '             available at http://github.com/GoodKook'
	@echo ''

build : $(TOP_MODULE) std_input std_output

$(TOP_MODULE) : $(VERILOG_SRCS) $(SC_SRCS) $(SC_TOP_H)
	$(CXX) $(CXXFLAGS) \
		-D$(SC_DEFS) \
		-I. -I../simulation -I$(SYSTEMC_INCLUDE) \
		-L$(SYSTEMC_LIBDIR) -Wl,-rpath=$(SYSTEMC_LIBDIR) \
		-lsystemc -lm -lgsl -lpthread \
		-o $(TOP_MODULE) $(SC_SRCS)

std_input : ../simulation/std_input.cpp
	gcc -o std_input ../simulation/std_input.cpp

std_output : ../simulation/std_output.cpp
	gcc -o std_output ../simulation/std_output.cpp

run : $(TOP_MODULE) std_input std_output
	rm -f *.fifo
	xterm -T "Apple-1 Keyboard" ./std_input &
	xterm -T "Apple-1 Display" ./std_output &
	sleep 1
	./$(TOP_MODULE)
	
standalone : cpu_wrapper_SA
	./cpu_wrapper_SA

realtime : cpu_wrapper_RT2
	./cpu_wrapper_RT2

cpu_wrapper_SA : cpu_wrapper_SA.cpp
	g++ -o cpu_wrapper_SA cpu_wrapper_SA.cpp

cpu_wrapper_RT2 : cpu_wrapper_RT2.cpp
	g++ -o cpu_wrapper_RT2 cpu_wrapper_RT2.cpp

wave : sc_cpu_wrapper_Emul.vcd
	gtkwave sc_CPU_6502.vcd --save=sc_CPU_6502.gtkw &
	gtkwave sc_cpu_wrapper_Emul.vcd --save=sc_cpu_wrapper_Emul.gtkw &

clean :
	rm -rf $(TOP_MODULE)
	rm -f std_input
	rm -f std_output
	rm -f cpu_wrapper_SA
	rm -f cpu_wrapper_RT2
	rm -f *.vcd
	rm -f *.fifo
	rm -f ./Vivado/cpu_wrapper/vivado*
	rm -f ./Vivado/cpu_wrapper_RT/vivado*
	rm -f ./Vivado/cpu_wrapper_RT2/vivado*

debug : $(TOP_MODULE)
	ddd $(TOP_MODULE)

