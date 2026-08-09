# -----------------------------------------------------
export DK_HOME=~/ETRI050_DesignKit
export DK_STD_CELL=$(DK_HOME)/digital_ETRI
export DK_ANA_LIB=$(DK_HOME)/analog_ETRI
export DK_PAD_LIB=$(DK_HOME)/pads_ETRI050
export DK_TECH=$(DK_HOME)/tech
export DK_SCRIPT=$(DK_HOME)/scripts

TOP_MODULE = pong_pt1

all :
	@echo ''
	@echo 'Makefile for "'$(TOP_MODULE)'" Layout'
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following options'
	@echo '             stack'
	@echo '             drc'
	@echo '             lvs'
	@echo '             Core'
	@echo ''
	@echo '             mag2gds'
	@echo '             klayout'
	@echo '             magic'
	@echo ''
	@echo '             clean'
	@echo '             clean_all'
	@echo ''

# -----------------------------------------------------
stack: $(TOP_MODULE)_Stacked.log

$(TOP_MODULE)_Stacked.log: $(TOP_MODULE).mag
	$(DK_SCRIPT)/check_via_stack.py $(TOP_MODULE) m2contact m3contact 6 | \
		tee $(TOP_MODULE)_Stacked.log

drc: $(TOP_MODULE)_DRC.log

$(TOP_MODULE)_DRC.log: $(TOP_MODULE).mag
	$(DK_SCRIPT)/run_drc.sh $(TOP_MODULE) | tee $(TOP_MODULE)_DRC.log

lvs: $(TOP_MODULE)_LVS.log

$(TOP_MODULE)_LVS.log: $(TOP_MODULE).mag
	$(DK_SCRIPT)/run_lvs.sh $(TOP_MODULE) | tee $(TOP_MODULE)_LVS.log

Core: $(TOP_MODULE)_Core_DRC.log $(TOP_MODULE)_Core_LVS.log $(TOP_MODULE)_Core_Stacked.log

$(TOP_MODULE)_Core_DRC.log: $(TOP_MODULE)_Core.mag
	$(DK_SCRIPT)/run_drc.sh $(TOP_MODULE)_Core | tee $(TOP_MODULE)_Core_DRC.log

$(TOP_MODULE)_Core_LVS.log: $(TOP_MODULE)_Core.mag
	$(DK_SCRIPT)/run_lvs2.sh $(TOP_MODULE)_Core $(TOP_MODULE) | tee $(TOP_MODULE)_Core_LVS.log

$(TOP_MODULE)_Core_Stacked.log: $(TOP_MODULE)_Core.mag
	$(DK_SCRIPT)/check_via_stack.py $(TOP_MODULE)_Core m2contact m3contact 6 | \
		tee $(TOP_MODULE)_Core_Stacked.log

mag2gds: $(TOP_MODULE)_F.mag

$(TOP_MODULE)_F.mag : $(TOP_MODULE).mag
	$(DK_SCRIPT)/mag2gds.sh $(TOP_MODULE)

$(TOP_MODULE)_F.gds : $(TOP_MODULE).mag
	$(DK_SCRIPT)/mag2gds.sh $(TOP_MODULE)

klayout: $(TOP_MODULE)_F.gds
	klayout $(TOP_MODULE)_F.gds -l ETRI050_CMOS.lyp

magic: $(TOP_MODULE)_F.mag
	magic -d XR $(TOP_MODULE)_F.mag

clean :
	@echo "This project was submitted to My Chip MPW 2025-2"
	@echo "Cleaning Disabled!"
clean_all :
	@echo "This project was submitted to My Chip MPW 2025-2"
	@echo "Cleaning Disabled!"


