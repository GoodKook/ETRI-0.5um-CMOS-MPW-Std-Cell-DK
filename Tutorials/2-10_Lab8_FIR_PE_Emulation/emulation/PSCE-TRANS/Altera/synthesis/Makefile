
TOP_MODULE=fir_pe_wrapper
VERILOG_SRC= \
	../../../$(TOP_MODULE).v \
	../../../../../2-9_Lab7_FIR_PE/source/fir_pe.v

all: $(TOP_MODULE).v

$(TOP_MODULE).v: $(VERILOG_SRC)
	yosys -s $(TOP_MODULE).ys | tee synthesis.log

log: $(TOP_MODULE).v
	less synthesis.log

clean:
	rm -f $(TOP_MODULE).v
	rm -f synthesis.log

