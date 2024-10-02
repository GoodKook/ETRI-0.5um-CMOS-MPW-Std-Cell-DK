#!/usr/bin/bash
echo "RISCV32 I/M Tool-Chain Quick Build & Install"
echo "--------------------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./riscv-gnu-toolchain-rv32i ]; then
    git clone https://github.com/riscv/riscv-gnu-toolchain riscv-gnu-toolchain-rv32i
fi

unset LD_LIBRARY_PATH
unset CXX
unset CXXFLAGS

cd riscv-gnu-toolchain-rv32i
git checkout 411d134
git submodule update --init --recursive

mkdir build
cd build

sudo mkdir /opt/riscv32i
sudo chown $USER /opt/riscv32i
../configure --with-arch=rv32i --prefix=/opt/riscv32i
make -j`nproc`
make clean

sudo mkdir /opt/riscv32im
sudo chown $USER /opt/riscv32im
../configure --with-arch=rv32im --prefix=/opt/riscv32im
make -j`nproc`
make clean

sudo mkdir /opt/riscv32imc
sudo chown $USER /opt/riscv32imc
../configure --with-arch=rv32imc --prefix=/opt/riscv32imc
make -j`nproc`
make clean
