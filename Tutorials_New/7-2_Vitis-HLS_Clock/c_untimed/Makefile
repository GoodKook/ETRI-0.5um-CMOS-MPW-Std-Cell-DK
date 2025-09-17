# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

#---------------------------------------------------------------
TOP_FUNCTION = Clock
TOP_MODULE   = $(TOP_FUNCTION)_TB

# SystemC testbench Reuse --------------------------------------
SRCS =  \
	./$(TOP_FUNCTION).cpp \
	./$(TOP_MODULE).cpp

#SC_HDRS =

#---------------------------------------------------------------
#ifeq ($(TYPE), )
#$(error TYPE is not defined. Please define it before running make.)
#endif

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for un-timed C simulation of $(TOP_FUNCTION)'
	@echo
	@echo '    TYPE=[] make build'
	@echo '        build option, TYPE=COMBINATIONAL|REGISTERED|BIT_ACCURATE_SC'
	@echo '    make run'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build : $(TOP_MODULE)
$(TOP_MODULE) :
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
