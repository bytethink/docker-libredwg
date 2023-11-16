#!/bin/sh

cd /opt/
git clone --recurse-submodules https://git.savannah.gnu.org/git/libredwg.git
cd /opt/libredwg/
mkdir /opt/libredwg/build/
cd /opt/libredwg/build/
cmake ..
make
make install
