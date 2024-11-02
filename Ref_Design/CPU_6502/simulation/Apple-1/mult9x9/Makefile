PLATFORM    = APPLE1
CC65_HOME   = ../cc65-2.13.3/lib/cc65
CC65_HOME   = ../cc65-2.13.3/lib/cc65
CA65_INC    = ../cc65-2.13.3/lib/cc65/asminc
CC65_INC    = ../cc65-2.13.3/lib/cc65/include
LD65_CFG    = ../cc65-2.13.3/lib/cc65/cfg
LD65_LIB    = ../cc65-2.13.3/lib/cc65/lib
LD65_OBJ    = ../cc65-2.13.3/lib/cc65/obj
EXEC_PATH   = ../cc65-2.13.3/bin

SRC = mult9x9

all: cc65

cc65: program.bin

program.bin: $(SRC).o
	$(EXEC_PATH)/ld65 -L$(LD65_LIB) -C$(LD65_CFG)/apple1-16k.cfg \
		-o program.bin $(SRC).o apple1.lib

$(SRC).o: $(SRC).s
	$(EXEC_PATH)/ca65 -t none --listing --list-bytes 100 $(SRC).s

$(SRC).s: $(SRC).c
	$(EXEC_PATH)/cc65 -T -O --static-locals -t apple1 -I$(CC65_INC) $(SRC).c

copy: program.bin
	cp program.bin ..
	
clean:
	$(RM) $(SRC).lst $(SRC).o $(SRC).s
	