#------------------------------------------------------------------
export PORT=/dev/ttyACM0
#------------------------------------------------------------------
DUT_NAME=pong_SbS
MI=PI_PICO

SKETCH=E$(DUT_NAME)
ifeq ($(MI), DUE_NORMAL)
	export FQBN=arduino:sam:arduino_due_x_dbg
	CPP_EXTRA="-DOLED_DISPLAY -DDUE_NORMAL -DUART_BPS=115200 -DCYCLONE_IV"
else ifeq ($(MI), PI_PICO)
	export FQBN=rp2040:rp2040:rpipico
	CPP_EXTRA="-DOLED_DISPLAY -DPI_PICO -DUART_BPS=115200 -DCYCLONE_IV"
else
	MI = NONE
endif
#export FQBN=rp2040:rp2040:rpipicow
#export FQBN=esp32:esp32:esp32s3

#------------------------------------------------------------------
all:
	@clear
	@echo
	@echo "Arduino-CLI for Emulation Modeling Interface of $(SKETCH)"
	@echo
	@echo "    TOP_MODULE=$(DUT_NAME) MI=$(MI) make build"
	@echo "    TOP_MODULE=$(DUT_NAME) MI=$(MI) make upload"
	@echo "    TOP_MODULE=$(DUT_NAME) MI=$(MI) make clean"
	@echo
	@echo "CC BY-NC, GoodKook, goodkook@gmail.com"

build: ./$(SKETCH)/$(SKETCH).ino
	arduino-cli compile --clean --fqbn $(FQBN) $(SKETCH) \
		--build-path ./$(SKETCH)/build \
		--build-property compiler.cpp.extra_flags=$(CPP_EXTRA)

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH) \
		--input-file ./$(SKETCH)/build/$(SKETCH).ino.bin

clean:
	rm -rf ./$(SKETCH)/build

