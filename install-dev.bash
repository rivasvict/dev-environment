#!/bin/bash
# Installs neovim
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -yq install cmake
TERM=screen-256color
apt-get install -y git
apt-get install -y software-properties-common
add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get install -y python-dev python-pip python3-dev python3-pip
apt-get install -y neovim
cd ~/.vim/bundle/YouCompleteMe && python3 install.py --clang-completer
vim +PluginInstall +qall
