export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/Xilinx/Vivado/2024.2/bin/:/opt/Xilinx/Vitis_HLS/2024.2/bin:/opt/Xilinx/Vitis/2024.2/bin/:/opt/Xilinx/DocNav:$(PATH)

TOP_MODULE = fir
CPP_FILES = ../2-5_Lab3_FIR8/c_untimed/fir8.cpp
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
	@echo "Vitis-HLS Project: $(TOP_MODULE)"
	@echo "    make csynth"
	@echo "    make view_rpt"
	@echo "    make co-sim"
	@echo "    make co-emu"
	@echo "    make clean"
	@echo
	@echo '    * command-line variable HW_STYLE must be set before build'
	@echo '      HW_STYLE=[MACC | SHIFT | ARRAY] make csynth'
	@echo

csynth: $(HLS_CSYN_PATH)/$(TOP_MODULE).v

$(HLS_CSYN_PATH)/$(TOP_MODULE).v: $(CPP_FILES) Vitis-HLS.tcl
	vitis-run --mode hls --tcl Vitis-HLS.tcl

view_rpt: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	less $(HLS_RPT_PATH)/$(TOP_MODULE)_csynth.rpt

co-sim: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	make -C simulation run

co-emu: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	make -C simulation build_emu
	make -C simulation run

clean:
	rm -f .gitignore
	rm -rf _ide
	rm -rf logs
	rm -rf $(TOP_MODULE)
	make -C simulation clean

