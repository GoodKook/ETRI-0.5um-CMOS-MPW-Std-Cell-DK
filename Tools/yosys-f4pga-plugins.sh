#!/usr/bin/bash
echo "Yosys Plugin Quick Build & Install"
echo "----------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./yosys-f4pga-plugins ]; then
    # only once
    git clone https://github.com/chipsalliance/yosys-f4pga-plugins.git
fi

cd yosys-f4pga-plugins
git pull         # Make sure git repository is up-to-date
git submodule update --init

make -j`nproc`
sudo make install
make test_sdc
make clean

