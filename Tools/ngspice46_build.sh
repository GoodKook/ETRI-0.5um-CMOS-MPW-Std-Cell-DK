#!/usr/bin/bash
echo "ngSpice-46 Quick Build & Install"
echo "----------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./ngspice-46.tar.gz ]; then
    wget https://sourceforge.net/projects/ngspice/files/ng-spice-rework/46/ngspice-46.tar.gz
fi
tar xvf ngspice-46.tar.gz

cd ngspice-46
./autogen.sh
mkdir debug
cd debug
../configure --with-x --with-readline=yes
make
sudo make install

cd ..
rm -rf debug

