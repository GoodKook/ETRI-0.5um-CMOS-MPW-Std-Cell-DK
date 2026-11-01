#--------------------------------------------------------------------------
PROJECT = space_invaders_SA

all:
	make -C ./fpga config
	make -C ./firmware build
	make -C ./firmware upload
	make -C ./run/space_invaders_SA run

build_fpga:
	make -C ./fpga build

config_fpga:
	make -C ./fpga config

build_firmware:
	make -C ./firmware build

upload_firmware:
	make -C ./firmware upload

build:
	make -C ./run/space_invaders_SA build

run_app:
	make -C ./run/space_invaders_SA run

clean:
	make -C ./fpga clean
	make -C ./firmware clean
	make -C ./run/space_invaders_SA clean


