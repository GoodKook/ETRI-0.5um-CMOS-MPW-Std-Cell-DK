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
#---------------------------------------------------------------
all:
	@clear
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo
	@echo '    [1] make csynth,   C-Synthesis(Vitis-HLS)'
	@echo '    [2] make view_rpt, View C-Synthesis report'
	@echo '    [3] make co-sim,   Co-Simulation(Verilated RTL & SystemC TB)'
	@echo '    [4] make clean,    Clean ALL working directory'
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[MACC | SHIFT | ARRAY] make csynth'
	@echo
	@echo '    [5] make emulation, Sub-menu: Building Co-Emulator'
	@echo '    [6] make ETRI050,   Sub-menu: Targetting ETRI050 node'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
	@echo -n "Select? [1...6]: " && read ans && \
	if   [ $${ans:-0} = 1 ]; then make csynth; \
	elif [ $${ans:-0} = 2 ]; then make view_rpt; \
	elif [ $${ans:-0} = 3 ]; then make co-sim; \
	elif [ $${ans:-0} = 4 ]; then make clean; \
	elif [ $${ans:-0} = 5 ]; then make emulation; \
	elif [ $${ans:-0} = 6 ]; then make ETRI050; \
	else echo "Aborting..."; \
	fi

csynth: $(HLS_CSYN_PATH)/$(TOP_MODULE).v

$(HLS_CSYN_PATH)/$(TOP_MODULE).v: $(CPP_FILES) Vitis-HLS.tcl
	vitis-run --mode hls --tcl Vitis-HLS.tcl

view_rpt: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	less $(HLS_RPT_PATH)/$(TOP_MODULE)_csynth.rpt

co-sim: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	make -C simulation run

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
	MODE=SA make -C ./emulation/PSCE-MI/Arduino clean
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
#---------------------------------------------------------------
ETRI050: ETRI050_help
ETRI050_help:
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo '  Targetting ETRI050 node,'
	@echo '  [1] make synth_ETRI050,  Synthesize'
	@echo '  [2] make sim_ETRI050,    Netlist Simulation (iVerilog-VPI & SystemC-TB)'
	@echo '  [3] make pnr_ETRI050,    Place & Route, Generate layout'
	@echo '  [4] make layout_ETRI050, View GDS (KLayout))'
	@echo '  [5] make clean,          Cleaning'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
	@echo -n "Select? [1...5]: " && read ans && \
	if   [ $${ans:-0} = 1 ]; then make synth_ETRI050; \
	elif [ $${ans:-0} = 2 ]; then make sim_ETRI050; \
	elif [ $${ans:-0} = 3 ]; then make pnr_ETRI050; \
	elif [ $${ans:-0} = 4 ]; then make layout_ETRI050; \
	elif [ $${ans:-0} = 5 ]; then make clean_ETRI050; \
	else echo "Aborting..."; \
	fi

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

clean_ETRI050:
	make -C ETRI050 clean
#---------------------------------------------------------------
emulation: emulation_help
emulation_help:
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo '  For Building Co-Emulator,'
	@echo '  (1) Build and Upload Modeling-Interface'
	@echo '      [1] MI=DUE_NORMAL MODE=CA make build-mi/upload-mi'
	@echo '      [2] MI=DUE_NORMAL MODE=SA make build-mi/upload-mi'
	@echo '      [3] MI=PI_PICO    MODE=CA make build-mi/upload-mi'
	@echo '      [4] MI=PI_PICO    MODE=SA make build-mi/upload-mi'
	@echo '  (2) Build and Config Transactor FPGA(Altera Cyclone-IV)'
	@echo '      [5] make build-trans/config-trans'
	@echo '  (3) Build Co-Emulator'
	@echo '      [6] make co-emu, Co-Emulation(FPGA & SystemC TB)'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
	@echo -n "Select? [1...6]: " && read ans && \
	if   [ $${ans:-0} = 1 ]; then \
		MI=DUE_NORMAL MODE=CA make build-mi; \
		MI=DUE_NORMAL MODE=CA make upload-mi; \
	elif [ $${ans:-0} = 2 ]; then \
		MI=DUE_NORMAL MODE=SA make build-mi; \
		MI=DUE_NORMAL MODE=SA make upload-mi; \
	elif [ $${ans:-0} = 3 ]; then \
		MI=PI_PICO MODE=CA make build-mi; \
		MI=PI_PICO MODE=CA make upload-mi; \
	elif [ $${ans:-0} = 4 ]; then \
		MI=PI_PICO MODE=SA make build-mi; \
		MI=PI_PICO MODE=SA make upload-mi; \
	elif [ $${ans:-0} = 5 ]; then \
		make build-trans; \
		make config-trans; \
	elif [ $${ans:-0} = 6 ]; then \
		make co-emu; \
	else echo "Aborting..."; \
	fi

build-mi:
	MODE=$(MODE) MI=$(MI) make -C ./emulation/PSCE-MI/Arduino build

upload-mi:
	MODE=$(MODE) MI=$(MI) make -C ./emulation/PSCE-MI/Arduino upload

clean-mi:
	MODE=$(MODE) make -C ./emulation/PSCE-MI/Arduino clean

build-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd build
	make -C ./emulation/PSCE-TRANS/Altera_Cmd gen_rbf

config-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd config

clean-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean

co-emu: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	make -C simulation clean
	make -C simulation build_emu
	make -C simulation run

