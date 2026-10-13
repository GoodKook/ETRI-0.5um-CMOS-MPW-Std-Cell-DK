#------------------------------------------------------------------
SKETCH=space_invaders_SA

export PORT=/dev/ttyACM0
#export FQBN=rp2040:rp2040:waveshare_rp2040_zero
export FQBN=rp2040:rp2040:rpipico
CPP_EXTRA="-DUART_BPS=115200"

#------------------------------------------------------------------
all:
	@clear
	@echo
	@echo "Arduino-CLI for Application of $(SKETCH)"
	@echo
	@echo "    make build"
	@echo "    make upload"
	@echo "    make clean"
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
