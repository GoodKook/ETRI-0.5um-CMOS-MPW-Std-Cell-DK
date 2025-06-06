#!/usr/bin/bash
echo "SystemC Quick Build & Install"
echo "-----------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./systemc ]; then
    # only once
    git clone https://github.com/accellera-official/systemc.git
fi

source SC_env

cd systemc
git pull         # Make sure git repository is up-to-date

if [ -d ./build ]; then
	rm -rf build
fi

mkdir build
cd build

cmake ..
make
make check
sudo make install

