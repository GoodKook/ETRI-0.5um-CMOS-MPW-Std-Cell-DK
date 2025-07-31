# -----------------------------------------------------
export DK_HOME=~/ETRI050_DesignKit
export DK_STD_CELL=$(DK_HOME)/digital_ETRI
export DK_ANA_LIB=$(DK_HOME)/analog_ETRI
export DK_PAD_LIB=$(DK_HOME)/pads_ETRI
export DK_TECH=$(DK_HOME)/tech
export DK_SCRIPT=$(DK_HOME)/scripts

ifeq ($(TOP), fir8)
	TOP_MODULE=fir8
else ifeq ($(TOP), fir_pe)
	TOP_MODULE=fir_pe
else
	TOP_MODULE=fir8
endif

all :
	@echo ''
	@echo 'Makefile for "'$(TOP_MODULE)'" Layout'
	@echo 'Usage:'
	@echo '    TOP=fir8|fir_pe  make [option]'
	@echo '         Use one of following options'
	@echo '             stack'
	@echo '             drc'
	@echo '             lvs'
#	@echo '             Core'
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
	rm -f *.log
	rm -f *.ext
	rm -f DRC_$(TOP_MODULE)*.txt
	rm -f LVS_$(TOP_MODULE)*.txt
	rm -f *.spice
	rm -f $(TOP_MODULE)_DRC.mag
	rm -f $(TOP_MODULE)_LVS.mag
	rm -f $(TOP_MODULE)_Stacked.mag

clean_all :
	rm -f comp.json
	rm -f comp.out
	rm -f fillcells.txt
	rm -f $(TOP_MODULE).cel
	rm -f $(TOP_MODULE).cel.bak
	rm -f $(TOP_MODULE).cfg
	rm -f $(TOP_MODULE).def
	rm -f $(TOP_MODULE).gds
	rm -f $(TOP_MODULE).info
	rm -f $(TOP_MODULE).lef
	rm -f $(TOP_MODULE).mag
	rm -f $(TOP_MODULE).obs
	rm -f $(TOP_MODULE).pin
	rm -f $(TOP_MODULE).pl1
	rm -f $(TOP_MODULE).pl2
	rm -f $(TOP_MODULE).rc
	rm -f $(TOP_MODULE)_unroute.def
	rm -f migrate_$(TOP_MODULE).tcl
