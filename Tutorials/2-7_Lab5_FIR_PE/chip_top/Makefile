#-----------------------------------------------------------------
SCRIPTS_PATH = ~/ETRI050_DesignKit/scripts
PAD_PATH =  ~/ETRI050_DesignKit/pads_ETRI050
LAYOUT_PATH = ../layout

CHIP_NAME = fir_pe

PAD_X = 97.5
PAD_Y = 97.5
PIN_ROUTE_X = 440.6
PIN_ROUTE_Y = 440.6
CORE_X = 581.4
CORE_Y = 597.6

all:
	@echo
	@echo 'Generate Chip-Top'
	@echo
	@echo '    make copy_pad_frame'
	@echo '    make copy_core'
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

extract_pad: $(CHIP_NAME)_Pad.mag

$(CHIP_NAME)_Pad.mag: $(CHIP_NAME)_Top.mag
	python3 $(SCRIPTS_PATH)/xPad.py fir_pe

extract_pin_route:  $(CHIP_NAME)_Pin_Route.mag

$(CHIP_NAME)_Pin_Route.mag: $(CHIP_NAME)_Top.mag
	python3 $(SCRIPTS_PATH)/xPin_Route_Metal.py fir_pe

generate_gds: $(CHIP_NAME)_Top.gds

$(CHIP_NAME)_Top.gds: $(CHIP_NAME)_Pad.mag $(CHIP_NAME)_Pin_Route.mag $(CHIP_NAME)_Top.mag
	$(SCRIPTS_PATH)/generate_chip.sh fir_pe \
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

