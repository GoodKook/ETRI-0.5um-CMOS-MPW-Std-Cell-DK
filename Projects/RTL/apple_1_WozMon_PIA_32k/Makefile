SHELL=/bin/bash
#-------------------------------------------------------------------------------
export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/Xilinx/2025.1/Vivado/bin:/opt/Xilinx/2025.1/Vitis/bin:$(PATH)
#-------------------------------------------------------------------------------
export TOP_MODULE := $(TOP_MODULE)
#-------------------------------------------------------------------------------
PRJ_CONFIG_PATH=~/ETRI050_DesignKit/scripts/RTL_Project
C_UNTIMED_PATH = ./c_untimed
RTL_PATH = ./$(TOP_MODULE)
CO-SIM_PATH = ./simulation
#-------------------------------------------------------------------------------
export CPP_FILES  := $(C_UNTIMED_PATH)/$(TOP_MODULE).cpp
# Export environmental variable for C-Synth & Simulation
#ifeq ($(HW_STYLE), )
#	export HW_STYLE=BIT_ACCURATE
#endif
#---------------------------------------------------------------
all:
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*******************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*******************************"; \
		exit 1; \
	fi
	@if [ ! -n "$(HW_STYLE)" ];  then \
		echo "****************************"; \
		echo "!!! HW_STYLE not defined !!!"; \
		echo "****************************"; \
		exit 1; \
	fi
	@echo
	@echo 'RTL Project: $(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) VCD_TRACE=YES|[NO] make co-sim'
	@echo '    TOP_MODULE=$(TOP_MODULE) make wave'
	@echo
	@echo '    make emulation'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo
#---------------------------------------------------------------
co-sim: $(RTL_PATH)/$(TOP_MODULE).v
	@if [ ! -d "$(CO-SIM_PATH)" ];  then \
		echo "Create Co-Simulation directory......"; \
		mkdir $(CO-SIM_PATH); \
		echo "Copy Co-Sim SystemC TB template ......"; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/simulation/sc_TOP_MODULE_TB.cpp > \
			$(CO-SIM_PATH)/sc_$(TOP_MODULE)_TB.cpp; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/simulation/sc_TOP_MODULE_TB.h > \
			$(CO-SIM_PATH)/sc_$(TOP_MODULE)_TB.h; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/simulation/sc_main.cpp > \
			$(CO-SIM_PATH)/sc_main.cpp; \
		cp $(PRJ_CONFIG_PATH)/simulation/sc_plotDFT.py $(CO-SIM_PATH); \
		echo "Copy un-timed model Makefile ......"; \
		cp $(PRJ_CONFIG_PATH)/simulation/Makefile $(CO-SIM_PATH); \
	fi
	TOP_MODULE=$(TOP_MODULE) HW_STYLE=$(HW_STYLE) make -C simulation
	TOP_MODULE=$(TOP_MODULE) HW_STYLE=$(HW_STYLE) make -C simulation build
	TOP_MODULE=$(TOP_MODULE) HW_STYLE=$(HW_STYLE) make -C simulation run

$(RTL_PATH)/$(TOP_MODULE).v:
	@if [ ! -d "$(RTL_PATH)" ];  then \
		echo "Create RTL directory......"; \
		mkdir $(RTL_PATH); \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/TOP_MODULE/TOP_MODULE.v > \
			$(RTL_PATH)/$(TOP_MODULE).v; \
	fi

