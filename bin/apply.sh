#!/bin/bash
set -e
mydir=`pwd`
scdir=`pwd`/../SaintCoinach

patches=`find $mydir/patches -type f | sort -n`

cd $scdir
for patch in $patches; do
  echo appling `basename $patch` ...
  git apply $patch
done
