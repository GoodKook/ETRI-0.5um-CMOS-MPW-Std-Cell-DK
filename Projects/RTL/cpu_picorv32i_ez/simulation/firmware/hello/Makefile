# RISC-V GCC -----------------------------------------------------
export GCC_COMPILER =/opt/riscv32i/bin/riscv32-unknown-elf-gcc
export GCC_OBJCOPY  =/opt/riscv32i/bin/riscv32-unknown-elf-objcopy
export GCC_OBJDUMP  = /opt/riscv32i/bin/riscv32-unknown-elf-objdump

TOP_MODULE = hello
C_SRCS = $(TOP_MODULE).c
C_OPTS = -lc -lgcc
C_DEFS = -DRISCV32I

all:
	@clear
	@echo
	@echo "RISC-V 32I Cross-Compiler for \"$(TOP_MODULE)\""
	@echo
	@echo "    make build"
	@echo "    make copy"
	@echo "    make clean"
	@echo
	@echo "CC-BY-NC, by GoodKook"
	@echo

build:$(TOP_MODULE) firmware.hex $(TOP_MODULE).lst

$(TOP_MODULE):$(C_SRCS)
	@echo "Building... $(TOP_MODULE)"
	$(GCC_COMPILER) $(C_OPTS) $(C_DEFS) -o $(TOP_MODULE) $(C_SRCS)

firmware.hex: $(TOP_MODULE)
	@echo "Generate iHEX... from $(TOP_MODULE)"
	$(GCC_OBJCOPY) -O ihex $(TOP_MODULE) firmware.hex

$(TOP_MODULE).lst: $(TOP_MODULE)
	$(GCC_OBJDUMP) -d $(TOP_MODULE) | tee $(TOP_MODULE).lst

copy: firmware.hex
	cp firmware.hex ..

clean:
	rm -f firmware.hex
	rm -f $(TOP_MODULE)
	rm -f $(TOP_MODULE).lst

