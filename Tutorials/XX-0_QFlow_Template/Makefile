
VERILOG_SRCS =	./source/test.v
TOP_MODULE = test

all :
	@echo ''
	@echo 'Makefile for "Vitis-HLS Ex.: basic_loops_primer" QFlow RTL-to-Layout using ETRI 0.5um CMOS Technology'
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following options'
	@echo '             synthesize'
	@echo '             place'
	@echo '             sta'
	@echo '             route'
	@echo '             migrate'
	@echo '             lvs'
	@echo ''
	@echo '             config_m1f'
	@echo '             config_m2f'
	@echo '             clean_cell'
	@echo ''

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
sta : ./log/sta.log

./log/sta.log : \
	./synthesis/$(TOP_MODULE).rtlnopwr.v \
	./log/place.log \
	project_vars.sh
	qflow sta -T etri050 $(TOP_MODULE)

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

size: ./layout/$(TOP_MODULE).mag ./log/magic_db.log
	~/ETRI050_DesignKit/scripts/size_core.sh $(TOP_MODULE)

clean :
	rm -f ./log/*
	rm -f ./synthesis/*
	touch project_vars.sh

#--------------------------------------------------------------------------------
CELL_SRC1 = ~/ETRI050_DesignKit/digital_ETRI050_m1f
CELL_SRC2 = ~/ETRI050_DesignKit/digital_ETRI050_m2f
CELL_LIB  = ~/ETRI050_DesignKit/digital_ETRI

define config_cell
	cd $(CELL_LIB)
	cp -f $(1)/AND2X1.mag	$(CELL_LIB)/AND2X1.mag
	cp -f $(1)/AND2X2.mag	$(CELL_LIB)/AND2X2.mag
	cp -f $(1)/AOI21X1.mag	$(CELL_LIB)/AOI21X1.mag
	cp -f $(1)/AOI22X1.mag	$(CELL_LIB)/AOI22X1.mag
	cp -f $(1)/BUFX2.mag	$(CELL_LIB)/BUFX2.mag
	cp -f $(1)/BUFX4.mag	$(CELL_LIB)/BUFX4.mag
	cp -f $(1)/CLKBUF1.mag	$(CELL_LIB)/CLKBUF1.mag
	cp -f $(1)/CLKBUF2.mag	$(CELL_LIB)/CLKBUF2.mag
	cp -f $(1)/CLKBUF3.mag	$(CELL_LIB)/CLKBUF3.mag
	cp -f $(1)/DFFNEGX1.mag	$(CELL_LIB)/DFFNEGX1.mag
	cp -f $(1)/DFFPOSX1.mag	$(CELL_LIB)/DFFPOSX1.mag
	cp -f $(1)/DFFSR.mag	$(CELL_LIB)/DFFSR.mag
	cp -f $(1)/FILL.mag	$(CELL_LIB)/FILL.mag
	cp -f $(1)/INVX1.mag	$(CELL_LIB)/INVX1.mag
	cp -f $(1)/INVX2.mag	$(CELL_LIB)/INVX2.mag
	cp -f $(1)/INVX4.mag	$(CELL_LIB)/INVX4.mag
	cp -f $(1)/INVX8.mag	$(CELL_LIB)/INVX8.mag
	cp -f $(1)/MUX2X1.mag	$(CELL_LIB)/MUX2X1.mag
	cp -f $(1)/NAND2X1.mag	$(CELL_LIB)/NAND2X1.mag
	cp -f $(1)/NAND3X1.mag	$(CELL_LIB)/NAND3X1.mag
	cp -f $(1)/NOR2X1.mag	$(CELL_LIB)/NOR2X1.mag
	cp -f $(1)/NOR3X1.mag	$(CELL_LIB)/NOR3X1.mag
	cp -f $(1)/OAI21X1.mag	$(CELL_LIB)/OAI21X1.mag
	cp -f $(1)/OAI22X1.mag	$(CELL_LIB)/OAI22X1.mag
	cp -f $(1)/OR2X1.mag	$(CELL_LIB)/OR2X1.mag
	cp -f $(1)/OR2X2.mag	$(CELL_LIB)/OR2X2.mag
	cp -f $(1)/TBUFX1.mag	$(CELL_LIB)/TBUFX1.mag
	cp -f $(1)/TBUFX2.mag	$(CELL_LIB)/TBUFX2.mag
	cp -f $(1)/HAX1.mag	$(CELL_LIB)/HAX1.mag
	cp -f $(1)/FAX1.mag	$(CELL_LIB)/FAX1.mag
	cp -f $(1)/XNOR2X1.mag	$(CELL_LIB)/XNOR2X1.mag
	cp -f $(1)/XOR2X1.mag	$(CELL_LIB)/XOR2X1.mag
	cp -f $(1)/LATCH.mag	$(CELL_LIB)/LATCH.mag
	cp -f $(1)/khu_etri050_stdcells.mag	$(CELL_LIB)/khu_etri050_stdcells.mag
	cd $(CELL_LIB) && $(MAKE) clean && $(MAKE)
endef

config_m1f :
	$(call config_cell,$(CELL_SRC1))
	@echo ''
	@echo '-----------------------------------------------------'
	@echo 'Std-Cel configured with'
	@echo '    ' $(CELL_SRC1)
	@echo '-----------------------------------------------------'
	@echo ''

config_m2f :
	$(call config_cell,$(CELL_SRC2))
	@echo ''
	@echo '-----------------------------------------------------'
	@echo 'Std-Cel configured with'
	@echo '    ' $(CELL_SRC2)
	@echo '-----------------------------------------------------'
	@echo ''

clean_cell :
	cd $(CELL_LIB) && $(MAKE) clean_all
	rm -f $(CELL_LIB)/*.mag
