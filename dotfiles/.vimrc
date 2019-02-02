set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
set encoding=utf-8

set expandtab
set shiftwidth=2
set softtabstop=2
set colorcolumn=120
set hlsearch
" set autoindent
" set tabstop=2
set nu
set autoread
set cursorline
" colorscheme railscasts
" colorscheme darktango
" colorscheme sadasant
" colorscheme 256_noir
" colorscheme vctr
" colorscheme material
" colorscheme wellsokai
" FOR NORMAL ACTIVITY (HIGHT BRIGTHNESS) SUBLIME-LIKE THEME--------
" colorscheme monokai
colorscheme darcula
" ---------------------------------------------------------------------------------------
" colorscheme sky
" colorscheme nets-away
" colorscheme aquamarine
" ###########################################################################################
" FOR SPECIAL CASES (LOW BRIGTHNESS)
" colorscheme laederon
" colorscheme hilal
" colorscheme nighted
" colorscheme zazen
" colorscheme blaquemagick
" colorscheme fahrenheit
" colorscheme Crystallite
" colorscheme firewatch

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
