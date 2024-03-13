#!/usr/bin/bash
echo "Magic Quick Build & Install"
# Prerequisites:
#source prerequisities.sh

if [ ! -d ./magic ]; then
    # only once
    git clone https://github.com/RTimothyEdwards/magic.git
fi

# Every time you need to build:
cd magic
git pull         # Make sure git repository is up-to-date

./configure
make
sudo make install
sudo make clean

export MAGIC_TECH=/usr/local/lib/magic/sys/


