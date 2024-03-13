#!/usr/bin/bash
echo "SDCC Quick Build & Install"
echo "--------------------------"
# Prerequisites:
#source prerequisites.sh

if [ ! -f ./sdcc-src-4.4.0.tar.bz2 ]; then
    # Download SDCC source file
    wget https://sourceforge.net/projects/sdcc/files/sdcc/4.4.0/sdcc-src-4.4.0.tar.bz2
    wget https://sourceforge.net/projects/sdcc/files/sdcc-doc/4.4.0/sdcc-doc-4.4.0.zip
fi

tar xvf sdcc-src-4.4.0.tar.bz2
cd sdcc-4.4.0

#export PATH=/home/goodkook/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin
export PATH=`env | grep PATH | awk -F '/mnt' '{ print $1 }'`
./configure --disable-pic14-port --disable-pic16-port

make
sudo make install

make clean

