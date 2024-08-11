
VERILOG_SRCS =	./source/fir_pe.v
TOP_MODULE = fir_pe

all :
	@echo 'Makefile for "FIR8:Parallel IO" QFlow RTL-to-Layout using ETRI 0.5um CMOS Technology'
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following options'
	@echo '             synthesize'
	@echo '             place'
	@echo '             route'
	@echo '             migrate'
	@echo '             lvs'

# -----------------------------------------------------
synthesize : ./log/synth.log

./log/synth.log : $(VERILOG_SRCS)
	qflow synthesize -T etri050 $(TOP_MODULE)

# -----------------------------------------------------
place : ./log/place.log

./log/place.log : \
	./layout/$(TOP_MODULE).par \
	./layout/$(TOP_MODULE).cel2 \
	./log/synth.log \
	project_vars.sh
	qflow place -T etri050 $(TOP_MODULE)

# -----------------------------------------------------
route : ./log/route.log

./log/route.log : \
	./log/place.log \
	./layout/$(TOP_MODULE).def \
	./layout/$(TOP_MODULE)_unroute.def \
	project_vars.sh
	qflow route -T etri050 $(TOP_MODULE)

# -----------------------------------------------------
migrate : ./log/magic_db.log project_vars.sh

./log/magic_db.log : \
	./log/route.log
	qflow migrate -T etri050 $(TOP_MODULE)

# -----------------------------------------------------
lvs : ./log/lvs.log project_vars.sh

./log/lvs.log : \
	./synthesis/$(TOP_MODULE).spc \
	./layout/$(TOP_MODULE).mag \
	./log/magic_db.log
	~/ETRI050_DesignKit/scripts/fix_net_name.sh ./synthesis/$(TOP_MODULE).spc
	qflow lvs -T etri050 $(TOP_MODULE)

clean :
	rm -f ./log/*
	rm -f ./synthesis/*
