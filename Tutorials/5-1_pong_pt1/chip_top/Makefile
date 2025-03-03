#-----------------------------------------------------------------
export DK_HOME=~/ETRI050_DesignKit
export DK_STD_CELL=$(DK_HOME)/digital_ETRI
export DK_ANA_LIB=$(DK_HOME)/analog_ETRI
export DK_PAD_LIB=$(DK_HOME)/pads_ETRI050
export DK_TECH=$(DK_HOME)/tech
export DK_SCRIPT=$(DK_HOME)/scripts

SCRIPTS_PATH = ~/ETRI050_DesignKit/scripts
PAD_PATH =  ~/ETRI050_DesignKit/pads_ETRI
LAYOUT_PATH = ../layout

CHIP_NAME = pong_pt1

PAD_X = 97.5
PAD_Y = 97.5
PIN_ROUTE_X =
PIN_ROUTE_Y =
CORE_X =
CORE_Y =

all:
	@echo
	@echo 'Generate Chip-Top: $(CHIP_NAME)_Top.gds'
	@echo
	@echo '    make copy_pad_frame'
	@echo '    make copy_core'
	@echo
	@echo '    make lvs_core'
	@echo '    make stack_core'
	@echo '    make drc_core'
	@echo
	@echo '    make extract_pad'
	@echo '    make extract_pin_route'
	@echo
	@echo '    make generate_gds'
	@echo

copy_pad_frame: $(CHIP_NAME)_Top.mag

$(CHIP_NAME)_Top.mag:
	cp $(PAD_PATH)/MPW_PAD_28Pin_IO.mag ./$(CHIP_NAME)_Top.mag

copy_core:  $(CHIP_NAME)_Core.mag

$(CHIP_NAME)_Core.mag:
	cp $(LAYOUT_PATH)/$(CHIP_NAME).mag ./$(CHIP_NAME)_Core.mag

drc_core:
	$(DK_SCRIPT)/run_drc.sh $(CHIP_NAME)_Core | tee $(CHIP_NAME)_Core_DRC.log

lvs_core:
	$(DK_SCRIPT)/run_lvs2.sh $(CHIP_NAME)_Core $(CHIP_NAME) | tee $(CHIP_NAME)_Core_LVS.log

stack_core:
	$(DK_SCRIPT)/check_via_stack.py $(CHIP_NAME)_Core m2contact m3contact 6 | \
		tee $(CHIP_NAME)_Core_Stacked.log

extract_pad: $(CHIP_NAME)_Pad.mag

$(CHIP_NAME)_Pad.mag: $(CHIP_NAME)_Top.mag
	python3 $(SCRIPTS_PATH)/xPad.py $(CHIP_NAME)

extract_pin_route:  $(CHIP_NAME)_Pin_Route.mag

$(CHIP_NAME)_Pin_Route.mag: $(CHIP_NAME)_Top.mag
	python3 $(SCRIPTS_PATH)/xPin_Route_Metal.py $(CHIP_NAME)

generate_gds: $(CHIP_NAME)_Top.gds

$(CHIP_NAME)_Top.gds: $(CHIP_NAME)_Pad.mag $(CHIP_NAME)_Pin_Route.mag $(CHIP_NAME)_Top.mag
	$(SCRIPTS_PATH)/generate_chip.sh $(CHIP_NAME) \
			$(PAD_X) $(PAD_Y) \
			$(PIN_ROUTE_X) $(PIN_ROUTE_Y) \
			$(CORE_X) $(CORE_Y)

clean:
	rm -f $(CHIP_NAME)_Pad.mag
	rm -f $(CHIP_NAME)_Pad_F.mag
	rm -f $(CHIP_NAME)_Pin_Route.mag
	rm -f $(CHIP_NAME)_Pin_Route_F.mag
	rm -f $(CHIP_NAME)_Top_F.mag
	rm -f $(CHIP_NAME)_Core_F.mag
	rm -f $(CHIP_NAME)_Core_DRC.mag
	rm -f $(CHIP_NAME)_Core_LVS.mag
	rm -f $(CHIP_NAME)_Core_Stack.mag
	
clean_all:
	rm -f *.txt
	rm -f *.log
	rm -f *.gds
	rm -f *.ext
	rm -f *.spice

