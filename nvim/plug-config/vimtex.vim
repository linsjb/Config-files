let g:tex_flavor="latex"
let g:vimtex_view_method="zathura"
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {
  \ 'build_dir' : 'build',
  \ 'options': [
  	\ '-synctex=1',
	\ '-shell-escape',
	\ '-pdf'
  \   ],
  \ }
