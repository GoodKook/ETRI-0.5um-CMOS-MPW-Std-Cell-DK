#!/usr/bin/bash
echo "GDS3D Quick Build & Install"
echo "---------------------------"
# Prerequisites:
#source prerequisites.sh

if [ ! -d ./GDS3D ]; then
    # only once
    git clone https://github.com/trilomix/GDS3D.git
fi

cd GDS3D
git pull

cd linux
make
sudo cp ./GDS3D /usr/bin
make clean
