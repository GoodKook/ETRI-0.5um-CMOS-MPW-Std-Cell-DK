PLATFORM    = APPLE1
CC65_HOME   = ../../cc65-2.13.3/lib/cc65
CC65_HOME   = ../../cc65-2.13.3/lib/cc65
CA65_INC    = ../../cc65-2.13.3/lib/cc65/asminc
CC65_INC    = ../../cc65-2.13.3/lib/cc65/include
LD65_CFG    = ../../cc65-2.13.3/lib/cc65/cfg
LD65_LIB    = ../../cc65-2.13.3/lib/cc65/lib
LD65_OBJ    = ../../cc65-2.13.3/lib/cc65/obj
EXEC_PATH   = ../../cc65-2.13.3/bin

all: cc65

cc65: program.bin

program.bin: hello_world.o
	$(EXEC_PATH)/ld65 -L$(LD65_LIB) -C$(LD65_CFG)/apple1-16k.cfg \
		-o program.bin hello_world.o apple1.lib

hello_world.o: hello_world.s
	$(EXEC_PATH)/ca65 -t none --listing --list-bytes 100 hello_world.s

hello_world.s: hello_world.c
	$(EXEC_PATH)/cc65 -T -O --static-locals -t apple1 -I$(CC65_INC) hello_world.c

copy: program.bin
	cp program.bin ../..
	
clean:
	$(RM) hello_world.lst hello_world.o hello_world.s
	