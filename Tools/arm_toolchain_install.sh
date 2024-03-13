#!/usr/bin/bash
echo "ARM Toolchain Quick Install"
echo "---------------------------"
# Prerequisites:
#source prerequisities.sh

sudo apt-get remove gcc-arm-none-eabi
sudo apt-get install gcc-arm-none-eabi
