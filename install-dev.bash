#!/bin/bash
# Installs neovim
apt-get update
apt-get install -y python
apy-get install -y python2
apy-get install -y python3
apt install -y python3-pip
cd ~/
python ~/Downloads/pip/get-pip.py
pip2 install --user neovim
pip3 install --user neovim
chmod u+x ~/Downloads/neovim/nvim.appimage
~/Downloads/neovim/nvim.appimage --appimage-extract
echo 'export PATH="$PATH:$HOME/squashfs-root/usr/bin"' >> ~/.profile
source $HOME/.profile
echo 'Please now manually run: source $HOME/.profile'
