#!/bin/bash

# inkscape Repo
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt update && sudo apt upgrade
# Basic tools
sudo apt install terminator fzf gnome-tweaks git-all build-essential inkscape gparted gthumb libfuse2t64 xclip htop nvtop gnupg mixxx vlc cmake cmake-qt-gui gdb thunderbird xournal filezilla -y
# Python management
sudo apt install python3-pip python3-dev python3-venv python3-vcstools
# Customisation
curl -sS https://starship.rs/install.sh | sh
# Brave browser
curl -fsS https://dl.brave.com/install.sh | sh
# RUST
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install lsd
# because we need serial access
sudo usermod -aG dialout ${USER}

# basic shortcuts
git config --global alias.adog "log --all --decorate --oneline --graph"
ln -s "$PWD/my_alias" "$HOME/.bash_aliases"
mkdir "$HOME/.config/firejail/"
mkdir -p $HOME/.local/bin
