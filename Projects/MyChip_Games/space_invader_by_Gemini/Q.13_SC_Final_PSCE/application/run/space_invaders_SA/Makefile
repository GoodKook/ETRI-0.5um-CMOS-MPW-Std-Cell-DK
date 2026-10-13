# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

#---------------------------------------------------------------
TOP_MODULE = space_invaders

# SystemC testbench Reuse --------------------------------------
SC_SRCS =  \
		sc_main.cpp \
		sc_keyboard.cpp \
		./sc_$(TOP_MODULE)_SA.cpp
SC_HDRS = \
	./$(TOP_MODULE).h \
	./sc_$(TOP_MODULE)_SA.h

# Build Rules --------------------------------------------------
all : $(TOP_MODULE)_SA

$(TOP_MODULE)_SA: $(SC_SRCS) $(SC_HDRS)
	g++ -I/opt/systemc/include \
		-o $(TOP_MODULE)_SA \
		$(SC_SRCS) \
		-L/opt/systemc/lib -lsystemc -lSDL2

run : $(TOP_MODULE)_SA
	./$(TOP_MODULE)_SA

clean :
	rm -f $(TOP_MODULE)_SA

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)
