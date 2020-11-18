set nocompatible              " be iMproved, required filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'safv12/andromeda.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', {'do': {->fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim'

call plug#end()

set relativenumber
syntax on
set background=dark
colorscheme  andromeda
set tabstop=1

let mapleader = " "

nnoremap <C-p> :GFiles<CR>
nnoremap gd <Plug>(coc-definition)

set laststatus=2
set statusline^=%{coc#status()}

" Enable true colors
if (has("termguicolors"))
  set termguicolors
endif

set t_Co=256
