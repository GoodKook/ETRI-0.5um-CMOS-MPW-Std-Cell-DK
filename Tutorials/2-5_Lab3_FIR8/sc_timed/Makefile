# -----------------------------------------------------
export SYSTEMC         = /usr/local/systemc-3.0.0
export SYSTEMC_HOME    = $(SYSTEMC)
export SYSTEMC_INCLUDE = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR  = $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX             = clang++
export CXXFLAGS        = -std=c++17

SC_TOP  = sc_fir8_tb
SC_SRCS = \
    sc_main.cpp $(SC_TOP).cpp \
    ../c_untimed/fir8.cpp \
    ../c_untimed/cnoise.cpp
SC_HDRS = \
    sc_fir_pe.h \
    sc_fir8.h $(SC_TOP).h
CFLAGS  = -std=c++17 -g
CFLAGS += -DVCD_TRACE_FIR8
CFLAGS += -DVCD_TRACE_FIR8_TB
LIBS    = -lsystemc
LIBS   += -lm
LIBS   += -lgsl

all:
	@echo
	@echo 'Makefile for timed SystemC/C++ test of "FIR8" example'
	@echo '  Additional Libs: GSL(GNU Science Library) for test generation'
	@echo '                   SystemC for timed modeling of PE array*'
	@echo '    * Implement FIR filter into pipe-lined systolic array'
	@echo
	@echo 'SystemC Testbench'
	@echo '      +-------------------------------------------------------------+'
	@echo '      | sc_fir8(Timed)                                              |'
	@echo '      |   sc_fir_pe[0] sc_fir_pe[1]      sc_fir_pe[6] sc_fir_pe[7]  |'
	@echo '      |   +-------+    +-------+         +-------+    +-------+     |'
	@echo '      |   |       |    |       |         |       |    |       |     |'
	@echo 'Xin--[8]-->       ----->       --->...--->       ----->       ------->Xout'
	@echo '      |   |       |    |       |         |       |    |       |     |'
	@echo 'Yin--[16]->       ----->       --->...--->       ----->       ------->Yout'
	@echo '      |   |       |    |       |         |       |    |       |     |'
	@echo '      | +->       | +-->       |      +-->       | +-->       |     |'
	@echo '      | | +---+---+ |  +---+---+      |  +---+---+ |  +---+---+     |'
	@echo '      | |   C[0]    |    C[1]         |    C[6]    |    C[7]        |'
	@echo 'Clk-----+-----------+----------- ... -+------------+                |'
	@echo '      +-------------------------------------------------------------+'
	@echo '           * sc_fir_pe[]: SystemC model of fir_pe'
	@echo
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following options'
	@echo '             build'
	@echo '             run'
	@echo '             clean'
	@echo

build: $(SC_TOP)

$(SC_TOP): $(SC_SRCS) $(SC_HDRS)
	clang++ -I. -I../c_untimed -I$(SYSTEMC_INCLUDE) $(CFLAGS) -L$(SYSTEMC_LIBDIR) \
			-o $(SC_TOP) $(LIBS) $(SC_SRCS)

#			-fPIC -shared -o $(SC_TOP) $(LIBS) $(SC_SRCS)

run: $(SC_TOP)
	./$(SC_TOP)
	python3 ./sc_plotDFT.py &
	gtkwave sc_fir8.vcd --save=sc_fir8.gtkw &

clean :
	rm -f $(SC_TOP)
	rm -f *.vcd
	rm -f *.txt

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)

