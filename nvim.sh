#!/bin/bash

#SET THIS UP!
NERD_FONT="JetBrainsMono.zip"
VERSION="v3.2.1"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/${VERSION}/${NERD_FONT}
EXTENSION="${NERD_FONT##*.}"
FONTNAME="${NERD_FONT%.*}"
mkdir ${FONTNAME} && pushd ${FONTNAME}
unzip ../${NERD_FONT}
popd
mkdir -p ~/.fonts
mv ${FONTNAME} ~/.fonts/

fc-cache -fv 
fc-list | grep -i FONTNAME

sudo apt install gettext
git clone https://github.com/neovim/neovim && cd neovim
git checkout stable # remove if you want the bleeding cutting edge 
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb # by creating a deb, uninstall gets easier
# Neovim chad!
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
