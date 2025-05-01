# SystemC environments --------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

# -----------------------------------------------------
TOP_MODULE = fir8

SC_SRCS = \
    ../../2-5_Lab3_FIR8/sc_timed/sc_main.cpp \
    ../../2-5_Lab3_FIR8/sc_timed/sc_fir8_tb.cpp \
    ../../2-5_Lab3_FIR8/c_untimed/fir8.cpp \
    ../../2-5_Lab3_FIR8/c_untimed/cnoise.cpp
SC_HDRS = \
    ../../2-5_Lab3_FIR8/sc_timed/sc_fir_pe.h \
    ../../2-5_Lab3_FIR8/sc_timed/sc_fir8.h \
	./E$(TOP_MODULE).h
SC_TOP_H = \
    ../../2-5_Lab3_FIR8/sc_timed/sc_$(TOP_MODULE)_tb.h

CFLAGS  = -g
CFLAGS += -DVCD_TRACE_FIR8
CFLAGS += -DVCD_TRACE_FIR8_TB
CFLAGS += -DEMULATED_CO_SIM

LIBS    = -lsystemc
LIBS   += -lm
LIBS   += -lgsl

TARGET	= E$(TOP_MODULE)

ifeq ($(HW_STYLE), MACC)
	VERSION=FIR_MAC_VERSION
else ifeq ($(HW_STYLE), SHIFT)
	VERSION=FIR_SHIFTER_VERSION
else ifeq ($(HW_STYLE), ARRAY)
	VERSION=FIR_ARRAY_VERSION
else
	VERSION=FIR_MAC_VERSION
endif
CFLAGS += -D$(VERSION)

all :
	@echo
	@echo 'Makefile for Emulation Example: $(TOP_MODULE)'
	@echo ''
	@echo '  SystemC              Arduino        FPGA'
	@echo '+-Testbench--+       +-DUE------+   +-STD_EMU------+'
	@echo '|            |       | PSCE-API |   | PSCE wrapper |'
	@echo '| NoiseGen() |       |          |   |    +---------+'
	@echo '|            |       |          |   |    | +-DUT-----+'
	@echo '| Test_Gen() |       |          |   |    --> fir8    |'
	@echo '|            <=[USB]=>          <==>|    | | (array) |'
	@echo '| Test_Mon() |       |          |   |    <--         |'
	@echo '|            |       |          |   |    | +---------+'
	@echo '| sc_clock() ........>..............>    +---------+'
	@echo '|            |       | Model I/F|   |  Transactor  |'
	@echo '+------------+       +----------+   +--------------+'
	@echo '    Emulation Level: Cycle Accurate for Re-using SC_TB'
	@echo ''
	@echo '    make build'
	@echo '        Builds executable of "$(TOP_MODULE)", Co-Emulation with DUT-on-FPGA and SystemC TB'
	@echo ''
	@echo '    make run'
	@echo '        Emulate $(TOP_MODULE)'
	@echo ''
	@echo '    make wave'
	@echo '    make wave_tb'
	@echo '        View waveform'
	@echo ''
	@echo '    make plot'
	@echo '        Plot time-freq analysis'
	@echo ''
	@echo '    make clean'
	@echo '        Clean working folder'
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[MACC | SHIFT | ARRAY] make build'
	@echo

build : $(TARGET)

$(TARGET): $(SC_SRCS) $(SC_HDRS) $(SC_TOP_H)
	clang++ -I. -I../../2-5_Lab3_FIR8/c_untimed -I$(SYSTEMC_INCLUDE) $(CFLAGS) -L$(SYSTEMC_LIBDIR) \
			-o $(TARGET) $(LIBS) $(SC_SRCS)

run : $(TARGET)
	./$(TARGET)

wave_tb : sc_$(TOP_MODULE)_tb.vcd
	gtkwave sc_$(TOP_MODULE)_tb.vcd --save=sc_$(TOP_MODULE)_tb.gtkw &

wave : sc_$(TOP_MODULE).vcd
	gtkwave sc_$(TOP_MODULE).vcd --save=sc_$(TOP_MODULE).gtkw &

plot : sc_$(TOP_MODULE)_tb_out.txt
	python3 ../../2-5_Lab3_FIR8/sc_timed/sc_plotDFT.py

clean :
	rm -f E$(TOP_MODULE)
	rm -f *.vcd
	rm -f sc_$(TOP_MODULE)_tb_out.txt

debug : $(TARGET)
	ddd $(TARGET)
