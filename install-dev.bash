#!/bin/bash
# Installs neovim
cd ~/
mkdir ~/Downloads
apt-get update
apt-get install -y wget
wget https://github.com/neovim/neovim/releases/download/v0.3.4/nvim.appimage
mv nvim.appimage ~/Downloads/
chmod u+x ~/Downloads/nvim.appimage
~/Downloads/nvim.appimage --appimage-extract
echo 'export PATH="$PATH:$HOME/squashfs-root/usr/bin"' >> ~/.profile
source $HOME/.profile
ECHO 'Please now manually run: source $HOME/.profile"'
