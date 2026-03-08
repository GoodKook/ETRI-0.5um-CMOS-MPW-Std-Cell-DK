# SystemC Environments -----------------------------------------
export SYSTEMC			= /opt/systemc
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

#-------------------------------------------------------------------------------
export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/Xilinx/2025.1/Vivado/bin:/opt/Xilinx/2025.1/Vitis/bin:$(PATH)

TOP_MODULE = fir
HW_STYLE=MACC
MI=PI_PICO

export CPP_FILES := ./c_untimed/fir8.cpp
HLS_CSYN_PATH = ./$(TOP_MODULE)/hls_component/syn/verilog
HLS_RPT_PATH  = ./$(TOP_MODULE)/hls_component/syn/report

# Export environmental variable for C-Synth & Simulation of fir8.cpp
ifeq ($(HW_STYLE), MACC)
	export HW_STYLE=FIR_MAC_VERSION
else ifeq ($(HW_STYLE), SHIFT)
	export HW_STYLE=FIR_SHIFTER_VERSION
else ifeq ($(HW_STYLE), ARRAY)
	export HW_STYLE=FIR_ARRAY_VERSION
else
	export HW_STYLE=FIR_MAC_VERSION
endif

all:
	@clear
	@echo 'Vitis-HLS Project: $(TOP_MODULE) (MPW)'
	@echo
	@echo '    HW_STYLE=$(HW_STYLE) make csynth'
	@echo '    make view_rpt'
	@echo '    make co-sim'
	@echo '    make clean'
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[MACC | SHIFT | ARRAY] make csynth'
	@echo
	@echo '    make emulation'
	@echo '    make ETRI050'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
#---------------------------------------------------------------
ETRI050: ETRI050_help
ETRI050_help:
	@echo 'Vitis-HLS Project: $(TOP_MODULE) (MPW)'
	@echo '  Targetting ETRI050 node,'
	@echo '  (1) Synthesize'
	@echo '        make synth_ETRI050'
	@echo '  (2) Netlist Simulation'
	@echo '        make sim_ETRI050'
	@echo '  (3) P&R, Generate layout'
	@echo '        make pnr_ETRI050'
	@echo '  (4) View GDS'
	@echo '        make layout_ETRI050'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
#---------------------------------------------------------------
synth_ETRI050:
	make -C ETRI050 synthesize

sim_ETRI050:
	make -C ETRI050 simulate
	
pnr_ETRI050:
	make -C ETRI050 place
	make -C ETRI050 route
	make -C ETRI050 migrate

layout_ETRI050:
	make -C ETRI050/layout mag2gds
	make -C ETRI050/layout klayout
#---------------------------------------------------------------
emulation: emulation_help
emulation_help:
	@echo 'Vitis-HLS Project: $(TOP_MODULE) (MPW)'
	@echo '  For Co-Emulation,'
	@echo '  (1) Build and Upload Modeling-Interface'
	@echo '        MI=$(MI) make build-mi'
	@echo '        MI=$(MI) make upload-mi'
	@echo '        make clean-mi'
	@echo "        * NOTE: module=[DUE_NORMAL|PI_PICO]"
	@echo '  (2a) Build and Config Transactor FPGA for Co-Emulation(Altera Cyclone-IV)'
	@echo '        make build-trans'
	@echo '        make config-trans'
	@echo '        make clean-trans'
	@echo '  (2b) Build and Config Transactor FPGA for MyChip Tester(Altera Cyclone-IV)'
	@echo '        make build-tester'
	@echo '        make config-tester'
	@echo '        make clean-tester'
	@echo '  (3) Build and Run Co-Emulator'
	@echo '        make co-emu'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
#---------------------------------------------------------------
build-mi:
	MODE=CA MI=$(MI) make -C ./emulation/PSCE-MI build

upload-mi:
	MODE=CA MI=$(MI) make -C ./emulation/PSCE-MI upload

clean-mi:
	MODE=CA make -C ./emulation/PSCE-MI clean
#---------------------------------------------------------------
build-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd build
	make -C ./emulation/PSCE-TRANS/Altera_Cmd gen_rbf

config-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd config

#---------------------------------------------------------------
build-tester:
	CONFIG=TESTER make -C ./emulation/PSCE-TRANS/Altera_Cmd build
	CONFIG=TESTER make -C ./emulation/PSCE-TRANS/Altera_Cmd gen_rbf

config-tester:
	CONFIG=TESTER make -C ./emulation/PSCE-TRANS/Altera_Cmd config

clean-tester:
	CONFIG=TESTER make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
#---------------------------------------------------------------
csynth: $(HLS_CSYN_PATH)/$(TOP_MODULE).v

$(HLS_CSYN_PATH)/$(TOP_MODULE).v: $(CPP_FILES) Vitis-HLS.tcl
	vitis-run --mode hls --tcl Vitis-HLS.tcl

view_rpt: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	less $(HLS_RPT_PATH)/$(TOP_MODULE)_csynth.rpt

co-sim: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	make -C simulation run

co-emu: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	make -C simulation clean
	make -C simulation build_emu
	make -C simulation run_emu
#---------------------------------------------------------------
clean:
	rm -f .gitignore
	rm -rf _ide
	rm -rf logs
	rm -rf $(TOP_MODULE)
	make -C simulation clean
	make -C ./ETRI050 clean
	make -C ./ETRI050/layout clean
	make -C ./ETRI050/layout clean_all
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
	MODE=CA make -C ./emulation/PSCE-MI clean
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
	CONFIG=TESTER make -C ./emulation/PSCE-TRANS/Altera_Cmd clean

