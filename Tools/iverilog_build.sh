#!/usr/bin/bash
echo "iVerilog Quick Build & Install"
echo "-------------------------------"

# Prerequisites:
#source prerequisites.sh

#Environment variables for SystemC
source sc_env

if [ ! -d ./iverilog ]; then
    # only once
    git clone https://github.com/steveicarus/iverilog.git
fi

# Every time you need to build:
cd iverilog
git pull         # Make sure git repository is up-to-date

sh autoconf.sh
./configure
make
sudo make install
make clean

