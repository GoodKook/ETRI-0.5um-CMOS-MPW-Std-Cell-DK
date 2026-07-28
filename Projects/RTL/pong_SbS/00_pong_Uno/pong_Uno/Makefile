#------------------------------------------------------------------
DUT_NAME=$(TOP_MODULE)
SKETCH=$(DUT_NAME)
export FQBN=arduino:avr:pro
export PORT=/dev/ttyUSB0
#CPP_EXTRA="-DOLED_DISPLAY -DPI_PICO -DUART_BPS=115200 -DCYCLONE_IV"
#------------------------------------------------------------------
all:
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@echo
	@echo "Arduino-CLI for Chip Test of $(SKETCH)"
	@echo
	@echo "    TOP_MODULE=$(TOP_MODULE) make build"
	@echo "    TOP_MODULE=$(TOP_MODULE) make upload"
	@echo
	@echo "CC BY-NC, GoodKook, goodkook@gmail.com"

build: ./$(SKETCH)/$(SKETCH).ino
	arduino-cli compile --clean --fqbn $(FQBN) $(SKETCH)
#		--build-path ./$(SKETCH)/build
#		--build-property compiler.cpp.extra_flags=$(CPP_EXTRA)
#arduino-cli compile --fqbn arduino:avr:pro 06_pong_pt1_Test_drawDirect

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH)
#		--input-file ./$(SKETCH)/build/$(SKETCH).ino.with_bootloader.bin

clean:
	rm -rf ./$(SKETCH)/build


#arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:pro 06_pong_pt1_Test_drawDirect
