#!/usr/bin/bash
echo "Yosys Quick Build & Install"
echo "---------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./yosys ]; then
    # only once
    git clone https://github.com/YosysHQ/yosys.git
fi

cd yosys
git pull         # Make sure git repository is up-to-date
git submodule update --init

#unset CXXFLAGS
export CXX=clang++
export CXXFLAGS=-std=c++17

make config-clang
make -j`nproc`
make -j`nproc` test
sudo make install
#make clean

