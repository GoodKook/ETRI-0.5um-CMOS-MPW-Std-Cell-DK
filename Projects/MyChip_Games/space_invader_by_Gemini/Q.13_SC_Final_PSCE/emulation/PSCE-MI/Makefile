#------------------------------------------------------------------
export PORT=/dev/ttyACM0
#------------------------------------------------------------------
TOP_MODULE = space_invaders_engine_glcd
MODE = CA
MI = PI_PICO_V3

DUT_NAME=$(TOP_MODULE)
SKETCH=E$(DUT_NAME)_$(MODE)

ifeq ($(MI), PI_PICO)
	export FQBN=rp2040:rp2040:rpipico
	CPP_EXTRA="-DPI_PICO -DUART_BPS=115200 -DCYCLONE_IV"
else ifeq ($(MI), PI_PICO_V3)
	export FQBN=rp2040:rp2040:rpipico
	CPP_EXTRA="-DPI_PICO_V3 -DUART_BPS=115200 -DOLED_DISPLAY -DCYCLONE_IV"
else
	MI = NONE
endif
#export FQBN=rp2040:rp2040:rpipicow
#export FQBN=esp32:esp32:esp32s3
#export FQBN=rp2040:rp2040:waveshare_rp2040_zero

#------------------------------------------------------------------
all:
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -n "$(MODE)" ];  then \
		echo "*********************************"; \
		echo "!!! MODE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@echo
	@echo "Arduino-CLI for Building Modeling-Interface of $(SKETCH)"
	@echo
	@echo "    TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make build"
	@echo "    TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make upload"
	@echo "    TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make clean"
	@echo
	@echo "* MODE must be one of followings;"
	@echo "    CA           : Cycle Accurate"
	@echo "* MI must be one of followings;"
	@echo "    PI_PICO      : Raspberry Pi Pico"
	@echo "    PI_PICO_V3   : Raspberry Pi Pico(V3)"
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

