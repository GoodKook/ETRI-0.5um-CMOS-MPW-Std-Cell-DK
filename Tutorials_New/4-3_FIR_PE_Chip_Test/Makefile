all:
	@echo 'FIR_PE: Chip Test'
	@echo
	@echo '  (1) Build and Upload Modeling-Interface(Arduino-DUE)'
	@echo '        make build-mi'
	@echo '        make upload-mi'
	@echo '  (2) Build and Config Test Wrapper/FPGA(Altera Cyclone-IV)'
	@echo '        make build-trans'
	@echo '        make config-trans'
	@echo '  (3) Build and Run Test Co-Emulator'
	@echo '        make run'
	@echo '        make run_vcd'
	@echo '        make run_la'
	@echo
	@echo '    CC BY-NC, by GoodKook, goodkook@gmail.com'

build-mi:
	make -C ./chip_test/PSCE-MI/Arduino build

upload-mi:
	make -C ./chip_test/PSCE-MI/Arduino upload

build-trans:
	make -C ./chip_test/PSCE-TRANS/Altera_Cmd build
	make -C ./chip_test/PSCE-TRANS/Altera_Cmd gen_rbf

config-trans:
	make -C ./chip_test/PSCE-TRANS/Altera_Cmd config

run:
	make -C ./chip_test build
	make -C ./chip_test run

run_vcd:
	make -C ./chip_test run_vcd

run_la:
	make -C ./chip_test run_la

clean:
	make -C ./chip_test clean
	make -C ./chip_test/PSCE-TRANS/Altera_Cmd clean

