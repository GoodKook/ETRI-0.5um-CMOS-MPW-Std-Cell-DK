# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

#---------------------------------------------------------------
#TOP_FUNCTION =
TOP_MODULE   = $(TOP_FUNCTION)_TB
#TYPE =
# TYPE=COMBINATIONAL|REGISTERED|BIT_ACCURATE_SC'

# SystemC testbench Reuse --------------------------------------
SRCS =  \
	./$(TOP_FUNCTION).cpp \
	./$(TOP_MODULE).cpp

HDRS =

# Build Rules --------------------------------------------------
all :
	@if [ ! -n "$(TOP_FUNCTION)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_FUNCTION not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -n "$(TYPE)" ];  then \
		echo "*******************************************************"; \
		echo "!!! Hardware TYPE must be defined !!!"; \
		echo "    i.e. TYPE=COMBINATIONAL|REGISTERED|BIT_ACCURATE_SC"; \
		echo "*******************************************************"; \
		exit 1; \
	fi
	@echo
	@echo 'Makefile for un-timed C simulation of $(TOP_FUNCTION)'
	@echo
	@echo '    TOP_FUNCTION=$(TOP_FUNCTION) TYPE=$(TYPE) make build'
	@echo '    TOP_FUNCTION=$(TOP_FUNCTION) make run'
	@echo '    TOP_FUNCTION=$(TOP_FUNCTION) make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build : $(TOP_MODULE)
$(TOP_MODULE) : $(SRCS) $(HDRS)
	$(CXX) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-o $(TOP_MODULE) \
		-D$(TYPE) \
		$(SRCS) \
		-lsystemc

run : $(TOP_MODULE)
	./$(TOP_MODULE)

clean :
	rm -rf $(TOP_MODULE)

debug : $(TOP_MODULE)
	ddd $(TOP_MODULE)
