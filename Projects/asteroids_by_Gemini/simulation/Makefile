# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

#---------------------------------------------------------------
TOP_MODULE = asteroids_top

# SystemC testbench Reuse --------------------------------------
SC_SRCS =  \
	./sc_main.cpp \
	./sc_glcd128x64_TLM.cpp \
	./sc_$(TOP_MODULE)_TB.cpp
SC_HDRS = \
	./sc_$(TOP_MODULE)_TB.h \
	./sc_glcd128x64_TLM.h

# Verilator vars -----------------------------------------------
RTL_PATH = \
	../$(TOP_MODULE)

lint: VERILOG_SRCS =  \
	$(RTL_PATH)/display_timing.v \
	$(RTL_PATH)/asteroids_game.v \
	$(RTL_PATH)/$(TOP_MODULE).v
	

build: VERILOG_SRCS =  \
	$(RTL_PATH)/display_timing.v \
	$(RTL_PATH)/asteroids_game.v \
	$(RTL_PATH)/$(TOP_MODULE).v

run: VERILOG_SRCS =  \
	$(RTL_PATH)/display_timing.v \
	$(RTL_PATH)/asteroids_game.v \
	$(RTL_PATH)/$(TOP_MODULE).v

#-------------------------------------------------------------------------------
VERILATOR    = verilator
VL_WARNING   = -Wno-WIDTHTRUNC -Wno-WIDTHEXPAND -Wno-UNSIGNED
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I../../c_untimed
VCFLAGS		+= -CFLAGS -I$(SYSTEMC_INCLUDE)
ifeq ($(VCD_TRACE),)
VCFLAGS		+= -CFLAGS -DVCD_TRACE_TEST_TB
VCFLAGS		+= -CFLAGS -DVCD_TRACE_DUT_VERILOG
VCFLAGS		+= -CFLAGS -DVCD_TRACE_GLCD
endif
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl
VCFLAGS		+= -LDFLAGS -lSDL2
#VCFLAGS		+= -CFLAGS -fPIC
#VCFLAGS		+= -LDFLAGS -shared

# Targets ------------------------------------------------------
#TOP_MODULE   = $(TOP_MODULE)
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

# Build Rules --------------------------------------------------
GAME_ENGINE = asteroids_game
all :
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -e "../$(TOP_MODULE)/$(GAME_ENGINE).v" ];  then \
		echo "*******************************************************************"; \
		echo "!!! $(GAME_ENGINE).v not exist in the RTL directory !!!"; \
		echo "*******************************************************************"; \
		echo "Try one of following RTLs,"; \
		ls -1 ../$(TOP_MODULE); \
		echo -n "Choose [0/1/2/3/4]: "; \
		read answer; : $${answer:=y}; \
		if [ "$$answer" = "0" ]; then \
			ln -s ../$(TOP_MODULE)/0_$(GAME_ENGINE).v ../$(TOP_MODULE)/$(GAME_ENGINE).v; \
		elif [ "$$answer" = "1" ]; then \
			ln -s ../$(TOP_MODULE)/1_$(GAME_ENGINE).v ../$(TOP_MODULE)/$(GAME_ENGINE).v; \
		elif [ "$$answer" = "2" ]; then \
			ln -s ../$(TOP_MODULE)/2_$(GAME_ENGINE).v ../$(TOP_MODULE)/$(GAME_ENGINE).v; \
		elif [ "$$answer" = "3" ]; then \
			ln -s ../$(TOP_MODULE)/3_$(GAME_ENGINE).v ../$(TOP_MODULE)/$(GAME_ENGINE).v; \
		elif [ "$$answer" = "4" ]; then \
			ln -s ../$(TOP_MODULE)/4_$(GAME_ENGINE).v ../$(TOP_MODULE)/$(GAME_ENGINE).v; \
		else \
			echo "Selection out of range"; \
		fi; \
		exit 1; \
	fi
	@echo
	@echo 'Makefile for Co-Simulation of Verilog-RTL example, $(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make lint'
	@echo '    TOP_MODULE=$(TOP_MODULE) VCD_TRACE=[YES]|NO make build'
	@echo '    make run'
	@echo '    make wave'
	@echo '    make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

lint :
	$(VERILATOR) --sc --timing $(VL_WARNING) --pins-sc-uint \
				--top-module $(TOP_MODULE) $(VERILOG_SRCS)

build : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(SC_SRCS) $(SC_HDRS) $(VERILOG_SRCS)
	$(VERILATOR) --sc $(VL_WARNING) --trace --timing --pins-sc-uint \
				--top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
				$(VCFLAGS) $(VERILOG_SRCS) $(SC_SRCS)

run : $(TARGET_DIR)/$(TARGET)
	./$(TARGET_DIR)/$(TARGET)

wave : V$(TOP_MODULE).vcd sc_$(TOP_MODULE)_TB.vcd
	gtkwave V$(TOP_MODULE).vcd --save=V$(TOP_MODULE).gtkw &
	gtkwave sc_$(TOP_MODULE)_TB.vcd --save=sc_$(TOP_MODULE)_TB.gtkw &

clean :
	rm -rf $(TARGET_DIR)
	rm -f *.vcd
	rm -f ../$(TOP_MODULE)/$(GAME_ENGINE).v

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)
