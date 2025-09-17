#-------------------------------------------------------------------------------
export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/Xilinx/2025.1/Vivado/bin:/opt/Xilinx/2025.1/Vitis/bin:$(PATH)

export TOP_MODULE := Clock
export CPP_FILES  := ./c_untimed/$(TOP_MODULE).cpp

HLS_CSYN_PATH = ./$(TOP_MODULE)/hls_component/syn/verilog
HLS_RPT_PATH  = ./$(TOP_MODULE)/hls_component/syn/report

# Export environmental variable for C-Synth & Simulation
ifeq ($(HW_STYLE), )
	export HW_STYLE=BIT_ACCURATE
	export TYPE=BIT_ACCURATE_SC
endif

#---------------------------------------------------------------
all:
	@clear
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo
	@echo '    HW_STYLE=[] make csynth'
	@echo '         csynth option: HW_STYLE=COMBINATIONAL|REGISTERED|[BIT_ACCURATE]'
	@echo '    make view_rpt'
	@echo '    make co-sim'
	@echo '    make wave'
	@echo '    make clean'
	@echo
	@echo '    make emulation'
	@echo '    make ETRI050'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
#---------------------------------------------------------------
csynth: $(HLS_CSYN_PATH)/$(TOP_MODULE).v

$(HLS_CSYN_PATH)/$(TOP_MODULE).v: $(CPP_FILES) Vitis-HLS.tcl
	vitis-run --mode hls --tcl Vitis-HLS.tcl

view_rpt: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	less $(HLS_RPT_PATH)/$(TOP_MODULE)_csynth.rpt

co-sim: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	VCD_TRACE=YES HW_STYLE=$(TYPE) make -C simulation run

wave: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	VCD_TRACE=YES HW_STYLE=$(TYPE) make -C simulation wave
#---------------------------------------------------------------
emulation: emulation_help
emulation_help:
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo '  For Co-Emulation,'
	@echo '  (1) Build and Upload Modeling-Interface(Arduino-DUE)'
	@echo '        MI=[module] make build-mi'
	@echo '        MI=[module] make upload-mi'
	@echo '        make clean-mi'
	@echo "        * NOTE: module=[DUE_NORMAL|PI_PICO]] "
	@echo '  (2) Build and Config Transactor FPGA(Altera Cyclone-IV)'
	@echo '        make build-trans'
	@echo '        make config-trans'
	@echo '        make clean-trans'
	@echo '  (3) Build and Run Co-Emulator'
	@echo '        make co-emu'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
#(1)------------------------------------------------------------
build-mi:
	MODE=CA MI=$(MI) make -C ./emulation/PSCE-MI build

upload-mi:
	MODE=CA MI=$(MI) make -C ./emulation/PSCE-MI upload

clean-mi:
	MODE=CA make -C ./emulation/PSCE-MI clean
#(2)------------------------------------------------------------
build-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd build
	make -C ./emulation/PSCE-TRANS/Altera_Cmd gen_rbf

config-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd config

clean-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
#(3)------------------------------------------------------------
co-emu: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	make -C emulation clean
	VCD_TRACE=YES HW_STYLE=$(TYPE) make -C emulation build
	VCD_TRACE=YES HW_STYLE=$(TYPE) make -C emulation run
#---------------------------------------------------------------
ETRI050: ETRI050_help
ETRI050_help:
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo '  Targetting ETRI050 node,'
	@echo '  (1) Synthesize'
	@echo '        make synth_ETRI050'
	@echo '        make wave_ETRI050'
	@echo '  (2) Netlist Simulation'
	@echo '        make sim_ETRI050'
	@echo '  (3) P&R, Generate layout'
	@echo '        make pnr_ETRI050'
	@echo '  (4) View GDS'
	@echo '        make layout_ETRI050'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

synth_ETRI050:
	make -C ETRI050
	make -C ETRI050 synthesize

sim_ETRI050:
	make -C ETRI050/simulation run
	
wave_ETRI050:
	make -C ETRI050/simulation wave

pnr_ETRI050:
	make -C ETRI050 place
	make -C ETRI050 route
	make -C ETRI050 migrate

layout_ETRI050:
	make -C ETRI050/layout mag2gds
	make -C ETRI050/layout klayout

#---------------------------------------------------------------
clean:
	rm -f .gitignore
	rm -rf _ide
	rm -rf logs
	rm -rf $(TOP_MODULE)
	make -C ./c_untimed clean
	make -C ./simulation clean
	make -C ./emulation clean
	MODE=CA make -C ./emulation/PSCE-MI clean
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
	make -C ./ETRI050 clean
	make -C ./ETRI050/simulation clean
	make -C ./ETRI050/layout clean
	make -C ./ETRI050/layout clean_all

