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

unset CXXFLAGS

make config-clang
make
make test
sudo make install
make clean

