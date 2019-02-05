#!/bin/bash

# Main dependencies
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -yq install cmake
TERM=screen-256color
apt-get install -y git wget software-properties-common unzip
add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get install -y python-dev python-pip python3-dev python3-pip

# Insstalls node and nvm
apt-get install -y nodejs
apt-get install -y npm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Installs neovim
apt-get install -y neovim

# Installs YouCompleteMe for neovim at specific version
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive
cd ~/.vim/bundle/YouCompleteMe && python3 install.py --clang-completer

# Installs IndentLine
git clone https://github.com/Yggdroot/indentLine.git ~/.vim/bundle/indentLine

# Installs all plugins to neovim
vim +PluginInstall +qall

# Installs ale in neovim and eslint (a syntax checker)
npm install -g jscs
mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start
git clone https://github.com/w0rp/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale

# Installs tmux
mkdir ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
apt-get install -y tmux
~/.tmux/plugins/tpm/scripts/install_plugins.sh

# Adds bash extensions
cat ~/Downloads/bash/bashrc-extension >> ~/.basrc
