#!/usr/bin/bash
echo "ngSpice-42 Quick Build & Install"
echo "--------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./gsl-latest.tar.gz ]; then
    wget https://mirror.ibcp.fr/pub/gnu/gsl/gsl-latest.tar.gz
fi
tar xvf gsl-latest.tar.gz

cd gsl-2.7.1
./configure
make
sudo make install
make clean
cd ..
