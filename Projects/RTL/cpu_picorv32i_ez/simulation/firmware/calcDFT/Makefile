# RISC-V GCC -----------------------------------------------------
export GCC_COMPILER =/opt/riscv32i/bin/riscv32-unknown-elf-gcc
export GCC_OBJCOPY  =/opt/riscv32i/bin/riscv32-unknown-elf-objcopy
export GCC_OBJDUMP  =/opt/riscv32i/bin/riscv32-unknown-elf-objdump

TOP_MODULE = calcDFT
C_SRCS = $(TOP_MODULE).c
C_OPTS = -lc -lgcc
C_DEFS = -DRISCV32I

all:
	@clear
	@echo
	@echo "RISC-V 32I Cross-Compiler for \"$(TOP_MODULE)\""
	@echo
	@echo "    make reference"
	@echo "    make build"
	@echo "    make copy"
	@echo "    make clean"
	@echo
	@echo "CC-BY-NC, by GoodKook"
	@echo

reference: $(C_SRCS)
	gcc -o $(TOP_MODULE).ref $(C_SRCS)
	./$(TOP_MODULE).ref

build:$(TOP_MODULE) sin_cos.txt firmware.hex $(TOP_MODULE).lst

sin_cos.txt: sin_cos.c
	gcc -o sin_cos sin_cos.c -lm
	./sin_cos | tee sin_cos.txt
	@echo "SIN-COS Table generated"

$(TOP_MODULE):$(C_SRCS) sin_cos.txt
	@echo "Building... $(TOP_MODULE)"
	$(GCC_COMPILER) $(C_OPTS) $(C_DEFS) -o $(TOP_MODULE) $(C_SRCS)

# 	riscv32-unknown-elf-gcc -S -march=rv32e -mabi=ilp32e test.c -o test.s

firmware.hex: $(TOP_MODULE)
	@echo "Generate iHEX... from $(TOP_MODULE)"
	$(GCC_OBJCOPY) -O ihex $(TOP_MODULE) firmware.hex

$(TOP_MODULE).lst: $(TOP_MODULE)
	$(GCC_OBJDUMP) -x -d $(TOP_MODULE) | tee $(TOP_MODULE).lst

copy: firmware.hex
	cp firmware.hex ..

clean:
	rm -f firmware.hex
	rm -f $(TOP_MODULE)
	rm -f $(TOP_MODULE).lst
	rm -f sin_cos
	rm -f sin_cos.txt
	rm -f $(TOP_MODULE).ref

