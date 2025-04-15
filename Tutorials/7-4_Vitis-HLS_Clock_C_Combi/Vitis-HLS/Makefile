
all:
	@echo "\"Clock\" Model in C"
	@echo "    C-Model Test:"
	@echo "        make build"
	@echo "        make run"
	@echo "        N_CLOCK=<number of clocks> make run"
	@echo "    C Synthesis(Vitis-HLS):"
	@echo "        make csynth"
	@echo "        make view_rpt"
	@echo "        make view_rtl"
	@echo "    Clean-up:"
	@echo "        make clean"

build: Clock

Clock: ./source/Clock.cpp ./source/Clock_TB.cpp
	gcc -o Clock ./source/Clock.cpp ./source/Clock_TB.cpp

run: Clock
	./Clock $(N_CLOCK)

csynth:
	vitis-run --mode hls --tcl Clock.tcl

view_rpt:
	less ./hls/solution1/syn/report/Clock_csynth.rpt

view_rtl:
	less ./hls/solution1/syn/verilog/Clock.v

clean:
	@rm -f Clock
	@rm -rf hls
	@rm -rf logs
