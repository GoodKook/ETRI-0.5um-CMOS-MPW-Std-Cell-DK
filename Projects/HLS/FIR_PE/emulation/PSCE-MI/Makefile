#------------------------------------------------------------------
export PORT=/dev/ttyACM0
#------------------------------------------------------------------
DUT_NAME=$(TOP_MODULE)
ifeq ($(MODE), )
	MODE=CA
endif
SKETCH=E$(DUT_NAME)_$(MODE)
ifeq ($(MI), DUE_NORMAL)
	export FQBN=arduino:sam:arduino_due_x_dbg
	export CPP_EXTRA="-DOLED_DISPLAY -DDUE_NORMAL -DUART_BPS=115200 -DCYCLONE_IV"
else ifeq ($(MI), PI_PICO)
	export FQBN=rp2040:rp2040:rpipico
	export CPP_EXTRA="-DOLED_DISPLAY -DPI_PICO -DUART_BPS=115200 -DCYCLONE_IV"
#	export CPP_EXTRA="-DPI_PICO -DUART_BPS=115200 -DCYCLONE_IV"
else
	MI = NONE
endif
#export FQBN=rp2040:rp2040:rpipicow
#export FQBN=esp32:esp32:esp32s3
#------------------------------------------------------------------
all:
	@clear
	@if [ ! -n "$(TOP_MODULE)" ];  then \
		echo "*********************************"; \
		echo "!!! TOP_MODULE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -n "$(MODE)" ];  then \
		echo "*********************************"; \
		echo "!!! MODE not declared !!!"; \
		echo "*********************************"; \
		exit 1; \
	fi
	@if [ ! -d "E$(TOP_MODULE)_$(MODE)" ];  then \
		mv ETOP_MODULE_MODE E$(TOP_MODULE)_$(MODE); \
	fi
	@if [ ! -f "E$(TOP_MODULE)_$(MODE)/E$(TOP_MODULE)_$(MODE).ino" ];  then \
		mv E$(TOP_MODULE)_$(MODE)/ETOP_MODULE_MODE.ino E$(TOP_MODULE)_$(MODE)/E$(TOP_MODULE)_$(MODE).ino; \
	fi
	@echo
	@echo "Arduino-CLI for $(SKETCH)"
	@echo
	@echo "    TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make build"
	@echo "    TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make upload"
	@echo "    TOP_MODULE=$(TOP_MODULE) MODE=$(MODE) MI=$(MI) make clean"
	@echo
	@echo "* MODE must be one of followings;"
	@echo "    CA           : Cycle Accurate"
	@echo "* MI must be one of followings;"
	@echo "    DUE_NORMAL   : Arduino DUE"
	@echo "    PI_PICO      : Raspberry Pi Pico"
	@echo
	@echo "CC BY-NC, GoodKook, goodkook@gmail.com"

