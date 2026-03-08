#------------------------------------------------------------------
MODE=CA
SKETCH=Efir_$(MODE)
MI=PI_PICO
#------------------------------------------------------------------
export PORT=/dev/ttyACM0
ifeq ($(MI), DUE_NORMAL)
	export FQBN=arduino:sam:arduino_due_x_dbg
	CPP_EXTRA="-DOLED_DISPLAY -DDUE_NORMAL -DUART_BPS=115200 -DCYCLONE_IV"
else ifeq ($(MI), PI_PICO)
	export FQBN=rp2040:rp2040:rpipico
	CPP_EXTRA="-DPI_PICO -DUART_BPS=115200 -DCYCLONE_IV"
endif
#export FQBN=rp2040:rp2040:rpipicow
#export FQBN=esp32:esp32:esp32s3

all:
	@echo "Arduino-CLI for $(SKETCH)"
	@echo "    MODE=$(MODE) MI=$(MI) make build"
	@echo "    MODE=$(MODE) MI=$(MI) make upload"
	@echo "    MODE=$(MODE) MI=$(MI) make clean"
	@echo

build: ./$(SKETCH)/$(SKETCH).ino
	arduino-cli compile --clean --fqbn $(FQBN) $(SKETCH) \
		--build-path ./$(SKETCH)/build \
		--build-property compiler.cpp.extra_flags=$(CPP_EXTRA)

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH) \
		--input-file ./$(SKETCH)/build/$(SKETCH).ino.bin
 
clean:
	rm -rf ./$(SKETCH)/build
