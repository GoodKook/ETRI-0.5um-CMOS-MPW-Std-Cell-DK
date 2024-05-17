#!/usr/bin/bash
echo "QFlow-ETRI050 Quick Build & Install"
echo "--------------------------------"
# Prerequisites:
#source prerequisities.sh

if [ ! -f ./qflow-1.4.100_etri050.tar.gz ]; then
    echo "qflow-1.4.100_etri050 NOT found!"
    exit
fi
tar xvf qflow-1.4.100_etri050.tar.gz

cd qflow-1.4.100_etri050/
./configure
make
sudo make install
make clean

echo "**********************************************************"
echo "* Symbolic link to ETRI050 DK Dev to QFlow tech/etri050"
echo "**********************************************************"
cd /usr/local/share/qflow/tech
if [ -d ./etri050.bak ]; then
	sudo rm -rf etri050.bak
fi
sudo mv etri050 etri050.bak
sudo mkdir etri050
cd etri050
sudo ln -s ~/ETRI050_DesignKit/tech/SCN3ME_SUBM.30.ETRI.tech SCN3ME_SUBM.30.ETRI.tech
sudo ln -s ~/ETRI050_DesignKit/digital_ETRI/etri050.magicrc etri050.magicrc
sudo ln -s ~/ETRI050_DesignKit/tech/etri050.par etri050.par
sudo ln -s ~/ETRI050_DesignKit/digital_ETRI/etri050.prm etri050.prm
sudo ln -s ~/ETRI050_DesignKit/tech/etri050.sh etri050.sh
sudo ln -s ~/ETRI050_DesignKit/tech/etri050_setup.tcl etri050_setup.tcl
sudo ln -s ~/ETRI050_DesignKit/digital_ETRI/etri050_stdcells.lef etri050_stdcells.lef
sudo ln -s ~/ETRI050_DesignKit/digital_ETRI/etri050_stdcells.sp etri050_stdcells.sp
sudo ln -s ~/ETRI050_DesignKit/digital_ETRI/etri05_stdcells.gds2 etri05_stdcells.gds2
sudo ln -s ~/ETRI050_DesignKit/digital_ETRI/etri05_stdcells.lib etri05_stdcells.lib
sudo ln -s ~/ETRI050_DesignKit/digital_ETRI/etri05_stdcells.v etri05_stdcells.v


