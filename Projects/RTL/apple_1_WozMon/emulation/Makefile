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
	$(SC_SIM_PATH)/sc_mem.h \
	$(SC_SIM_PATH)/sc_$(DUT_NAME)_TB.h
SC_SRCS = \
	$(SC_SIM_PATH)/sc_mem.cpp \
	$(SC_SIM_PATH)/sc_$(DUT_NAME)_TB.cpp \
	$(SC_SIM_PATH)/sc_main.cpp

ifeq ($(VCD_TRACE),YES)
VCD_TRACE = -DVCD_TRACE_TEST_TB
endif

# Build Rules --------------------------------------------------
all :
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -e "./Apple-1" ]; then \
		ln -s ../simulation/Apple-1; \
	fi
	@echo
	@echo 'Makefile for $(MODE)-Mode emulation of "$(DUT_NAME)"'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) VCD_TRACE=YES|[NO] make build'
	@echo '    TOP_MODULE=$(TOP_MODULE) make run'
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
	@echo '* For SA mode terminal,'
	@echo '    make run_sa'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build: $(SC_TARGET)
$(SC_TARGET): $(SC_SRCS) $(SC_HDRS)
	$(CXX) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_EMU_PATH) \
		-I$(SC_SIM_PATH) \
		-I$(C_UNTIMED_PATH) \
		-DIPC_SOCKET \
		-g \
		-DEMULATED_CO_SIM \
		$(VCD_TRACE) \
		-lsystemc -lSDL2 \
		-o$(SC_TARGET) $(SC_SRCS)

wave : sc_$(DUT_NAME)_TB.vcd E$(DUT_NAME).vcd
	gtkwave sc_$(DUT_NAME)_TB.vcd --save=sc_$(DUT_NAME)_TB.gtkw &
	gtkwave E$(DUT_NAME).vcd --save=E$(DUT_NAME).gtkw &

#	rm -f $(SC_TARGET).vcd
#	mkfifo $(SC_TARGET).vcd
#	./$(SC_TARGET) &
#	shmidcat $(SC_TARGET).vcd | gtkwave -v -I $(SC_TARGET).sav

run: $(SC_TARGET)
	xterm -geometry 80x24 -fa "Monospace:size=12" -T "Apple-1" -e "../simulation/CPU_terminal" &
	sleep 1
	./$(SC_TARGET)

$(TOP_MODULE)_SA: $(TOP_MODULE)_SA.cpp
	g++ -o $(TOP_MODULE)_SA $(TOP_MODULE)_SA.cpp

run_sa: $(TOP_MODULE)_SA
	./$(TOP_MODULE)_SA

debug: $(SC_TARGET)
	xterm -e "../simulation/CPU_terminal" &
	sleep 1
	ddd ./$(SC_TARGET)

clean :
	rm -f $(SC_TARGET)
	rm -f E$(TOP_MODULE).vcd
	rm -f sc_$(TOP_MODULE)_TB.vcd
	rm -f sc_$(TOP_MODULE)_TB.txt
	rm -f std_input.fifo
	rm -f std_output.fifo
	rm -f $(TOP_MODULE)_SA
	rm -f Apple-1

