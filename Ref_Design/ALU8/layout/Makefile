# -----------------------------------------------------
export DK_HOME=~/ETRI050_DesignKit
export DK_STD_CELL=$(DK_HOME)/digital_ETRI
export DK_ANA_LIB=$(DK_HOME)/analog_ETRI
export DK_PAD_LIB=$(DK_HOME)/pads_ETRI050
export DK_TECH=$(DK_HOME)/tech
export DK_SCRIPT=$(DK_HOME)/scripts

TOP_MODULE = ALU_wrapper

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
	@echo '             clean'
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


clean :
	rm -f *.log
	rm -f *.ext
	rm -f DRC_$(TOP_MODULE)*.txt
	rm -f LVS_$(TOP_MODULE)*.txt
	rm -f *.spice
	rm -f $(TOP_MODULE)_DRC.mag
	rm -f $(TOP_MODULE)_LVS.mag
	rm -f $(TOP_MODULE)_Stacked.mag

