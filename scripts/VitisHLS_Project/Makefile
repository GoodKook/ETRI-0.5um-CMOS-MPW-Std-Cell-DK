SHELL=/bin/bash
#-------------------------------------------------------------------------------
export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/Xilinx/2025.1/Vivado/bin:/opt/Xilinx/2025.1/Vitis/bin:$(PATH)
#-------------------------------------------------------------------------------
export TOP_MODULE := $(TOP_MODULE)
#-------------------------------------------------------------------------------
PRJ_CONFIG_PATH=~/ETRI050_DesignKit/scripts/VitisHLS_Project
C_UNTIMED_PATH = ./c_untimed
HLS_CSYN_PATH = ./$(TOP_MODULE)/hls_component/syn/verilog
HLS_RPT_PATH  = ./$(TOP_MODULE)/hls_component/syn/report
CO-SIM_PATH = ./simulation
#-------------------------------------------------------------------------------
export CPP_FILES  := $(C_UNTIMED_PATH)/$(TOP_MODULE).cpp
# Export environmental variable for C-Synth & Simulation
ifeq ($(HW_STYLE), )
	export HW_STYLE=BIT_ACCURATE
	export TYPE=BIT_ACCURATE_SC
endif
#---------------------------------------------------------------
all:
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*******************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*******************************"; \
		exit 1; \
	fi
	@echo
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) HW_STYLE=$(HW_STYLE) make csim'
	@echo '    TOP_MODULE=$(TOP_MODULE) HW_STYLE=$(HW_STYLE) make csynth'
	@echo '    TOP_MODULE=$(TOP_MODULE) make view_rpt'
	@echo '    TOP_MODULE=$(TOP_MODULE) make co-sim'
	@echo '    TOP_MODULE=$(TOP_MODULE) make wave'
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
	@echo '    option for csim & csynth: HW_STYLE=COMBINATIONAL|REGISTERED|[BIT_ACCURATE]'
	@echo
	@echo '    make emulation'
	@echo '    make ETRI050'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
#---------------------------------------------------------------
csim: $(C_UNTIMED_PATH)/$(TOP_MODULE)_TB

$(C_UNTIMED_PATH)/$(TOP_MODULE)_TB : $(C_UNTIMED_PATH)/$(TOP_MODULE).cpp
	TOP_FUNCTION=$(TOP_MODULE) TYPE=$(HW_STYLE)_SC make -C $(C_UNTIMED_PATH) build
	TOP_FUNCTION=$(TOP_MODULE) make -C $(C_UNTIMED_PATH) run

$(C_UNTIMED_PATH)/$(TOP_MODULE).cpp :
	@if [ ! -d "$(C_UNTIMED_PATH)" ];  then \
		echo "Create C-Untimed directory......"; \
		mkdir $(C_UNTIMED_PATH); \
		echo "Copy un-timed model template ......"; \
		sed "s/TOP_FUNCTION/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/c_untimed/TOP_FUNCTION.cpp > \
			$(C_UNTIMED_PATH)/$(TOP_MODULE).cpp; \
		echo "Copy un-timed model testbench ......"; \
		sed "s/TOP_FUNCTION/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/c_untimed/TOP_FUNCTION_TB.cpp > \
			$(C_UNTIMED_PATH)/$(TOP_MODULE)_TB.cpp; \
		echo "Copy un-timed model Makefile ......"; \
		cp $(PRJ_CONFIG_PATH)/c_untimed/Makefile $(C_UNTIMED_PATH); \
	fi
#---------------------------------------------------------------
csynth: $(HLS_CSYN_PATH)/$(TOP_MODULE).v

$(HLS_CSYN_PATH)/$(TOP_MODULE).v: $(CPP_FILES) Vitis-HLS.tcl
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*******************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*******************************"; \
		exit 1; \
	fi
	vitis-run --mode hls --tcl Vitis-HLS.tcl

Vitis-HLS.tcl:
	cp $(PRJ_CONFIG_PATH)/Vitis-HLS.tcl .

