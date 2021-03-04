let mapleader = " "
" Vanilla vim remapping
nnoremap <S-Q> <Home>
nnoremap <S-W> <End>

" Go to end of screen line
nnoremap <C-w> g$

" Go to start of screen line
nnoremap <C-q> g0

vnoremap <M-c> "+y

" Go to last open file
map <leader>b <c-^><CR>

" Buffers
nmap <leader>v :Buffers<CR>
nmap <C-j> :bprevious<CR>
nmap <C-k> :bnext<CR>

" Spelling
nmap <leader>us :set spell spelllang=en_gb<CR>

" fzf
nnoremap <S-F> :GFiles<CR>
nmap <C-p> :Files<CR>

" COC
nnoremap <leader>n :CocCommand explorer<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Git (Fugitive)
nmap <leader>gs :G<CR>
nnoremap <leader>gb :GBranches<CR>

" Clang
nnoremap <leader>f :<C-u>ClangFormat<CR>

" Latex
nmap <leader>lc :VimtexCompile<CR>
nmap <leader>lo :VimtexCompileOutput<CR>
nmap <leader>le :VimtexErrors<CR>
