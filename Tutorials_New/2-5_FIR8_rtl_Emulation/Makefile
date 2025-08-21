all:
	@echo 'FIR8: RTL Version/PSCE Emulation'
	@echo
	@echo '  (1) Build and Upload Modeling-Interface(Arduino-DUE)'
	@echo '        make build-mi'
	@echo '        make upload-mi'
	@echo '  (2) Build and Config Transactor FPGA(Altera Cyclone-IV)'
	@echo '        make build-trans'
	@echo '        make config-trans'
	@echo '  (3) Build and Run Co-Emulator'
	@echo '        make co-emu'
	@echo '        make wave'
	@echo '        make plot'
	@echo
	@echo '    CC BY-NC, by GoodKook, goodkook@gmail.com'

build-mi:
	make -C ./emulation/PSCE-MI/Arduino build

upload-mi:
	make -C ./emulation/PSCE-MI/Arduino upload

build-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd build
	make -C ./emulation/PSCE-TRANS/Altera_Cmd gen_rbf

config-trans:
	make -C ./emulation/PSCE-TRANS/Altera_Cmd config

co-emu:
	make -C ./emulation build
	make -C ./emulation run

wave:
	make -C ./emulation wave

plot:
	make -C ./emulation plot

clean:
	make -C ./emulation clean
	make -C ./emulation/PSCE-TRANS/Altera_Cmd clean

