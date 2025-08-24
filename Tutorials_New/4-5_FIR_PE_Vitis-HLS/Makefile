export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/Xilinx/2025.1/Vivado/bin:/opt/Xilinx/2025.1/Vitis/bin:$(PATH)

TOP_MODULE = fir_pe
CPP_FILES = ./source/fir_pe.cpp
HLS_CSYN_PATH = ./$(TOP_MODULE)/hls_component/syn/verilog
HLS_RPT_PATH  = ./$(TOP_MODULE)/hls_component/syn/report

all:
	@echo "Vitis-HLS Project: $(TOP_MODULE)"
	@echo "    make csynth"
	@echo "    make view_rpt"
	@echo "    make co-sim"
	@echo "    make clean"

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

