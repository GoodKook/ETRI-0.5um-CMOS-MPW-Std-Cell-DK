#!/usr/bin/bash
echo "ngSpice-42 Quick Build & Install"
echo "--------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./ngspice-42.tar.gz ]; then
    wget https://sourceforge.net/projects/ngspice/files/ng-spice-rework/42/ngspice-42.tar.gz
fi
tar xvf ngspice-42.tar.gz

cd ngspice-42
./autogen.sh
mkdir debug
cd debug
../configure --with-x --with-readline=yes
make
make test
sudo make install

cd ..
rm -rf debug
