#!/usr/bin/bash
echo "KLayout Quick Install"
echo "---------------------------"
# Prerequisites:
#source prerequisities.sh


if [ ! -f ./klayout_0.29.11-1_amd64.deb ]; then
    wget https://www.klayout.org/downloads/Ubuntu-22/klayout_0.29.11-1_amd64.deb
fi

sudo dpkg -i klayout_0.29.11-1_amd64.deb
sudo apt-get install -f

