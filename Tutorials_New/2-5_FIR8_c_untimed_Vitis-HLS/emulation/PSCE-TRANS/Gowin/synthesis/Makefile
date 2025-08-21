
TOP_MODULE=fir_wrapper
VERILOG_SRC= \
	../../$(TOP_MODULE).v \
	../../../../2-5_Lab3_FIR8/rtl_verilog/fir_pe.v \
	../../../source/fir8.v

all: $(TOP_MODULE).v

$(TOP_MODULE).v:
	yosys -s $(TOP_MODULE).ys | tee synthesis.log

log: $(TOP_MODULE).v
	less synthesis.log

clean:
	rm -f $(TOP_MODULE).v
	rm -f synthesis.log

