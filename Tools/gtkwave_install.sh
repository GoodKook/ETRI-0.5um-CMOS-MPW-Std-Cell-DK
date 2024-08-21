#!/usr/bin/bash
echo "gtkWave Quick Install"
echo "---------------------------"
# Prerequisites:
#source prerequisities.sh

#sudo apt install gtkwave

#------------------------------------------------

#if [ ! -f gtkwave-gtk3-3.3.120.tar.gz ]; then
#    wget https://sourceforge.net/projects/gtkwave/files/gtkwave-gtk3-3.3.120/gtkwave-gtk3-3.3.120.tar.gz
#fi
#
#tar xvf gtkwave-gtk3-3.3.120.tar.gz
#cd gtkwave-gtk3-3.3.120
#./autogen.sh
#./configure --enable-gtk3
#make
#sudo make install

#------------------------------------------------

if [ ! -f gtkwave-3.3.120.tar.gz ]; then
    wget https://sourceforge.net/projects/gtkwave/files/gtkwave-3.3.120/gtkwave-3.3.120.tar.gz
fi

tar xvf gtkwave-3.3.120.tar.gz
cd gtkwave-3.3.120
./autogen.sh
./configure
make
sudo make install

