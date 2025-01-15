#!/usr/bin/bash
echo "Z3 Problem Solver"
echo "-----------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./z3 ]; then
    # only once
    git clone https://github.com/Z3Prover/z3.git
fi

cd z3
git pull         # Make sure git repository is up-to-date

source ../SC_env

python3 scripts/mk_make.py
cd build
make
sudo make install
cd ..
rm -rf build

