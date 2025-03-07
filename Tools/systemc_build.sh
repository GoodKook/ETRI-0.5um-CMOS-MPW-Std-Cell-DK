#!/usr/bin/bash
echo "SystemC Quick Build & Install"
echo "-----------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./systemc ]; then
    # only once
    git clone https://github.com/accellera-official/systemc.git
fi

source SC_env

cd systemc
git pull         # Make sure git repository is up-to-date

#autoreconf -i
#autoupdate
./config/bootstrap

if [ -d ./objdir ]; then
	rm -rf objdir
fi

mkdir objdir
cd objdir

export CXX=clang++
../configure --prefix=/usr/local/systemc-3.0.0 \
                'CXXFLAGS=-std=c++17'
#                'CXXFLAGS=-std=c++2a'
#                --enable-pthreads \
#                --enable-debug \
make -j`nproc`
sudo make install

cd ..
rm -rf objdir

