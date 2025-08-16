

all:
	@echo "Arduino-CLI"
	@echo "Usage:"
	@echo "    make help"
	@echo "    make config"
	@echo
	@echo "    NEW_SKETCH=[MyNewSketsh] make new_sketch"
	@echo "    FQBN=[board name] SKETCH=[sketch name] make compile"
	@echo "    PORT=[/dev/ttyACM0] FQBN=[board name] SKETCH=[sketch name] make upload"
	@echo
	@echo "    make board_list"
	@echo "    make core_list"
	@echo
	@echo "    BOARD_NAME=[name] make board_listall"
	@echo "    CORE_NAME=[name] make core_list"
	@echo
	@echo "    make update_cache ; update installed local cache"
	@echo "    make core_update ; Update local cache for added 3rd party board"
	@echo "    CORE_NAME=[name] make install_core"
	@echo "    LIB_NAME=[libname] make lib_search"
	@echo "    LIB_NAME=[libname] make lib_install"
	@echo
	@echo "    make upload_pico"
	@echo

help:
	arduino-cli help

config:
	arduino-cli config init

new_sketch:
	arduino-cli sketch new $(NEW_SKETCH)

update_cache:
	arduino-cli core update-index

board_list:
	arduino-cli board list

board_listall:
	arduino-cli board listall $(BOARD_NAME)

install_core:
	arduino-cli core install $(CORE_NAME)

core_list:
	arduino-cli core list

core_update:
	arduino-cli core update-index

compile:
	arduino-cli compile --fqbn $(FQBN) $(SKETCH)

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH)

lib_search:
	arduino-cli lib search $(LIB_NAME)

lib_install:
	arduino-cli lib install $(LIB_NAME)

compile_pico:
	arduino-cli compile --fqbn $(FQBN) $(SKETCH) -e

upload_pico: $(SKETCH)/build/rp2040.rp2040.generic/$(SKETCH).ino.uf2
	sudo mount -t drvfs f: ~/_uf2_
	cp $(SKETCH)/build/rp2040.rp2040.rpipicow/$(SKETCH).ino.uf2 ~/_uf2_



