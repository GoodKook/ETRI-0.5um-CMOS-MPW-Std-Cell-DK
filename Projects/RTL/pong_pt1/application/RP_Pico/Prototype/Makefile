#--------------------------------------------------------------------------
export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/intelFPGA_standard/24.1std/quartus/bin:/opt/intelFPGA_standard/24.1std/questa_fse/bin:$(PATH)
export LM_LICENSE_FILE :=/home/goodkook/.altera.quartus/quartus2_lic.dat

PROJECT = pong_pt1

SKETCH=E$(PROJECT)_U8G2_IRQ_dBuff
export FQBN=rp2040:rp2040:rpipico
export PORT=/dev/ttyACM0

all:
	@clear
	@echo
	@echo "Quartus & Arduino-CLI Command Line for $(PROJECT)/Prototyping"
	@echo
	@echo "    SKETCH=$(SKETCH) make build_fw"
	@echo "    SKETCH=$(SKETCH) make upload_fw"
	@echo
	@echo "    make build_fpga"
	@echo "    make gen_rbf"
	@echo "    make config_fpga"
	@echo
	@echo "CC BY-NC, GoodKook, goodkook@gmail.com"

build_fpga: ./output_files/$(PROJECT).sof

./output_files/$(PROJECT).sof: ../../../$(PROJECT)/$(PROJECT).v
	quartus_sh -t $(PROJECT).tcl

gen_rbf: output_file.rbf

output_file.rbf: ./output_files/$(PROJECT).sof
	quartus_cpf -c ./output_files/$(PROJECT).sof output_file.rbf

config_fpga: output_file.rbf
	sudo openFPGALoader -c digilent_hs2 output_file.rbf

build_fw: ../Firmware/$(SKETCH)/$(SKETCH).ino
	arduino-cli compile --clean --fqbn $(FQBN) ../Firmware/$(SKETCH) \
		--build-path ../Firmware/$(SKETCH)/build \
		--build-property compiler.cpp.extra_flags="-DPWM_PI_PICO"

upload_fw:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) ../Firmware/$(SKETCH) \
		--input-file ../Firmware/$(SKETCH)/build/$(SKETCH).ino.bin

clean:
	rm -rf ./output_files
	rm -rf ./db
	rm -rf ./incremental_db
	rm -f $(PROJECT).qpf
	rm -f $(PROJECT).qsf
	rm -f output_file.rbf
	rm -rf ../Firmware/$(SKETCH)/build


