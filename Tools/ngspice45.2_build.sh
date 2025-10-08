#!/usr/bin/bash
echo "ngSpice-45.2 Quick Build & Install"
echo "----------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./ngspice-45.2.tar.gz ]; then
    wget https://sourceforge.net/projects/ngspice/files/ng-spice-rework/45.2/ngspice-45.2.tar.gz
fi
tar xvf ngspice-45.2.tar.gz

cd ngspice-45.2
./autogen.sh
mkdir debug
cd debug
../configure --with-x --with-readline=yes
make
sudo make install

cd ..
rm -rf debug

