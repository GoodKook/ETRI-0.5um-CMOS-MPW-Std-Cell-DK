#------------------------------------------------------------------
export PORT=/dev/ttyACM0
#------------------------------------------------------------------
DUT_NAME=$(TOP_MODULE)
ifeq ($(MODE), )
	MODE=CA
endif
SKETCH=E$(DUT_NAME)_$(MODE)
ifeq ($(MI), DUE_NORMAL)
	export FQBN=arduino:sam:arduino_due_x_dbg
	CPP_EXTRA="-DDUE_NORMAL -DUART_BPS=115200 -DCYCLONE_IV"
#	CPP_EXTRA="-DOLED_DISPLAY -DDUE_NORMAL -DUART_BPS=115200 -DCYCLONE_IV"
else ifeq ($(MI), PI_PICO)
	export FQBN=rp2040:rp2040:rpipico
	CPP_EXTRA="-DPI_PICO -DUART_BPS=115200 -DCYCLONE_IV"
else
	MI = NONE
endif
#export FQBN=rp2040:rp2040:rpipicow
#export FQBN=esp32:esp32:esp32s3
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
	@if [ ! -d "E$(TOP_MODULE)_$(MODE)" ];  then \
		mv ETOP_MODULE_MODE E$(TOP_MODULE)_$(MODE); \
	fi
	@if [ ! -f "E$(TOP_MODULE)_$(MODE)/E$(TOP_MODULE)_$(MODE).ino" ];  then \
		mv E$(TOP_MODULE)_$(MODE)/ETOP_MODULE_MODE.ino E$(TOP_MODULE)_$(MODE)/E$(TOP_MODULE)_$(MODE).ino; \
	fi
	@echo
	@echo "Arduino-CLI for Emulation Modeling Interface of $(SKETCH)"
	@echo
	@echo "    TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make build"
	@echo "    TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make upload"
	@echo "    TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make clean"
	@echo
	@echo "* MODE must be one of followings;"
	@echo "    CA           : Cycle Accurate"
	@echo "* MI must be one of followings;"
	@echo "    DUE_NORMAL   : Arduino DUE"
	@echo "    PI_PICO      : Raspberry Pi Pico"
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

