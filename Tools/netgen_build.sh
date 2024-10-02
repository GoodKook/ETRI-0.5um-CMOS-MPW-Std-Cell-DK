#!/usr/bin/bash
echo "Netgen Quick Build & Install"
echo "--------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./netgen ]; then
    git clone https://github.com/RTimothyEdwards/netgen.git
fi

cd netgen
git pull

./configure
make
sudo make install
make clean
