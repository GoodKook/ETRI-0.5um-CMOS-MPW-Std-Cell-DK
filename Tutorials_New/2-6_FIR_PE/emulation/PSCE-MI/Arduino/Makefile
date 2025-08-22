#------------------------------------------------------------------
export PORT=/dev/ttyACM0
#export FQBN=rp2040:rp2040:rpipicow
export FQBN=arduino:sam:arduino_due_x_dbg
#export FQBN=esp32:esp32:esp32s3

SKETCH=E_fir_pe

all:
	@echo "Arduino-CLI for $(SKETCH)/$(FQBN)"
	@echo "PSCE Modeling-Interface RTL Emulation"
	@echo
	@echo "    make build"
	@echo "    make upload"
	@echo

build:
	arduino-cli compile --clean --fqbn $(FQBN) $(SKETCH) \
	--build-property compiler.cpp.extra_flags=-DOLED_DISPLAY

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH)
	
