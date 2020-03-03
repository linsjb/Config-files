set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ap/vim-css-color'
Plugin 'mattn/emmet-vim'
Plugin 'kaicataldo/material.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

" VIM std settings
set relativenumber
syntax on
set tabstop=2

" Enable true colors
if (has("termguicolors"))
  set termguicolors
endif

set t_Co=256

" material theme settings

" set color scheme
"set background=dark
colorscheme material

let g:material_theme_style = 'dark'
