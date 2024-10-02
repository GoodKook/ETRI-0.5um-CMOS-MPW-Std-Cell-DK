#!/usr/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Link STD-Cell"
    echo "Usage:"
    echo "  link_lib.sh <directory> <cell name>"
    exit 2
fi

if ! [ -f $1/$2.mag ]; then
  echo "Cell $1/$2.mag NOT exist"
  exit 2
fi

rm -f $2.mag
ln -s $1/$2.mag $2.mag

