#!/bin/bash
set -e
set -x
mydir=`pwd`
scdir=`pwd`/../SaintCoinach

cd $scdir
git fetch https://github.com/ufx/SaintCoinach.git
git reset --hard FETCH_HEAD
upstreamRev=`git rev-parse --short HEAD`
cd $mydir
bin/apply.sh
cd $scdir
mv $scdir/README.md $scdir/README_upstream.md
cp $mydir/files/README_SaintCoinach.md $scdir/README.md
git add .
git commit -m "Chinese server patch, based on $upstreamRev"
git push -f origin cn
