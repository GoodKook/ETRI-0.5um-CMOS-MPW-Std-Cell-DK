#!/usr/bin/bash
echo "Verilator Quick Build & Install"
echo "-------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./verilator ]; then
    # only once
    git clone https://github.com/verilator/verilator 
fi

#Environment variables for SystemC
source sc_env

unset VERILATOR_ROOT

cd verilator
git pull

autoconf
./configure
make -j `nproc`
sudo make install
make clean
