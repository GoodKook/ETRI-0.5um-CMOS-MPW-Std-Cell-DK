#!/usr/bin/bash
echo "SystemC Quick Build & Install"
echo "-----------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./systemc ]; then
    # only once
    git clone https://github.com/accellera-official/systemc.git
fi

source sc_env

cd systemc
git pull         # Make sure git repository is up-to-date

autoreconf -i
autoupdate

if [ -d ./objdir ]; then
	rm -rf objdir
fi

mkdir objdir
cd objdir

export CXX=clang++
../configure --prefix=/usr/local/systemc-3.0.0 \
#                --enable-pthreads \
#                --enable-debug \
                'CXXFLAGS=-std=c++17'
make
sudo make install

rm -rf objdir

