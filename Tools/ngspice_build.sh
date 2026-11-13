#!/usr/bin/bash
echo "ngSpice-47 Quick Build & Install"
echo "----------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./ngspice-47.tar.gz ]; then
    wget https://sourceforge.net/projects/ngspice/files/ng-spice-rework/47/ngspice-47.tar.gz
fi
tar xvf ngspice-47.tar.gz

cd ngspice-47
./autogen.sh
mkdir debug
cd debug
../configure --with-x --with-readline=yes
make
sudo make install

cd ..
rm -rf debug

