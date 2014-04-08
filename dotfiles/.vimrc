
set autoindent
set foldmethod=syntax

"nnoremap <F12> :set noautoindent<CR>

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

au BufRead,BufNewFile *.md set filetype=markdown

" To Use Eclim
set nocompatible
filetype plugin indent on

" To make correct indentation in python
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
