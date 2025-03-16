#!/bin/bash

sudo apt-get update
# Install debian packages for dependencies
sudo apt-get install -y     build-essential     libseccomp-dev     pkg-config     uidmap     fakeroot     cryptsetup     tzdata     dh-apparmor     curl wget git
sudo apt-get install -y libsubid-dev
git clone https://github.com/apptainer/apptainer.git
cd apptainer

# fix version of apptainer
git checkout v1.3.6 

# Install dependencies
./scripts/download-dependencies 
./scripts/compile-dependencies 
sudo ./scripts/install-dependencies

# Compile and install
./mconfig
cd $(/bin/pwd)/builddir
make
sudo make install
apptainer --version
