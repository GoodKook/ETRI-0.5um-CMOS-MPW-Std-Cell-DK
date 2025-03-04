#!/usr/bin/bash

echo "SDL2 Build & Install"
echo "--------------------"

cd SDL2
tar xvf SDL2-2.30.12.tar.gz
cd SDL2-2.30.12
./configure
make
sudo make install
make clean

# Test build,
# gcc -o testwm2 testwm2.c `pkg-config sdl2 --cflags --libs` -I/usr/local/include/SDL2 -lSDL2_test -lunwind
#
# Goto test directory,
#    ./configure
#    make

