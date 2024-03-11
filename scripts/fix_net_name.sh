#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: fix_net_name.sh <filename>" >&2
    exit 2
fi

echo "************************************************************************"
echo "* Replace back-slash with underscore on netname"
echo "************************************************************************"

sed -i 's/\\/_/g' $1
