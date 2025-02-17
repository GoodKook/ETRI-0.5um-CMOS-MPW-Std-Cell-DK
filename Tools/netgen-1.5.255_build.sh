#!/usr/bin/bash
echo "Netgen Quick Build & Install"
echo "--------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./netgen-1.5.255.tar.gz ]; then
    echo "netgen-1.5.255 NOT found!"
    exit
fi
tar xvf netgen-1.5.255.tar.gz

cd netgen-1.5.255
./configure
make
sudo make install
make clean