wave: $(RTL_PATH)/$(TOP_MODULE).v
	TOP_MODULE=$(TOP_MODULE) make -C $(CO-SIM_PATH) wave
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
	@if [ ! -f "$(CO-EMU_PATH)/Makefile" ];  then \
		cp $(PRJ_CONFIG_PATH)/emulation/Makefile $(CO-EMU_PATH); \
	fi
	@if [ ! -f "$(CO-EMU_PATH)/Makefile.mk" ];  then \
		cp $(PRJ_CONFIG_PATH)/emulation/Makefile.mk $(CO-EMU_PATH); \
	fi
	@if [ ! -f "$(CO-EMU_PATH)/E$(TOP_MODULE).h" ];  then \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/emulation/ETOP_MODULE.h > \
			$(CO-EMU_PATH)/E$(TOP_MODULE).h; \
	fi
	@echo
	@echo 'RTL Project: $(TOP_MODULE)'
	@echo '  For Co-Emulation,'
	@echo '  (1) Build and Upload Modeling-Interface'
	@echo '        TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make build-mi'
	@echo '        TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make upload-mi'
	@echo '  (2) Build and Config Transactor FPGA(Altera Cyclone-IV)'
	@echo '        TOP_MODULE=$(TOP_MODULE) BOARD=[I]|II make build-trans'
	@echo '        TOP_MODULE=$(TOP_MODULE) BOARD=[I]|II make config-trans'
	@echo '  (3) Build and Run Co-Emulator'
	@echo '        TOP_MODULE=$(TOP_MODULE) make co-emu'
	@echo '      For SA mode,'
	@echo '        make run_sa'
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
								$(PSCE-MI_PATH)/E$(TOP_MODULE)_$(MODE)/E$(TOP_MODULE)_$(MODE).ino; \
		cp $(PRJ_CONFIG_PATH)/emulation/PSCE-MI/Makefile $(PSCE-MI_PATH); \
	fi
	TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make -C $(PSCE-MI_PATH)
	TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make -C $(PSCE-MI_PATH) build

upload-mi:
	MODE=$(MODE) MI=$(MI) make -C ./emulation/PSCE-MI upload
#(2)------------------------------------------------------------
build-trans:
	@if [ ! -d "$(PSCE-TRANS_PATH)" ];  then \
		echo "Create Co-Emulation MI directory......"; \
		mkdir $(PSCE-TRANS_PATH); \
		mkdir $(PSCE-TRANS_PATH)/Altera_Cmd; \
		echo "Copy Co-Emulation Transactor ......"; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/emulation/TOP_MODULE_wrapper.v > \
			$(CO-EMU_PATH)/$(TOP_MODULE)_wrapper.v; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/emulation/TOP_MODULE_tester.v > \
			$(CO-EMU_PATH)/$(TOP_MODULE)_tester.v; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/emulation/PSCE-TRANS/Altera_Cmd/TOP_MODULE_wrapper.tcl > \
			$(PSCE-TRANS_PATH)/Altera_Cmd/$(TOP_MODULE)_wrapper.tcl; \
		sed "s/TOP_MODULE/${TOP_MODULE}/g" $(PRJ_CONFIG_PATH)/emulation/PSCE-TRANS/Altera_Cmd/TOP_MODULE_tester.tcl > \
			$(PSCE-TRANS_PATH)/Altera_Cmd/$(TOP_MODULE)_tester.tcl; \
		cp $(PRJ_CONFIG_PATH)/emulation/PSCE-TRANS/Altera_Cmd/Makefile $(PSCE-TRANS_PATH)/Altera_Cmd; \
	fi
	TOP_MODULE=$(TOP_MODULE) make -C $(PSCE-TRANS_PATH)/Altera_Cmd
	TOP_MODULE=$(TOP_MODULE) make -C $(PSCE-TRANS_PATH)/Altera_Cmd build
	TOP_MODULE=$(TOP_MODULE) make -C $(PSCE-TRANS_PATH)/Altera_Cmd gen_rbf

config-trans:
	TOP_MODULE=$(TOP_MODULE) make -C ./emulation/PSCE-TRANS/Altera_Cmd config
#(3)------------------------------------------------------------
co-emu:
	make -C $(CO-EMU_PATH) clean
	VCD_TRACE=YES HW_STYLE=$(HW_STYLE) make -C emulation
	VCD_TRACE=YES HW_STYLE=$(HW_STYLE) make -C emulation build
	VCD_TRACE=YES HW_STYLE=$(HW_STYLE) make -C emulation run
run_sa:
	make -C $(CO-EMU_PATH) run_sa

#---------------------------------------------------------------
_clean:
	make -C ./simulation clean
	make -C ./emulation clean
	MODE=CA make -C ./emulation/PSCE-MI clean
	MODE=SA make -C ./emulation/PSCE-MI clean
	BOARD=I make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
	BOARD=II make -C ./emulation/PSCE-TRANS/Altera_Cmd clean
