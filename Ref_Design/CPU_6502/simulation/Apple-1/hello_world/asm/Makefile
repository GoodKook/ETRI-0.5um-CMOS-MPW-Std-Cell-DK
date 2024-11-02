AS65   = ../../assembler/as65

all: program.hex

program.hex: hello_world.a65
	$(AS65) -l -m -oprogram.hex -s2 hello_world.a65

copy: program.hex
	cp program.hex ../..
	
clean:
	$(RM) hello_world.lst hello_world.o hello_world.s
	