# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++

# SystemC testbench Reuse --------------------------------------
DUT_NAME         = pong_SbS
SC_TARGET        = sc_$(DUT_NAME)_TB
SC_EMU_PATH      = ../emulation
SC_SIM_PATH      = ../simulation

SC_HDRS =  \
	$(SC_EMU_PATH)/E$(DUT_NAME).h \
	$(SC_SIM_PATH)/sc_glcd128x64_TLM.h \
	$(SC_SIM_PATH)/sc_$(DUT_NAME)_TB.h
SC_SRCS = \
	$(SC_SIM_PATH)/sc_glcd128x64_TLM.cpp \
	$(SC_SIM_PATH)/sc_$(DUT_NAME)_TB.cpp \
	$(SC_SIM_PATH)/sc_main.cpp

ifeq ($(VCD_TRACE),YES)
VCD_TRACE = -DVCD_TRACE_TEST_TB
endif

# Build Rules --------------------------------------------------
all :
	@clear
	@echo
	@echo 'Makefile for Co-Emulation of "$(DUT_NAME)"'
	@echo
	@echo '    TOP_MODULE=$(DUT_NAME) VCD_TRACE=YES|[NO] make build'
	@echo '    TOP_MODULE=$(DUT_NAME) make run'
	@echo '    TOP_MODULE=$(DUT_NAME) make clean'
	@echo
	@echo '     make -C PSCE-MI build'
	@echo '     make -C PSCE-MI upload'
	@echo
	@echo '     make -C PSCE-TRANS/Altera_Cmd build'
	@echo '     make -C PSCE-TRANS/Altera_Cmd gen_rbf'
	@echo '     make -C PSCE-TRANS/Altera_Cmd config'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build: $(SC_TARGET)

$(SC_TARGET): $(SC_SRCS) $(SC_HDRS)
	$(CXX) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-I$(SC_EMU_PATH) \
		-I$(SC_SIM_PATH) \
		-DEMULATED_CO_SIM \
		$(VCD_TRACE) \
		-lsystemc -lSDL2 \
		-o$(SC_TARGET) $(SC_SRCS)

wave : E$(DUT_NAME).vcd
	gtkwave E$(DUT_NAME).vcd --save=E$(DUT_NAME).gtkw &

#	rm -f $(SC_TARGET).vcd
#	mkfifo $(SC_TARGET).vcd
#	./$(SC_TARGET) &
#	shmidcat $(SC_TARGET).vcd | gtkwave -v -I $(SC_TARGET).sav

run: $(SC_TARGET)
	./$(SC_TARGET)

clean :
	rm -f $(SC_TARGET)
	rm -f E$(DUT_NAME).vcd
	rm -f sc_$(DUT_NAME)_TB.vcd
	make -C PSCE-MI clean
	make -C PSCE-TRANS/Altera_Cmd clean
