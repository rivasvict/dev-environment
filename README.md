# Dev environment setup

This is an initiative to start automating as much as possible the setup of my dev environment.

## Motivation

I use a couple of tools on my every-day development. Some of them are very simple to set up and some of them not. I currently use an Ubuntu server virtual machine to hold my current development setup in a certain stable way. Since then I have not had to repeat any dev setup. This is a great solution but has one little downside. Copying the image of my virtual machine is sometimes not a pleasant task, plus if by any means I loose that virtual machine I would be in much trouble.

## Description

This is basically a script in bash that is going to be able to provision an Ubuntu 18.04 LTS with my dev environment already set up.

## Tools for development included here

1. Neovim
	- Plugins:
		- YouCompleteMe

## How to install it

You will notice. This is using docker. it is not necessary actually to install the environment. Docker is kept for the purpose of testing the changes without having to install new machines again.

1. Copy all contents from `dotfiles` directory to your home folder
2. Copy all contents from `dependencies` directory to `Downloads` folder.
3. Run `install-dev.sh` and please seat back, relax, take a cup of good Colombian coffee (redundant) while the installation finishes :coffee: 

# To-do to add (WIP)

 - [ ] Neovim
	 - [x] YouCompleteme
	 - [ ] NerdTree
	 - [ ] Vim-airline
	 - [ ] Vim-airline-themes
	 - [ ] Ale (linter)
 - [ ] Node
 - [ ] Tmux
