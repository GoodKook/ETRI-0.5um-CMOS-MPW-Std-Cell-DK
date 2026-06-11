#!/usr/bin/bash

echo "OpenSTA Build & Install"
echo "-----------------------"

if [ ! -d ./OpenSTA ]; then
    # only once
    mkdir OpenSTA
fi

cd OpenSTA

if [ ! -d ./cudd ]; then
    # only once
    git clone https://github.com/cuddorg/cudd.git
fi

cd cudd
git pull
git checkout 3.0.0
# autoconf: force & initialize
autoreconf -fi
./configure

make
sudo make install
make clean

cd ..

if [ ! -d ./OpenSTA ]; then
    # only once
    git clone https://github.com/parallaxsw/OpenSTA.git
fi

cd OpenSTA
git pull

mkdir build
cd build
cmake ..
make
sudo make install

cd ..
rm -rf build


