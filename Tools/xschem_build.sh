#!/usr/bin/bash
echo "XSchem Quick Build & Install"
echo "----------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./xschem ]; then
    # only once
    git clone https://github.com/StefanSchippers/xschem.git
fi

cd xschem
git pull

./configure
make

sudo make install
make clean

echo "XSchem-GAW Quick Build & Install"
echo "--------------------------------"
if [ ! -d ./xschem ]; then
    # only once
    git clone https://github.com/StefanSchippers/xschem-gaw.git
fi

cd xschem-gaw
git pull

aclocal
autoconf
autoheader
automake --add-missing

./configure
make
sudo make install

# GETTEXT version issue:
#  Change version as follows,
#         GETTEXT_MACRO_VERSION = 0.20
#  in "xschem/xschem-gaw/po/Makefile.in.in" & "xschem/xschem-gaw/configure"
#
