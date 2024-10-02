#!/usr/bin/bash
echo "OpenLane2/eFabless Nix Install"
echo "------------------------------"
# Prerequisites:
#source prerequisities.sh

#-----------------------------------------------------------
# Install Nix
echo "Install Nix .................."
cd ~
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix/pr/1145 | sh -s -- install --no-confirm --extra-conf "
    extra-substituters = https://openlane.cachix.org
    extra-trusted-public-keys = openlane.cachix.org-1:qqdwh+QMNGmZAuyeQJTH9ErW57OWSvdtuwfBKdS254E=
"

#-----------------------------------------------------------
# Uninstalling Nix
# `/nix/nix-installer uninstall`

#-----------------------------------------------------------
# Cloning openlane2
echo "Cloning openlane2 ................"
if [ ! -f ~/openlane2 ]; then
    git clone https://github.com/efabless/openlane2/ ~/openlane2
fi

cd ~/openlane2
cp ~/.bashrc ~/openlane2

#-----------------------------------------------------------
# Check Nix update & open terminal
nix-shell --pure ~/openlane2/shell.nix

#-------------------------------------------------------------
# Volare PDK: SkyWater130
openlane --log-level ERROR --condensed --show-progress-bar --smoke-test

#--------------------------------------------------------------
# Running Example: pm32
cp -r ~/ETRI050_DesignKit/Tools/OpenLane/my_designs ~/openlane2
openlane ~/openlane2/my_designs/pm32/config.json

#--------------------------------------------------------------
# Checking the Result (GDS) in KLayout
openlane --last-run --flow openinklayout ~/openlane2/my_designs/pm32/config.json

#--------------------------------------------------------------
# Checking the Result (GDS) in OpenROAL
openlane --last-run --flow openinopenroad ~/openlane2/my_designs/pm32/config.json

#--------------------------------------------------------------
# Results
ls -la ~/openlane2/my_designs/pm32/runs/RUN*

