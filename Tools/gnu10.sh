#!/usr/bin/bash
echo "GNU C++10"
echo "---------"

sudo apt purge
sudo apt autoremove
sudo apt update
sudo apt upgrade

sudo apt install g++-10 gcc-10

sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 40
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 60

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 40
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 60

gcc --version
g++ --version

sudo update-alternatives --config gcc
sudo update-alternatives --config g++

sudo apt --fix-broken install

