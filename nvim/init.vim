set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'

"C plugins
Plug 'vim-syntastic/syntastic'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'rhysd/vim-clang-format'

" PHP
Plug 'jwalton512/vim-blade'

" JavaScript, TypeScript and React
Plug 'grvcoelho/vim-javascript-snippets'

" Vim plugins
Plug 'lervag/vimtex'

" Vim Wiki
Plug 'vimwiki/vimwiki'

" Themes
Plug 'rakr/vim-one'

" FZF
Plug 'junegunn/fzf', {'do': {->fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" COC
Plug 'neoclide/coc.nvim'
-
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips'
call plug#end()

source $HOME/.config/nvim/general/general.vim

source $HOME/.config/nvim/keys/mappings.vim

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/syntastic.vim
source $HOME/.config/nvim/plug-config/rainbowParentheses.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/ultiSnips.vim
source $HOME/.config/nvim/plug-config/vimwiki.vim

source $HOME/.config/nvim/themes/colorTheme.vim
source $HOME/.config/nvim/themes/airline.vim