view_rpt: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	less $(HLS_RPT_PATH)/$(TOP_MODULE)_csynth.rpt
#---------------------------------------------------------------
co-sim: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	@if [ ! -d "$(CO-SIM_PATH)" ];  then \
		echo "Create Co-Simulation directory......"; \
		mkdir $(CO-SIM_PATH); \
		echo "Copy Co-Sim SystemC TB template ......"; \
		sed "s/TOP_FUNCTION/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/simulation/sc_TOP_FUNCTION_TB.cpp > \
			$(CO-SIM_PATH)/sc_$(TOP_MODULE)_TB.cpp; \
		sed "s/TOP_FUNCTION/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/simulation/sc_TOP_FUNCTION_TB.h > \
			$(CO-SIM_PATH)/sc_$(TOP_MODULE)_TB.h; \
		sed "s/TOP_FUNCTION/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/simulation/sc_main.cpp > \
			$(CO-SIM_PATH)/sc_main.cpp; \
		echo "Copy un-timed model Makefile ......"; \
		cp $(PRJ_CONFIG_PATH)/simulation/Makefile $(CO-SIM_PATH); \
	fi
	TOP_FUNCTION=$(TOP_MODULE) HW_STYLE=$(TYPE) make -C simulation build
	TOP_FUNCTION=$(TOP_MODULE) make -C simulation run

wave: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	TOP_FUNCTION=$(TOP_MODULE) make -C $(CO-SIM_PATH) wave
#---------------------------------------------------------------
clean:
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	rm -f .gitignore
	rm -rf _ide
	rm -rf logs
	rm -rf $(TOP_MODULE)
	TOP_FUNCTION=$(TOP_MODULE) make -C $(C_UNTIMED_PATH) clean
	TOP_FUNCTION=$(TOP_MODULE) make -C $(CO-SIM_PATH) clean
#---------------------------------------------------------------
#  EMULATION MENU
#---------------------------------------------------------------
CO-EMU_PATH = ./emulation
PSCE-MI_PATH = $(CO-EMU_PATH)/PSCE-MI
PSCE-TRANS_PATH = $(CO-EMU_PATH)/PSCE-TRANS
emulation: emulation_help
emulation_help:
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -n "$(MI)" ];  then \
		echo "*****************************************"; \
		echo "!!! MI=DUE_NORMAL|PI_PICO not defined !!!"; \
		echo "*****************************************"; \
		exit 1; \
	fi
	@if [ ! -n "$(MODE)" ];  then \
		echo "*********************************"; \
		echo "!!! MODE=CA|SA|TL not defined !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -d "$(CO-EMU_PATH)" ];  then \
		echo "Create Co-Emulation directory......"; \
		mkdir $(CO-EMU_PATH); \
	fi
	@echo
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo '  For Co-Emulation,'
	@echo '  (1) Build and Upload Modeling-Interface(Arduino-DUE)'
	@echo '        TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make build-mi'
	@echo '        TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make upload-mi'
	@echo '        TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make clean-mi'
	@echo '  (2) Build and Config Transactor FPGA(Altera Cyclone-IV)'
	@echo '        TOP_MODULE=$(TOP_MODULE) make build-trans'
	@echo '        TOP_MODULE=$(TOP_MODULE) make config-trans'
	@echo '        TOP_MODULE=$(TOP_MODULE) make clean-trans'
	@echo '  (3) Build and Run Co-Emulator'
	@echo '        TOP_MODULE=$(TOP_MODULE) make co-emu'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
