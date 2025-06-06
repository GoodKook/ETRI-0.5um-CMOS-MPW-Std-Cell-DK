#!/usr/bin/bash
echo "KiCad Quick Install"
echo "-------------------"

sudo add-apt-repository --yes ppa:kicad/kicad-9.0-releases
sudo apt update
sudo apt install --install-recommends kicad

