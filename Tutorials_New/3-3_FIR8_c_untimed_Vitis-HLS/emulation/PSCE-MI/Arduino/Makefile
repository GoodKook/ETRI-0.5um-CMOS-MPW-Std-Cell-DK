#------------------------------------------------------------------
export PORT=/dev/ttyACM0
#export FQBN=rp2040:rp2040:rpipicow
export FQBN=rp2040:rp2040:rpipico
#export FQBN=arduino:sam:arduino_due_x_dbg
#export FQBN=esp32:esp32:esp32s3

ifeq ($(MODE), CA)
	SKETCH=Efir_CA
else ifeq ($(MODE), SA)
	SKETCH=Efir_SA
else ifeq ($(MODE), TL)
	SKETCH=Efir_TL
else ifeq ($(MODE), TL_Bulk)
	SKETCH=Efir_TL_Bulk
else ifeq ($(MODE), TL_FreeRTOS)
	SKETCH=Efir_TL_FreeRTOS
else ifeq ($(MODE), TL_FreeRTOS)
	SKETCH=Efir_TL_Scheduler
else
	SKETCH=[MODE]
endif

all:
	@echo "Arduino-CLI for $(SKETCH)"
	@echo "* Env. Variable MODE must be one of followings;"
	@echo "    CA           : Cycle Accurate"
	@echo "    SA           : System Accurate"
	@echo "    TL           : Transaction Level"
	@echo "    TL_Bulk      : Bulky TL"
	@echo "    TL_FreeRTOS  : TL with FreeRTOS"
	@echo "    TL_Scheduler : TL with Scheduler Lib."
	@echo
	@echo "    MODE=[] make build"
	@echo "    MODE=[] make upload"
	@echo

build: ./$(SKETCH)/$(SKETCH).ino
	arduino-cli compile --clean --fqbn $(FQBN) $(SKETCH) \
		--build-path ./$(SKETCH)/build \
		--build-property compiler.cpp.extra_flags=" -DPI_PICO -DUART_BPS=115200 -DCYCLONE_IV"
#		--build-property compiler.cpp.extra_flags="-DOLED_DISPLAY -DDUE_NORMAL -DUART_BPS=115200 -DCYCLONE_IV"

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH) \
		--input-file ./$(SKETCH)/build/$(SKETCH).ino.bin

clean:
	rm -rf ./$(SKETCH)/build

