syntax on
set cursorline
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
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'sickill/vim-monokai'
"Plugin 'danilamihailov/vim-tips-wiki'
call vundle#end()

colorscheme monokai
filetype plugin indent on

set completeopt-=preview
set completeopt+=popup
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
