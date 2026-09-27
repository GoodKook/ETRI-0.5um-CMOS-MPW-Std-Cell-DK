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

cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --parallel $(nproc)
sudo cmake --install build

cd ..

