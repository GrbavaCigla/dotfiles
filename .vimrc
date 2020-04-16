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
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-syntastic/syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
call vundle#end()

colorscheme dracula
filetype plugin indent on

autocmd vimenter * NERDTree
