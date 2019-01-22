#!/bin/bash
# Installs neovim
cd ~/
# apt-get update
# apt-get install -y wget
chmod u+x ~/Downloads/neovim/nvim.appimage
~/Downloads/neovim/nvim.appimage --appimage-extract
echo 'export PATH="$PATH:$HOME/squashfs-root/usr/bin"' >> ~/.profile
source $HOME/.profile
echo 'Please now manually run: source $HOME/.profile'
