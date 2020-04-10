syntax on
set number
set tabstop=4
set showcmd
set autoindent
set ignorecase
set lazyredraw
set showmatch
set hlsearch
set foldenable
set laststatus=2
set wildmenu
set ruler
set confirm
set belloff=all
set autoread
set magic
set encoding=utf8
set shiftwidth=4

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'dracula/vim', { 'name': 'dracula' }
call vundle#end()

colorscheme dracula
filetype plugin indent on
