#--------------------------------------------------------------------------
PROJECT = space_invaders_SA

all:
	make -C ./fpga config
	make -C ./firmware build
	make -C ./firmware upload
	make -C ./run/space_invaders_SA run
	
clean:
	make -C ./fpga clean
	make -C ./firmware clean
	make -C ./run/space_invaders_SA clean


