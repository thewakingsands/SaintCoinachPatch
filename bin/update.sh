#!/bin/bash
set -e
set -x
mydir=`pwd`
scdir=`pwd`/../SaintCoinach

cd $scdir
git fetch https://github.com/ufx/SaintCoinach.git
git reset --hard origin/master
cd $mydir
bin/apply.sh
cd $scdir
mv $scdir/README.md $scdir/README_upstream.md
cp $mydir/files/README_SaintCoinach.md $scdir/README.md
git add .
git commit -m "Patched for Chinese server use"
git push -f origin cn
