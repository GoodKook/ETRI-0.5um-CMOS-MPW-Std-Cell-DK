# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

# SystemC testbench Reuse --------------------------------------
SC_TARGET    = sc_fir_pe_tb
SC_HDRS_PATH = .
SC_HDRS      =  \
	$(SC_HDRS_PATH)/E_fir_pe.h \
	./sc_fir_pe_tb.h
SC_SRCS      = \
	./sc_fir_pe_tb.cpp \
	./sc_main.cpp

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
	@echo '    Build,'
	@echo '        make build'
	@echo
	@echo '    Run test,'
	@echo '        make run'
	@echo '        make run_vcd'
	@echo '        make run_la'
	@echo
	@echo '    View VCD,'
	@echo '        make wave'
	@echo
	@echo '        make clean'
	@echo

build: $(SC_TARGET)

$(SC_TARGET): $(SC_SRCS) $(SC_HDRS)
	clang++ -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_HDRS_PATH) \
		-lsystemc -o$(SC_TARGET) $(SC_SRCS)

run: $(SC_TARGET)
	./$(SC_TARGET)

run_vcd: $(SC_TARGET)
	rm -f sc_fir_pe_tb.vcd
	mkfifo sc_fir_pe_tb.vcd
	./$(SC_TARGET) &
	shmidcat sc_fir_pe_tb.vcd | gtkwave -v -I sc_fir_pe_tb.sav

run_la:
	clang++ -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_HDRS_PATH) -DLA_FIFO \
		-lsystemc -o$(SC_TARGET) $(SC_SRCS)
	rm -f la_fifo
	mkfifo la_fifo
	python3 la_fifo.py &
	./$(SC_TARGET)

wave :
	gtkwave E_fir_pe.vcd --save=E_fir_pe.gtkw &
	gtkwave sc_fir_pe_tb.vcd --save=sc_fir_pe_tb.gtkw &

clean :
	rm -f $(SC_TARGET)
	rm -f *.vcd
	rm -f la_fifo


