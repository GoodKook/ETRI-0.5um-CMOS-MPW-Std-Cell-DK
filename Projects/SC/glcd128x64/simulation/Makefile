# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

#---------------------------------------------------------------
TOP_MODULE = sc_glcd128x64

# SystemC testbench Reuse --------------------------------------
SC_SRCS =  \
	./sc_main.cpp \
	./$(TOP_MODULE).cpp \
	./$(TOP_MODULE)_TB.cpp
SC_HDRS = \
	./$(TOP_MODULE).h \
	./$(TOP_MODULE)_TB.h

LIBS = -lSDL2 -lsystemc

ifeq ($(DEBUG_MSG), YES)
	DEBUG_MSG = -DDEBUG_MSG
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
	@echo
	@echo 'Makefile for $(TOP_MODULE), SystemC model of "GLCD 128x64(KS0108)"'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) DEBUG_MSG=YES|[NO] make build'
	@echo '    make run'
	@echo '    make wave'
	@echo '    make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build : $(TOP_MODULE)_TB

$(TOP_MODULE)_TB : $(SC_SRCS) $(SC_HDRS)
	$(CXX)  -I$(SYSTEMC_INCLUDE) \
			-L$(SYSTEMC_LIBDIR) \
			-o $(TOP_MODULE)_TB \
			$(DEBUG_MSG) \
			$(SC_SRCS) \
			$(LIBS)

run : $(TOP_MODULE)_TB
	./$(TOP_MODULE)_TB

wave: $(TOP_MODULE)_TB.vcd
	gtkwave $(TOP_MODULE)_TB.vcd --save=$(TOP_MODULE)_TB.gtkw &

clean:
	rm -f $(TOP_MODULE)_TB
	rm -f $(TOP_MODULE)_TB.vcd
