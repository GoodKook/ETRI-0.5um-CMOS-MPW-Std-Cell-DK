#!/usr/bin/bash
echo "Graywolf Quick Build & Install"
echo "------------------------------"
# Prerequisites:
#source prerequisites.sh

if [ ! -d ./graywolf ]; then
    # only once
    git clone https://github.com/rubund/graywolf.git
fi

# Every time you need to build:
cd graywolf
git pull         # Make sure git repository is up-to-date
#git tag          # See what versions exist

mkdir build
cd build
cmake -DCMAKE_C_COMPILER=/usr/bin/clang \
      -DCMAKE_CXX_COMPILER=/usr/bin/clang++ ..
make
make test
sudo make install

cd ..
rm -rf build

cd ..
