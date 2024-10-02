#!/usr/bin/bash
echo "ngSpice-43 Quick Build & Install"
echo "--------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./ngspice-43.tar.gz ]; then
    wget https://sourceforge.net/projects/ngspice/files/ng-spice-rework/43/ngspice-43.tar.gz
fi
tar xvf ngspice-43.tar.gz

cd ngspice-43
./autogen.sh
mkdir debug
cd debug
../configure --with-x --with-readline=yes
make
make test
sudo make install

cd ..
rm -rf debug
