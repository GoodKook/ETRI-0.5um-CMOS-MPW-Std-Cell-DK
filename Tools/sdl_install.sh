#!/usr/bin/bash

echo "SDL3 Quick Build & Install"
echo "--------------------------"

#sudo apt-get install libsdl3*
#
#or source build,
# https://wiki.libsdl.org/SDL3/Installation

if [ ! -d ./SDL ]; then
    # only once
    git clone https://github.com/libsdl-org/SDL
fi

cd SDL
git pull

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --config Release --parallel
sudo cmake --install . --config Release
cd ..
rm -rf build

# Test build,
#gcc -o testwm testwm.c `pkg-config sdl3 --cflags --libs` -lSDL3_test -lunwind
# or
#
#gcc -o testwm testwm.c -I/usr/local/lib/pkgconfig/../../include -L/usr/local/lib/pkgconfig/../../lib -Wl,-rpath,/usr/local/lib/pkgconfig/../../lib -Wl,--enable-new-dtags -lSDL3 -lSDL3_test -lunwind
#
