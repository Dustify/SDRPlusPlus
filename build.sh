#!/bin/sh

export NUMCPUS=`grep -c '^processor' /proc/cpuinfo` &&
mkdir -p /usr/share/sdrpp &&
mkdir -p build &&
cd build &&
cmake .. &&
make -j$NUMCPUS --load-average=$NUMCPUS