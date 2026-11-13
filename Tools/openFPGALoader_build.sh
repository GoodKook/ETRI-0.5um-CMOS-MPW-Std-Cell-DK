#!/usr/bin/bash
echo "openFPGALoader Build & Install"
echo "------------------------------"
# Prerequisites:
#source prerequisites.sh
sudo apt install \
  libftdi1-2 \
  libftdi1-dev \
  libhidapi-hidraw0 \
  libhidapi-dev \
  libudev-dev

if [ ! -d ./openFPGALoader ]; then
    # only once
    git clone https://github.com/trabucayre/openFPGALoader.git
fi

# Every time you need to build:
cd openFPGALoader
git pull         # Make sure git repository is up-to-date

mkdir build
cd build
cmake ..
# add -DBUILD_STATIC=ON to build a static version
# add -DENABLE_UDEV=OFF to disable udev support and -d /dev/xxx
# add -DENABLE_CMSISDAP=OFF to disable CMSIS DAP support

make -j`nproc`
sudo make install

cd ..
rm -rf build

cd ..

