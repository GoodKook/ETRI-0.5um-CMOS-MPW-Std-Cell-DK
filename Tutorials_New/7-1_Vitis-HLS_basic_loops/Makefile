#-------------------------------------------------------------------------------
export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/Xilinx/2025.1/Vivado/bin:/opt/Xilinx/2025.1/Vitis/bin:$(PATH)

export TOP_MODULE := basic_loops
export CPP_FILES  := ./c_untimed/$(TOP_MODULE).cpp

HLS_CSYN_PATH = ./$(TOP_MODULE)/hls_component/syn/verilog
HLS_RPT_PATH  = ./$(TOP_MODULE)/hls_component/syn/report

all:
	@clear
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo
	@echo '    make csynth'
	@echo '    make view_rpt'
	@echo '    make co-sim'
	@echo '    make clean'
	@echo
	@echo '    make emulation'
	@echo '    make ETRI050'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

#---------------------------------------------------------------
ETRI050: ETRI050_help
ETRI050_help:
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
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
	make -C ETRI050
	make -C ETRI050 synthesize

sim_ETRI050:
	make -C ETRI050/simulation run
	
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
	make -C emulation clean
	make -C emulation build
	make -C emulation run
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

