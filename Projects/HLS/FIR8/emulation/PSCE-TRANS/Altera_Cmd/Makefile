#--------------------------------------------------------------------------
export LD_LIBRARY_PATH :=/usr/bin:$(LD_LIBRARY_PATH)
export PATH :=/opt/intelFPGA_standard/24.1std/quartus/bin:/opt/intelFPGA_standard/24.1std/questa_fse/bin:$(PATH)
export LM_LICENSE_FILE :=/home/goodkook/.altera.quartus/quartus2_lic.dat

#TOP_MODULE =
PROJECT = $(TOP_MODULE)_wrapper

all:
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@echo "Quartus Command Line for $(PROJECT)"
	@echo
	@echo "    TOP_MODULE=$(TOP_MODULE) make build"
	@echo "    TOP_MODULE=$(TOP_MODULE) make gen_rbf"
	@echo "    make config"
	@echo
	@echo "CC BY-NC, GoodKook, goodkook@gmail.com"

build: ./output_files/$(PROJECT).sof

./output_files/$(PROJECT).sof: ../../$(PROJECT).v
	quartus_sh -t $(PROJECT).tcl

gen_rbf: output_file.rbf

output_file.rbf: ./output_files/$(PROJECT).sof
	quartus_cpf -c ./output_files/$(PROJECT).sof output_file.rbf

config: output_file.rbf
	sudo openFPGALoader -c digilent_hs2 output_file.rbf

clean:
	rm -rf ./output_files
	rm -rf ./db
	rm -rf ./incremental_db
	rm -f $(PROJECT).qpf
	rm -f $(PROJECT).qsf


