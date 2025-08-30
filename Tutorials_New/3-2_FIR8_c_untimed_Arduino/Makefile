#-------------------------------------------------------------------------
export SKETCH=FIR8
export PORT=/dev/ttyACM0
#export FQBN=rp2040:rp2040:rpipicow
export FQBN=rp2040:rp2040:rpipico
#export FQBN=arduino:sam:arduino_due_x_dbg
#export FQBN=esp32:esp32:esp32s3

all:
	@echo "Arduino-CLI Simple Example \"Blink\""
	@echo
	@echo "    make build-blink"
	@echo "    make upload-blink"
	@echo "    make clean-blink"
	@echo
	@echo "Arduino-CLI for $(SKETCH): Running fir() on Arduino DUE"
	@echo
	@echo "    make build"
	@echo "    make upload"
	@echo
	@echo "    make build_TL"
	@echo "    make run"
	@echo
	@echo "    make clean"
	@echo
	@echo " CC BY-NC, by GoodKook, goodkook@gmail.com"
	@echo
#--------------------------------------------------------------------
build-blink:
	FQBN=$(FQBN) SKETCH=Blink make -C ./Arduino_Blink compile

upload-blink:
	FQBN=$(FQBN) SKETCH=Blink make -C ./Arduino_Blink upload

clean-blink:
	SKETCH=Blink make -C ./Arduino_Blink clean
#--------------------------------------------------------------------
build: ./$(SKETCH)/$(SKETCH).ino
	@if ! [ -L ./FIR8/fir8.cpp ]; then \
		ln -s ../../3-1_FIR8/c_untimed/fir8.cpp ./FIR8/fir8.cpp ; fi
	@if ! [ -L ./FIR8/fir8.h ]; then \
		ln -s ../../3-1_FIR8/c_untimed/fir8.h ./FIR8/fir8.h ; fi
	arduino-cli compile --clean --fqbn $(FQBN) $(SKETCH) \
			--build-property compiler.cpp.extra_flags=\"-DFIR_SHIFTER_VERSION\" \
			--build-path ./$(SKETCH)/build

upload:
	arduino-cli upload -p $(PORT) \
		--fqbn $(FQBN) $(SKETCH) \
		--input-file ./$(SKETCH)/build/$(SKETCH).ino.bin
#--------------------------------------------------------------------
build_TL: ./$(SKETCH)_TL
$(SKETCH)_TL: ./emulation/$(SKETCH)_TL.cpp
	gcc -o $(SKETCH)_TL -I./emulation -I../3-1_FIR8/c_untimed \
		./emulation/$(SKETCH)_TL.cpp \
		./emulation/fir8.cpp \
		../3-1_FIR8/c_untimed/cnoise.cpp \
		-lm -lgsl

run: $(SKETCH)_TL  ./emulation/$(SKETCH)_TL.cpp
	rm -f $(SKETCH)_fifo
	mkfifo $(SKETCH)_fifo
	python3 ./sc_plotDFT.py &
	./$(SKETCH)_TL
#--------------------------------------------------------------------
clean:
	rm -f $(SKETCH)_TL
	rm -f $(SKETCH)_fifo
	rm -f *.log
	rm -f $(SKETCH)/fir8.h
	rm -f $(SKETCH)/fir8.cpp
	rm -rf ./$(SKETCH)/build
	SKETCH=Blink make -C ./Arduino_Blink clean
