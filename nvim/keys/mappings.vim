let mapleader = " "
" Vanilla vim remapping
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <S-Q> <Home>
nnoremap <S-W> <End>

" Go to last open file
map <leader>bb <c-^><CR>

" fzf
nnoremap <S-F> :GFiles<CR>
nmap <C-p> :Files<CR>

" Nerd tree
nnoremap <S-N> :NERDTreeToggle<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Git (Fugitive)
nmap <leader>gs :G<CR>
nnoremap <leader>gb :GBranches<CR>

" Clang
nnoremap <leader>f :<C-u>ClangFormat<CR>
