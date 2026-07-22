#!/usr/bin/bash
echo "Yosys Quick Build & Install"
echo "---------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./yosys ]; then
    # only once
    git clone --recurse-submodules https://github.com/YosysHQ/yosys.git
fi

cd yosys
git pull         # Make sure git repository is up-to-date
git submodule update --init --recursive

#unset CXXFLAGS
#export CXX=clang++
#export CXXFLAGS=-std=c++17

# Prerequisites:
sudo apt-get install gawk git make python3 lld bison clang flex \
	libffi-dev libfl-dev libreadline-dev pkg-config tcl-dev zlib1g-dev \
	graphviz xdot curl
curl -LsSf https://astral.sh/uv/install.sh | sh

cmake -B build . -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release --parallel $(nproc)
sudo cmake --install build --strip
cmake --build build --target test --parallel $(nproc)