build: ./$(SKETCH)/$(SKETCH).ino
	@if [ ! -e "E$(TOP_MODULE)_$(MODE)/PinMap_A7_100T.h" ];  then \
		ln -s ../PSCE_API/PinMap_A7_100T.h E$(TOP_MODULE)_$(MODE)/PinMap_A7_100T.h; \
	fi
	@if [ ! -e "E$(TOP_MODULE)_$(MODE)/PinMap_TANG_25K.h" ];  then \
		ln -s ../PSCE_API/PinMap_TANG_25K.h E$(TOP_MODULE)_$(MODE)/PinMap_TANG_25K.h ; \
	fi
	@if [ ! -e "E$(TOP_MODULE)_$(MODE)/PSCE_APIs.cpp" ];  then \
		ln -s ../PSCE_API/PSCE_APIs.cpp E$(TOP_MODULE)_$(MODE)/PSCE_APIs.cpp; \
	fi
	@if [ ! -e "E$(TOP_MODULE)_$(MODE)/PSCE_APIs.h" ];  then \
		ln -s ../PSCE_API/PSCE_APIs.h E$(TOP_MODULE)_$(MODE)/PSCE_APIs.h; \
	fi
	@if [ ! -e "E$(TOP_MODULE)_$(MODE)/PSCE_Splash.h" ];  then \
		ln -s ../PSCE_API/PSCE_Splash.h E$(TOP_MODULE)_$(MODE)/PSCE_Splash.h; \
	fi
	@if [ ! -e "E$(TOP_MODULE)_$(MODE)/PSCE_Config.h" ];  then \
		ln -s ../PSCE_API/PSCE_Config.h E$(TOP_MODULE)_$(MODE)/PSCE_Config.h; \
	fi
	@if [ ! -e "E$(TOP_MODULE)_$(MODE)/TM1637Display.cpp" ];  then \
		ln -s ../PSCE_API/TM1637Display.cpp E$(TOP_MODULE)_$(MODE)/TM1637Display.cpp; \
	fi
	@if [ ! -e "E$(TOP_MODULE)_$(MODE)/TM1637Display.h" ];  then \
		ln -s ../PSCE_API/TM1637Display.h E$(TOP_MODULE)_$(MODE)/TM1637Display.h; \
	fi
	@if [ "$(MODE)" = "AL" ]; then \
		echo "Linking Un-Timed model..."; \
		if [ ! -e E$(TOP_MODULE)_$(MODE)/$(TOP_MODULE).cpp ]; then \
			ln -s ../../../c_untimed/$(TOP_MODULE).cpp E$(TOP_MODULE)_$(MODE)/$(TOP_MODULE).cpp; \
		fi; \
		if [ ! -e E$(TOP_MODULE)_$(MODE)/$(TOP_MODULE).h ]; then \
			ln -s ../../../c_untimed/$(TOP_MODULE).h E$(TOP_MODULE)_$(MODE)/$(TOP_MODULE).h; \
		fi; \
	fi
	arduino-cli compile --clean --fqbn $(FQBN) $(SKETCH) \
		--build-path ./$(SKETCH)/build \
		--build-property compiler.cpp.extra_flags=$(CPP_EXTRA)" -D$(HW_STYLE)"

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH) \
		--input-file ./$(SKETCH)/build/$(SKETCH).ino.bin

clean:
	@if [ -e "E$(TOP_MODULE)_$(MODE)/PinMap_A7_100T.h" ];  then \
		rm E$(TOP_MODULE)_$(MODE)/PinMap_A7_100T.h; \
	fi
	@if [ -e "E$(TOP_MODULE)_$(MODE)/PinMap_TANG_25K.h" ];  then \
		rm E$(TOP_MODULE)_$(MODE)/PinMap_TANG_25K.h ; \
	fi
	@if [ -e "E$(TOP_MODULE)_$(MODE)/PSCE_APIs.cpp" ];  then \
		rm E$(TOP_MODULE)_$(MODE)/PSCE_APIs.cpp; \
	fi
	@if [ -e "E$(TOP_MODULE)_$(MODE)/PSCE_APIs.h" ];  then \
		rm E$(TOP_MODULE)_$(MODE)/PSCE_APIs.h; \
	fi
	@if [ -e "E$(TOP_MODULE)_$(MODE)/PSCE_Splash.h" ];  then \
		rm E$(TOP_MODULE)_$(MODE)/PSCE_Splash.h; \
	fi
	@if [ -e "E$(TOP_MODULE)_$(MODE)/PSCE_Config.h" ];  then \
		rm E$(TOP_MODULE)_$(MODE)/PSCE_Config.h; \
	fi
	@if [ -e "E$(TOP_MODULE)_$(MODE)/TM1637Display.cpp" ];  then \
		rm E$(TOP_MODULE)_$(MODE)/TM1637Display.cpp; \
	fi
	@if [ -e "E$(TOP_MODULE)_$(MODE)/TM1637Display.h" ];  then \
		rm E$(TOP_MODULE)_$(MODE)/TM1637Display.h; \
	fi
	rm -rf ./$(SKETCH)/build

