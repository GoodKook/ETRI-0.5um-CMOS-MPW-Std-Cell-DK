# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

#---------------------------------------------------------------
#TOP_MODULE    = $(TOP_FUNCTION)_TB
TOP_MODULE_TB = $(TOP_MODULE)_TB
#TYPE =
# TYPE=COMBINATIONAL|REGISTERED|BIT_ACCURATE_SC'

# SystemC testbench Reuse --------------------------------------
SRCS =  \
	./calcDFT.cpp \
	./cnoise.cpp \
	./$(TOP_MODULE).cpp \
	./$(TOP_MODULE_TB).cpp

HDRS =

LIBS = -lsystemc -lgsl

# Build Rules --------------------------------------------------
all :
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -n "$(HW_STYLE)" ];  then \
		echo "*******************************************************"; \
		echo "!!! Hardware TYPE must be defined !!!"; \
		echo "*******************************************************"; \
		exit 1; \
	fi
	@echo
	@echo 'Makefile for un-timed C simulation of $(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) HW_STYLE=$(HW_STYLE) make build'
	@echo '    TOP_MODULE=$(TOP_MODULE) make run'
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build : $(TOP_MODULE_TB)
$(TOP_MODULE_TB) : $(SRCS) $(HDRS)
	$(CXX) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-o $(TOP_MODULE_TB) \
		-D$(HW_STYLE)_SC \
		$(SRCS) \
		$(LIBS)

run : $(TOP_MODULE_TB)
	./$(TOP_MODULE_TB)

clean :
	rm -rf $(TOP_MODULE_TB)

debug : $(TOP_MODULE_TB)
	ddd $(TOP_MODULE_TB)
