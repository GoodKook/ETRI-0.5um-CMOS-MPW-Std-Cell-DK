# -----------------------------------------------------
export SYSTEMC         = /opt/systemc
export SYSTEMC_HOME    = $(SYSTEMC)
export SYSTEMC_INCLUDE = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR  = $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

all: fir_pe_TB

run: fir_pe_TB
	./fir_pe_TB

fir_pe_TB: fir_pe.cpp fir_pe.h fir_pe_TB.cpp
	clang++ -g -D_DEBUG -DVM_SC=1 -I. -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) -o fir_pe_TB \
		fir_pe_TB.cpp fir_pe.cpp -lsystemc

clean:
	@rm -f fir_pe_TB

