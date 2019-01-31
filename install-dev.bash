#!/bin/bash

# Main dependencies
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -yq install cmake
TERM=screen-256color
apt-get install -y git wget software-properties-common unzip
add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get install -y python-dev python-pip python3-dev python3-pip

# Installs neovim
apt-get install -y neovim

# Installs YouCompleteMe for neovim at specific version
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive
cd ~/.vim/bundle/YouCompleteMe && python3 install.py --clang-completer

# Installs all plugins to neovim
vim +PluginInstall +qall
