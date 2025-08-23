#! /bin/bash
#
cp cnoise.h /$HOME/include
#
gcc -c -Wall -I/opt/local/include cnoise.c
if [ $? -ne 0 ]; then
  echo "Compile error."
  exit
fi
#
mv cnoise.o ~/libc/cnoise.o
#
echo "Normal end of execution."
