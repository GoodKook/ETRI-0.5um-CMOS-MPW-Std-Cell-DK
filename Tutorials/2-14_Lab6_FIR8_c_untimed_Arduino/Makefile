export SKETCH=FIR8
export PORT=/dev/ttyACM0
#export FQBN=rp2040:rp2040:rpipicow
#export FQBN=arduino:sam:arduino_due_x_dbg
export FQBN=esp32:esp32:esp32s3

all:
	@echo "Arduino-CLI for $(SKETCH)"
	@echo
	@echo "		make build"
	@echo "		make upload"
	@echo
	@echo "		make run"
	@echo

build: ./$(SKETCH)/$(SKETCH).ino
	@if ! [ -L ./FIR8/fir8.cpp ]; then \
		ln -s ../../2-5_Lab3_FIR8/c_untimed/fir8.cpp ./FIR8/fir8.cpp ; fi
	@if ! [ -L ./FIR8/fir8.h ]; then \
		ln -s ../../2-5_Lab3_FIR8/c_untimed/fir8.h ./FIR8/fir8.h ; fi
	arduino-cli compile --clean --fqbn $(FQBN) $(SKETCH) \
	--build-property compiler.cpp.extra_flags=-DFIR_SHIFTER_VERSION

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH)

build_TL: $(SKETCH)_TL

$(SKETCH)_TL: ./emulation/$(SKETCH)_TL.cpp
	gcc -o $(SKETCH)_TL ./emulation/$(SKETCH)_TL.cpp

run: $(SKETCH)_TL  ./emulation/$(SKETCH)_TL.cpp
	rm -f $(SKETCH)_fifo
	mkfifo $(SKETCH)_fifo
	python3 ./sc_plotDFT.py &
	./$(SKETCH)_TL

clean:
	rm -f $(SKETCH)_TL
	rm -f $(SKETCH)_fifo
	rm -f *.log
	rm -f $(SKETCH)/fir8.h
	rm -f $(SKETCH)/fir8.cpp
	