#(1)------------------------------------------------------------
build-mi:
	@if [ ! -d "$(PSCE-MI_PATH)" ];  then \
		echo "Create Co-Emulation MI directory......"; \
		mkdir $(PSCE-MI_PATH); \
		mkdir $(PSCE-MI_PATH)/E$(TOP_MODULE)_$(MODE); \
		echo "Copy Co-Emulation MI (PSCE-API) ......"; \
		cp $(PRJ_CONFIG_PATH)/emulation/PSCE-MI/ETOP_MODULE_MODE/*.h $(PSCE-MI_PATH)/E$(TOP_MODULE)_$(MODE); \
		cp $(PRJ_CONFIG_PATH)/emulation/PSCE-MI/ETOP_MODULE_MODE/*.cpp $(PSCE-MI_PATH)/E$(TOP_MODULE)_$(MODE); \
		cp $(PRJ_CONFIG_PATH)/emulation/PSCE-MI/ETOP_MODULE_MODE/ETOP_MODULE_MODE.ino \
								$(PSCE-MI_PATH)/E$(TOP_MODULE)_$(MODE)//E$(TOP_MODULE)_$(MODE).ino; \
		cp $(PRJ_CONFIG_PATH)/emulation/PSCE-MI/Makefile $(PSCE-MI_PATH); \
	fi
	TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make -C $(PSCE-MI_PATH) build

upload-mi:
	MODE=$(MODE) MI=$(MI) make -C ./emulation/PSCE-MI upload

clean-mi:
	MODE=$(MODE) make -C ./emulation/PSCE-MI clean
#(2)------------------------------------------------------------
build-trans:
	@if [ ! -d "$(PSCE-TRANS_PATH)" ];  then \
		echo "Create Co-Emulation MI directory......"; \
		mkdir $(PSCE-TRANS_PATH); \
		mkdir $(PSCE-TRANS_PATH)/Altera_Cmd; \
		echo "Copy Co-Emulation Transactor ......"; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/emulation/TOP_MODULE_wrapper.v > \
			$(CO-EMU_PATH)/$(TOP_MODULE)_wrapper.v; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/emulation/PSCE-TRANS/Altera_Cmd/TOP_MODULE_wrapper.tcl > \
			$(PSCE-TRANS_PATH)/Altera_Cmd/$(TOP_MODULE)_wrapper.tcl; \
		cp $(PRJ_CONFIG_PATH)/emulation/PSCE-TRANS/Altera_Cmd/Makefile $(PSCE-TRANS_PATH)/Altera_Cmd; \
	fi
	TOP_MODULE=$(TOP_MODULE) make -C $(PSCE-TRANS_PATH)/Altera_Cmd build
	TOP_MODULE=$(TOP_MODULE) make -C $(PSCE-TRANS_PATH)/Altera_Cmd gen_rbf

config-trans:
	TOP_MODULE=$(TOP_MODULE) make -C ./emulation/PSCE-TRANS/Altera_Cmd config

clean-trans:
	TOP_MODULE=$(TOP_MODULE) make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
#(3)------------------------------------------------------------
co-emu: $(HLS_CSYN_PATH)/$(TOP_MODULE).v
	@if [ ! -f "$(CO-EMU_PATH)/Makefile" ];  then \
		cp $(PRJ_CONFIG_PATH)/emulation/Makefile $(CO-EMU_PATH); \
	fi
	@if [ ! -f "$(CO-EMU_PATH)/E$(TOP_MODULE).h" ];  then \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/emulation/ETOP_MODULE.h > \
			$(CO-EMU_PATH)/E$(TOP_MODULE).h; \
	fi
	make -C $(CO-EMU_PATH) clean
	VCD_TRACE=YES HW_STYLE=$(TYPE) make -C emulation build
#	VCD_TRACE=YES HW_STYLE=$(TYPE) make -C emulation run
#---------------------------------------------------------------
ETRI050_PATH = ./ETRI050
ETRI050: ETRI050_help
ETRI050_help:
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -d "$(ETRI050_PATH)" ];  then \
		echo "Create ETRI050 directory......"; \
		mkdir $(ETRI050_PATH); \
		cp $(PRJ_CONFIG_PATH)/ETRI050/Makefile $(ETRI050_PATH); \
		cp $(PRJ_CONFIG_PATH)/ETRI050/project_vars.sh $(ETRI050_PATH); \
	fi
	@if [ ! -d "$(ETRI050_PATH)/chip_top" ];  then \
		echo "Create ETRI050/chip_top directory......"; \
		mkdir $(ETRI050_PATH)/chip_top; \
		cp $(PRJ_CONFIG_PATH)/ETRI050/chip_top/* $(ETRI050_PATH)/chip_top; \
		cp $(PRJ_CONFIG_PATH)/ETRI050/chip_top/.magicrc $(ETRI050_PATH)/chip_top; \
	fi
	@if [ ! -d "$(ETRI050_PATH)/layout" ];  then \
		echo "Create ETRI050/layout directory......"; \
		mkdir $(ETRI050_PATH)/layout; \
		cp $(PRJ_CONFIG_PATH)/ETRI050/layout/Makefile $(ETRI050_PATH)/layout; \
		cp $(PRJ_CONFIG_PATH)/ETRI050/layout/ETRI050_CMOS.lyp $(ETRI050_PATH)/layout; \
		cp $(PRJ_CONFIG_PATH)/ETRI050/layout/TOP_MODULE.cel2 $(ETRI050_PATH)/layout/$(TOP_MODULE).cel2; \
		cp $(PRJ_CONFIG_PATH)/ETRI050/layout/TOP_MODULE.par $(ETRI050_PATH)/layout/$(TOP_MODULE).par; \
		cp $(PRJ_CONFIG_PATH)/ETRI050/layout/.magicrc $(ETRI050_PATH)/layout; \
	fi
	@if [ ! -d "$(ETRI050_PATH)/log" ];  then \
		echo "Create ETRI050/log directory......"; \
		mkdir $(ETRI050_PATH)/log; \
	fi
	@if [ ! -d "$(ETRI050_PATH)/simulation" ];  then \
		echo "Create ETRI050/simulation directory......"; \
		mkdir $(ETRI050_PATH)/simulation; \
		cp $(PRJ_CONFIG_PATH)/ETRI050/simulation/Makefile $(ETRI050_PATH)/simulation; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/ETRI050/simulation/sc_TOP_MODULE_TB.cpp > \
			$(ETRI050_PATH)/simulation/sc_$(TOP_MODULE)_TB.cpp; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/ETRI050/simulation/sc_TOP_MODULE_TB.h > \
			$(ETRI050_PATH)/simulation/sc_$(TOP_MODULE)_TB.h; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/ETRI050/simulation/TOP_MODULE_TB.v > \
			$(ETRI050_PATH)/simulation/$(TOP_MODULE)_TB.v; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/ETRI050/simulation/vpi_stub.cpp > \
			$(ETRI050_PATH)/simulation/vpi_stub.cpp; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/ETRI050/simulation/vpi_TOP_MODULE_tb.cpp > \
			$(ETRI050_PATH)/simulation/vpi_$(TOP_MODULE)_tb.cpp; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/ETRI050/simulation/vpi_TOP_MODULE_tb_exports.h > \
			$(ETRI050_PATH)/simulation/vpi_$(TOP_MODULE)_tb_exports.h; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/ETRI050/simulation/vpi_TOP_MODULE_tb_ports.h > \
			$(ETRI050_PATH)/simulation/vpi_$(TOP_MODULE)_tb_ports.h; \
	fi
	@if [ ! -d "$(ETRI050_PATH)/source" ];  then \
		echo "Create ETRI050/source directory......"; \
		mkdir $(ETRI050_PATH)/source; \
		cp $(HLS_CSYN_PATH)/$(TOP_MODULE).v $(ETRI050_PATH)/source; \
	fi
	@if [ ! -d "$(ETRI050_PATH)/synthesis" ];  then \
		echo "Create ETRI050/synthesis directory......"; \
		mkdir $(ETRI050_PATH)/synthesis; \
	fi
	@echo
	@echo 'Vitis-HLS Project: $(TOP_MODULE)'
	@echo '  Targetting ETRI050 node,'
	@echo '  (1) Synthesize'
	@echo '        TOP_MODULE=$(TOP_MODULE) make synth_ETRI050'
	@echo '  (2) Netlist Simulation'
	@echo '        TOP_MODULE=$(TOP_MODULE) make sim_ETRI050'
	@echo '        TOP_MODULE=$(TOP_MODULE) make wave_ETRI050'
	@echo '  (3) P&R, Generate layout'
	@echo '        TOP_MODULE=$(TOP_MODULE) make pnr_ETRI050'
	@echo '  (4) View GDS'
	@echo '        TOP_MODULE=$(TOP_MODULE) make layout_ETRI050'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
#---------------------------------------------------------------
synth_ETRI050:
	TOP_MODULE=$(TOP_MODULE) make -C ETRI050 synthesize

sim_ETRI050:
	TOP_MODULE=$(TOP_MODULE) make -C ETRI050/simulation run
	
wave_ETRI050:
	TOP_MODULE=$(TOP_MODULE) make -C ETRI050/simulation wave

pnr_ETRI050:
	TOP_MODULE=$(TOP_MODULE) make -C ETRI050 place
	TOP_MODULE=$(TOP_MODULE) make -C ETRI050 route
	TOP_MODULE=$(TOP_MODULE) make -C ETRI050 migrate

layout_ETRI050:
	TOP_MODULE=$(TOP_MODULE) make -C ETRI050/layout mag2gds
	TOP_MODULE=$(TOP_MODULE) make -C ETRI050/layout klayout

#---------------------------------------------------------------
_clean:
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	rm -f .gitignore
	rm -rf _ide
	rm -rf logs
	rm -rf $(TOP_MODULE)
	TOP_FUNCTION=$(TOP_MODULE) make -C $(C_UNTIMED_PATH) clean
	make -C ./simulation clean
	make -C ./emulation clean
	MODE=CA make -C ./emulation/PSCE-MI clean
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
	make -C ./ETRI050 clean
	make -C ./ETRI050/simulation clean
	make -C ./ETRI050/layout clean
	make -C ./ETRI050/layout clean_all

