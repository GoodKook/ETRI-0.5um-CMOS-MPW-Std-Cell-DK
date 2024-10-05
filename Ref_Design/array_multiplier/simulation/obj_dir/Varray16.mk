# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Makefile for building Verilated archive or executable
#
# Execute this makefile from the object directory:
#    make -f Varray16.mk

default: Varray16

### Constants...
# Perl executable (from $PERL, defaults to 'perl' if not set)
PERL = perl
# Python3 executable (from $PYTHON3, defaults to 'python3' if not set)
PYTHON3 = python3
# Path to Verilator kit (from $VERILATOR_ROOT)
VERILATOR_ROOT = /usr/local/share/verilator
# SystemC include directory with systemc.h (from $SYSTEMC_INCLUDE)
SYSTEMC_INCLUDE ?= /usr/local/systemc-3.0.0/include
# SystemC library directory with libsystemc.a (from $SYSTEMC_LIBDIR)
SYSTEMC_LIBDIR ?= /usr/local/systemc-3.0.0/lib-linux64

### Switches...
# C++ code coverage  0/1 (from --prof-c)
VM_PROFC = 0
# SystemC output mode?  0/1 (from --sc)
VM_SC = 1
# Legacy or SystemC output mode?  0/1 (from --sc)
VM_SP_OR_SC = $(VM_SC)
# Deprecated
VM_PCLI = 0
# Deprecated: SystemC architecture to find link library path (from $SYSTEMC_ARCH)
VM_SC_TARGET_ARCH = linux

### Vars...
# Design prefix (from --prefix)
VM_PREFIX = Varray16
# Module prefix (from --prefix)
VM_MODPREFIX = Varray16
# User CFLAGS (from -CFLAGS on Verilator command line)
VM_USER_CFLAGS = \
	-std=c++17 \

# User LDLIBS (from -LDFLAGS on Verilator command line)
VM_USER_LDLIBS = \
	-lgsl \

# User .cpp files (from .cpp's on Verilator command line)
VM_USER_CLASSES = \
	sc_array16_TB \
	sc_main \

# User .cpp directories (from .cpp's on Verilator command line)
VM_USER_DIR = \
	. \


### Default rules...
# Include list of all generated classes
include Varray16_classes.mk
# Include global rules
include $(VERILATOR_ROOT)/include/verilated.mk

### Executable rules... (from --exe)
VPATH += $(VM_USER_DIR)

sc_array16_TB.o: sc_array16_TB.cpp 
	$(OBJCACHE) $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(OPT_FAST)  -c -o $@ $<
sc_main.o: sc_main.cpp 
	$(OBJCACHE) $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(OPT_FAST)  -c -o $@ $<

### Link rules... (from --exe)
Varray16: $(VK_USER_OBJS) $(VK_GLOBAL_OBJS) $(VM_PREFIX)__ALL.a $(VM_HIER_LIBS)
	$(LINK) $(LDFLAGS) $^ $(LOADLIBES) $(LDLIBS) $(LIBS) $(SC_LIBS) -o $@


# Verilated -*- Makefile -*-
