
all: khu_etri050_stdcells.spice khu_etri050_stdcells.gds2 etri050_stdcells.lef LVL_Result.txt
	@touch khu_etri050_stdcells.mag


khu_etri050_stdcells.spice : khu_etri050_stdcells.mag
	@echo "--------------------------------------------"
	@echo "Generating SPICE netlist"
	@echo "--------------------------------------------"
	@echo "magic -dnull -noconsole << EOF" > _temp_.sh
	@echo "drc off" >> _temp_.sh
	@echo "box 0 0 0 0" >> _temp_.sh
	@echo "load khu_etri050_stdcells" >> _temp_.sh
	@echo "drc off" >> _temp_.sh
	@echo "extract all" >> _temp_.sh
	@echo "ext2spice lvs" >> _temp_.sh
	@echo "ext2spice subcircuit top off" >> _temp_.sh
	@echo "ext2spice" >> _temp_.sh
	@echo "quit -force" >> _temp_.sh
	@echo "EOF" >> _temp_.sh
	@chmod +x _temp_.sh
	@./_temp_.sh
	@rm -f ./_temp_.sh
	@rm -f ./*.ext

khu_etri050_stdcells.gds2 : khu_etri050_stdcells.mag
	@echo "--------------------------------------------"
	@echo "Generating GDS2"
	@echo "--------------------------------------------"
	@echo "magic -dnull -noconsole << EOF" > _temp_.sh
	@echo "drc off" >> _temp_.sh
	@echo "box 0 0 0 0" >> _temp_.sh
	@echo "load khu_etri050_stdcells -force" >> _temp_.sh
	@echo "drc off" >> _temp_.sh
	@echo "gds abstract" >> _temp_.sh
	@echo "gds drccheck no" >> _temp_.sh
	@echo "gds labels yes" >> _temp_.sh
	@echo "gds library yes" >> _temp_.sh
	@echo "gds rescale no" >> _temp_.sh
	@echo "gds write khu_etri050_stdcells.gds2" >> _temp_.sh
	@echo "quit -force" >> _temp_.sh
	@echo "EOF" >> _temp_.sh
	@chmod +x _temp_.sh
	@./_temp_.sh
	@rm -f ./_temp_.sh

etri050_stdcells.lef : khu_etri050_stdcells.mag
	@echo "--------------------------------------------"
	@echo "Generating LEF"
	@echo "--------------------------------------------"
	./gen_lef_stdcells.py khu_etri050_stdcells

LVL_Result.txt : ./khu_etri050_stdcells.spice ../digital_osu050/iit_stdcells.spice
	@echo "--------------------------------------------"
	@echo "Generating LEF"
	@echo "--------------------------------------------"
	netgen -noc -batch lvs  \
		"./khu_etri050_stdcells.spice khu_etri050_stdcells" \
		"../digital_osu050/iit_stdcells.spice iit_stdcells" \
		../tech/etri050_setup.tcl LVL_Result.txt

clean:
	rm -f *.ext
	rm -f LVL_*.txt

clean_all:
	rm -f *.ext
	rm -f *.spice
	rm -f LVS_*.txt
	rm -f LVL_*.txt
    
