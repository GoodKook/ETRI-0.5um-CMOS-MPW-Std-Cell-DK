
all:
	@echo "FIR8: 8-Tap Digital Filter described as follows;"
	@echo
	@echo "    make c_untimed"
	@echo "    make sc_timed"
	@echo "    make rtl_verilog"
	@echo
	@echo "    make clean"
	@echo
	@echo "    CC BY-NC, GoodKook, goodkook@gmail.com"
	@echo

c_untimed: ./c_untimed/fir8_tb
./c_untimed/fir8_tb:
	make -C ./c_untimed build
	make -C ./c_untimed run
	make -C ./c_untimed plot_fy

sc_timed: ./sc_timed/sc_fir8_tb
./sc_timed/sc_fir8_tb:
	make -C ./sc_timed build
	make -C ./sc_timed run

rtl_verilog: ./rtl_verilog/obj_dir/Vfir8
./rtl_verilog/obj_dir/Vfir8:
	make -C ./rtl_verilog build
	make -C ./rtl_verilog run

clean:
	make -C ./c_untimed clean
	make -C ./sc_timed clean
	make -C ./rtl_verilog clean
