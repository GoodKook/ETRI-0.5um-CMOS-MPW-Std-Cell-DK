#!/usr/bin/bash
echo "ngSpice-44 Quick Build & Install"
echo "--------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./ngspice-44.tar.gz ]; then
    wget https://sourceforge.net/projects/ngspice/files/ng-spice-rework/44/ngspice-44.tar.gz
fi
tar xvf ngspice-44.tar.gz

cd ngspice-44
./autogen.sh
mkdir debug
cd debug
../configure --with-x --with-readline=yes
make
make test
sudo make install

cd ..
rm -rf debug
