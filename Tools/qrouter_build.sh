#!/usr/bin/bash
echo "QRouter Quick Build & Install"
echo "-----------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./qrouter ]; then
    # only once
    git clone https://github.com/RTimothyEdwards/qrouter.git
fi

# Every time you need to build:
cd qrouter
git pull         # Make sure git repository is up-to-date

./configure
make
sudo make install
make clean


