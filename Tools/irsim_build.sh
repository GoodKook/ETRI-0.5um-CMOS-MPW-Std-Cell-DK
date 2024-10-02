#!/usr/bin/bash
echo "iRSim Quick Build & Install"
echo "------------------------------"
# Prerequisites:
#source prerequisites.sh

if [ ! -d ./irsim ]; then
    # only once
    git clone https://github.com/RTimothyEdwards/irsim
fi

cd irsim
git pull

./configure
make
sudo make install
make clean
