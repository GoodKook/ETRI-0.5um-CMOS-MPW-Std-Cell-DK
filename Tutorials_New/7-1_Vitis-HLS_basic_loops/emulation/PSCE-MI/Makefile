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

DUT_NAME=basic_loops
SKETCH=E$(DUT_NAME)_$(MODE)

all:
	@echo "Arduino-CLI for $(SKETCH)"
	@echo "    MODE=[] MI=[] make build"
	@echo "    MODE=[] MI=[] make upload"
	@echo "    MODE=[]       make clean"
	@echo
	@echo "* MODE must be one of followings;"
	@echo "    CA           : Cycle Accurate"
	@echo "    SA           : System Accurate"
	@echo "    TL           : Transaction Level"
	@echo "    TL_Bulk      : Bulky TL"
	@echo "    TL_FreeRTOS  : TL with FreeRTOS"
	@echo "    TL_Scheduler : TL with Scheduler Lib."
	@echo "* MI must be one of followings;"
	@echo "    DUE_NORMAL   : Arduino DUE"
	@echo "    PI_PICO      : Raspberry Pi Pico"

build: ./$(SKETCH)/$(SKETCH).ino
	arduino-cli compile --clean --fqbn $(FQBN) $(SKETCH) \
		--build-path ./$(SKETCH)/build \
		--build-property compiler.cpp.extra_flags=$(CPP_EXTRA)

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH) \
		--input-file ./$(SKETCH)/build/$(SKETCH).ino.bin

clean:
	rm -rf ./$(SKETCH)/build

