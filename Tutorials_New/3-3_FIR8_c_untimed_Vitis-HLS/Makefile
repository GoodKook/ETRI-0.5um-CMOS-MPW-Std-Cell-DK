#-------------------------------------------------------------------------------
export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/Xilinx/2025.1/Vivado/bin:/opt/Xilinx/2025.1/Vitis/bin:$(PATH)

TOP_MODULE = fir
export CPP_FILES := ../3-1_FIR8/c_untimed/fir8.cpp
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
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo
	@echo '    make csynth'
	@echo '    make view_rpt'
	@echo '    make co-sim'
	@echo '    make clean'
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[MACC | SHIFT | ARRAY] make csynth'
	@echo
	@echo 'For Co-Emulation,'
	@echo '  (1) Build and Upload Modeling-Interface(Arduino-DUE)'
	@echo '        make build-mi'
	@echo '        make upload-mi'
	@echo '        make clean-mi'
	@echo '  (2) Build and Config Transactor FPGA(Altera Cyclone-IV)'
	@echo '        make build-trans'
	@echo '        make config-trans'
	@echo '        make clean-trans'
	@echo '  (3) Build and Run Co-Emulator'
	@echo '        make co-emu'
	@echo
	@echo 'Targetting ETRI050 node,'
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
build-mi:
	MODE=CA make -C ./emulation/PSCE-MI/Arduino build

upload-mi:
	MODE=CA make -C ./emulation/PSCE-MI/Arduino upload

clean-mi:
	MODE=CA make -C ./emulation/PSCE-MI/Arduino clean
#---------------------------------------------------------------
build-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd build
	make -C ./emulation/PSCE-TRANS/Altera_Cmd gen_rbf

config-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd config

clean-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
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
	make -C simulation run
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
	MODE=CA make -C ./emulation/PSCE-MI/Arduino clean
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean

